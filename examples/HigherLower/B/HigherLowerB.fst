(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module HigherLowerB

open HigherLowerB_CallbackImpl
open GeneratedHigherLowerB
open Payload
open Network

open FStar.Tcp

let ip_addr_B = "127.0.0.1"
let port_A = 4000
let ip_addr_C = "127.0.0.1"
let port_C = 6000

let mk_comms stream_A stream_C : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | A -> send_payload stream_A p
    | C -> send_payload stream_C p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | A -> send_payload stream_A p
    | C -> send_payload stream_C p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | A -> send_payload stream_A p
    | C -> send_payload stream_C p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | A -> recv_payload stream_A
    | C -> recv_payload stream_C) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | A -> recv_payload stream_A
    | C -> recv_payload stream_C) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | A -> recv_payload stream_A
    | C -> recv_payload stream_C) in
    unit_of_payload p);
}

let run_once () =
    let tcp_listener_A = listen ip_addr_B port_A in
    let client_A = accept tcp_listener_A in
    let server_C = connect ip_addr_C port_C in
    let comms = mk_comms client_A server_C in
    let () = run callbacks comms in
    close client_A;
    close server_C;
    stop tcp_listener_A

