(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module TicketS

open TicketS_CallbackImpl
open GeneratedTicketS
open Payload
open Network

open FStar.Tcp

let ip_addr_S = "127.0.0.1"
let port_C = 4000

let mk_comms stream : connection =
    { send_int = (fun _role p ->
        let p = payload_of_int p in
        send_payload stream p);
      send_string = (fun _role p ->
        let p = payload_of_str p in
        send_payload stream p);
      send_unit = (fun _role p ->
        let p = payload_of_unit p in
        send_payload stream p);
      recv_int = (fun _role _ ->
        let p = recv_payload stream in
        int_of_payload p);
      recv_string = (fun _role _ ->
        let p = recv_payload stream in
        str_of_payload p);
      recv_unit = (fun _role _ ->
        let p = recv_payload stream in
        unit_of_payload p); }

let run_once () =
    let tcp_listener_C = listen ip_addr_S port_C in
    let client_C = accept tcp_listener_C in
    let comms = mk_comms client_C in
    let () = run callbacks comms in
    close client_C;
    stop tcp_listener_C

