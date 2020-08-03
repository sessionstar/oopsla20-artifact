(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module TravelAgencyS

open TravelAgencyS_CallbackImpl
open GeneratedBookingS
open Payload
open Network

open FStar.Tcp

let ip_addr_S = "127.0.0.1"
let port_C = 5000
let port_A = 6000

let mk_comms stream_C stream_A : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | C -> send_payload stream_C p
    | A -> send_payload stream_A p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | C -> send_payload stream_C p
    | A -> send_payload stream_A p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | C -> send_payload stream_C p
    | A -> send_payload stream_A p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | C -> recv_payload stream_C
    | A -> recv_payload stream_A) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | C -> recv_payload stream_C
    | A -> recv_payload stream_A) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | C -> recv_payload stream_C
    | A -> recv_payload stream_A) in
    unit_of_payload p);
}

let run_once () =
    let tcp_listener_C = listen ip_addr_S port_C in
    let tcp_listener_A = listen ip_addr_S port_A in
    let client_C = accept tcp_listener_C in
    let client_A = accept tcp_listener_A in
    let comms = mk_comms client_C client_A in
    let () = run callbacks comms in
    close client_C;
    close client_A;
    stop tcp_listener_C;
    stop tcp_listener_A

