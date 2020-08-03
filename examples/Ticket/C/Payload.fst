module Payload

module B = FStar.Bytes
open FStar.Error
open FStar.All
open FStar.Exn
module U32 = FStar.UInt32

type payload =
    | Str of string
    | Int of int
    | Unit of unit

exception PayloadTooBig
exception InvalidPayload
exception PayloadMismatch

let bytes_of_payload (payload:payload) : Ex B.bytes =
    let header : B.bytes =
        let discriminator = match payload with
            | Str _ -> 0uy
            | Int _ -> 1uy
            | Unit _ -> 2uy
        in
        B.create 1ul discriminator
    in
    let tail =
        match payload with
        | Str s ->
            if FStar.String.length s < 256
            then B.utf8_encode s
            else raise PayloadTooBig
        | Int i ->
            let is_neg = i < 0 in
            let i = abs i in
            let uint_bytes =
                if i < pow2 32
                then B.bytes_of_int 8 i
                else raise PayloadTooBig
            in
            let sign = if is_neg then 1uy else 0uy in
            let h = B.create 1ul sign in
            B.append h uint_bytes
        | Unit u -> B.empty_bytes
    in
    B.append header tail

let payload_of_bytes (b:B.bytes) : Ex payload =
    let length = B.len b in
    if U32.(length <^ 1ul) then raise InvalidPayload else ();
    let discriminator = B.get b 0ul in
    match discriminator with
    | 0uy -> (* Str *)
        let str_b = B.slice b 1ul (B.len b) in
        let str_s = B.iutf8_opt str_b in
        begin match str_s with
        | Some str_s -> Str str_s
        | None -> raise InvalidPayload
        end
    | 1uy -> (* Int *)
        if U32.(length <^ 2ul) then raise InvalidPayload;
        let sign = B.get b 1ul in
        let is_neg = match sign with
            | 1uy -> true
            | 0uy -> false
            | _ -> raise InvalidPayload
        in
        let uint_b = B.slice b 2ul (B.len b) in
        let uint_i = B.int_of_bytes uint_b in
        Int (if is_neg then -uint_i else uint_i)
    | 2uy -> (* Unit *)
        if U32.(length =^ 1ul) then Unit () else raise InvalidPayload
    | _ -> raise InvalidPayload

let payload_of_int (i:int) : payload = Int i
let payload_of_str (s:string) : payload = Str s
let payload_of_unit (u:unit) : payload = Unit u
let int_of_payload (p:payload) : Ex int =
    match p with
    | Int i -> i
    | _ -> raise PayloadMismatch
let str_of_payload (p:payload) : Ex string =
    match p with
    | Str s -> s
    | _ -> raise PayloadMismatch
let unit_of_payload (p:payload) : Ex unit =
    match p with
    | Unit u -> u
    | _ -> raise PayloadMismatch
