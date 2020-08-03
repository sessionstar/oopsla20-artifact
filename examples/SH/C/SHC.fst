(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module SHC

open SHC_CallbackImpl
open GeneratedSHC
open Payload
open Network

open FStar.Tcp

let ip_addr_C = "127.0.0.1"
let port_P = 5000

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
    let tcp_listener_P = listen ip_addr_C port_P in
    let client_P = accept tcp_listener_P in
    let comms = mk_comms client_P in
    let () = run callbacks comms in
    close client_P;
    stop tcp_listener_P

