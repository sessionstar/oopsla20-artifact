(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module RelayC

open RelayC_CallbackImpl
open GeneratedRelayC
open Payload
open Network

open FStar.Tcp

let ip_addr_C = "127.0.0.1"
let port_A = 5000
let port_B = 6000

let mk_comms stream_A stream_B : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | A -> send_payload stream_A p
    | B -> send_payload stream_B p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | A -> send_payload stream_A p
    | B -> send_payload stream_B p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | A -> send_payload stream_A p
    | B -> send_payload stream_B p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | A -> recv_payload stream_A
    | B -> recv_payload stream_B) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | A -> recv_payload stream_A
    | B -> recv_payload stream_B) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | A -> recv_payload stream_A
    | B -> recv_payload stream_B) in
    unit_of_payload p);
}

let run_once () =
    let tcp_listener_A = listen ip_addr_C port_A in
    let tcp_listener_B = listen ip_addr_C port_B in
    let client_A = accept tcp_listener_A in
    let client_B = accept tcp_listener_B in
    let comms = mk_comms client_A client_B in
    let () = run callbacks comms in
    close client_A;
    close client_B;
    stop tcp_listener_A;
    stop tcp_listener_B

