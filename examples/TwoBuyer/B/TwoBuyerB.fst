(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module TwoBuyerB

open TwoBuyerB_CallbackImpl
open GeneratedTwoBuyerB
open Payload
open Network

open FStar.Tcp

let ip_addr_B = "127.0.0.1"
let port_A = 4000
let ip_addr_S = "127.0.0.1"
let port_S = 6000

let mk_comms stream_A stream_S : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | A -> send_payload stream_A p
    | S -> send_payload stream_S p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | A -> send_payload stream_A p
    | S -> send_payload stream_S p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | A -> send_payload stream_A p
    | S -> send_payload stream_S p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | A -> recv_payload stream_A
    | S -> recv_payload stream_S) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | A -> recv_payload stream_A
    | S -> recv_payload stream_S) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | A -> recv_payload stream_A
    | S -> recv_payload stream_S) in
    unit_of_payload p);
}

let run_once () =
    let tcp_listener_A = listen ip_addr_B port_A in
    let client_A = accept tcp_listener_A in
    let server_S = connect ip_addr_S port_S in
    let comms = mk_comms client_A server_S in
    let () = run callbacks comms in
    close client_A;
    close server_S;
    stop tcp_listener_A

