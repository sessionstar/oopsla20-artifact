(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module OnlineWalletA

open OnlineWalletA_CallbackImpl
open GeneratedOnlineWalletA
open Payload
open Network

open FStar.Tcp

let ip_addr_A = "127.0.0.1"
let port_C = 4000
let ip_addr_S = "127.0.0.1"
let port_S = 6000

let mk_comms stream_C stream_S : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | C -> send_payload stream_C p
    | S -> send_payload stream_S p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | C -> send_payload stream_C p
    | S -> send_payload stream_S p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | C -> send_payload stream_C p
    | S -> send_payload stream_S p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | C -> recv_payload stream_C
    | S -> recv_payload stream_S) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | C -> recv_payload stream_C
    | S -> recv_payload stream_S) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | C -> recv_payload stream_C
    | S -> recv_payload stream_S) in
    unit_of_payload p);
}

let run_once () =
    let tcp_listener_C = listen ip_addr_A port_C in
    let client_C = accept tcp_listener_C in
    let server_S = connect ip_addr_S port_S in
    let comms = mk_comms client_C server_S in
    let () = run callbacks comms in
    close client_C;
    close server_S;
    stop tcp_listener_C

