(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module HigherLowerC

open HigherLowerC_CallbackImpl
open GeneratedHigherLowerC
open Payload
open Network

open FStar.Tcp

let ip_addr_C = "127.0.0.1"
let port_B = 6000

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
    let tcp_listener_B = listen ip_addr_C port_B in
    let client_B = accept tcp_listener_B in
    let comms = mk_comms client_B in
    let () = run callbacks comms in
    close client_B;
    stop tcp_listener_B


