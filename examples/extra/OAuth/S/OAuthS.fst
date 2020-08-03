(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module AOAuthS

open AOAuthS_CallbackImpl
open GeneratedAOAuthS
open Payload
open Network

open FStar.Tcp

let ip_addr_S = "127.0.0.1"
let port_U = 4000
let ip_addr_A = "127.0.0.1"
let port_A = 6000

let mk_comms stream_U stream_A : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | U -> send_payload stream_U p
    | A -> send_payload stream_A p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | U -> send_payload stream_U p
    | A -> send_payload stream_A p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | U -> send_payload stream_U p
    | A -> send_payload stream_A p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | U -> recv_payload stream_U
    | A -> recv_payload stream_A) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | U -> recv_payload stream_U
    | A -> recv_payload stream_A) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | U -> recv_payload stream_U
    | A -> recv_payload stream_A) in
    unit_of_payload p);
}

let run_once () =
    let tcp_listener_U = listen ip_addr_S port_U in
    let client_U = accept tcp_listener_U in
    let server_A = connect ip_addr_A port_A in
    let comms = mk_comms client_U server_A in
    let () = run callbacks comms in
    close client_U;
    close server_A;
    stop tcp_listener_U

