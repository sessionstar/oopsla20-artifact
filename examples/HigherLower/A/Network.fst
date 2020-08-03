module Network

open Payload
open FStar.All
open FStar.Tcp
open FStar.Error
module B = FStar.Bytes

exception CommError

let send_payload (stream: networkStream) (p: payload) : ML unit =
    let p_bytes = bytes_of_payload p in
    let len = B.length p_bytes in
    let len_bytes = B.bytes_of_int 32 len in
    let result_len = send stream len_bytes in
    match result_len with
    | Correct () ->
        begin match send stream p_bytes with
        | Correct () -> ()
        | Error _ -> raise CommError
        end
    | Error _ -> raise CommError

let recv_payload (stream: networkStream) : ML payload =
    let result_len = recv stream 32 in
    match result_len with
    | Correct len_b ->
        begin
            let len = B.int_of_bytes len_b in
            let result_payload_b = recv stream len in
            match result_payload_b with
            | Correct payload_b -> payload_of_bytes payload_b
            | Error _ -> raise CommError
        end
    | Error _ -> raise CommError