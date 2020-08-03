(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module RelayA

open RelayA_CallbackImpl
open GeneratedRelayA
open Payload
open Network

open FStar.Tcp

let ip_addr_B = "127.0.0.1"
let port_B = 4000
let ip_addr_C = "127.0.0.1"
let port_C = 5000

let mk_comms stream_B stream_C : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | B -> send_payload stream_B p
    | C -> send_payload stream_C p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | B -> send_payload stream_B p
    | C -> send_payload stream_C p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | B -> send_payload stream_B p
    | C -> send_payload stream_C p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | B -> recv_payload stream_B
    | C -> recv_payload stream_C) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | B -> recv_payload stream_B
    | C -> recv_payload stream_C) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | B -> recv_payload stream_B
    | C -> recv_payload stream_C) in
    unit_of_payload p);
}

let main () =
    let server_B = connect ip_addr_B port_B in
    let server_C = connect ip_addr_C port_C in
    let comms = mk_comms server_B server_C in
    let () = run callbacks comms in
    close server_B;
    close server_C

