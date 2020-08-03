(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module CountB

open CountB_CallbackImpl
open GeneratedCountB
open Payload
open Network

open FStar.Tcp

let ip_addr_B = "127.0.0.1"
let port_A = 4000

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
    let tcp_listener_A = listen ip_addr_B port_A in
    let client_A = accept tcp_listener_A in
    let comms = mk_comms client_A in
    let () = run callbacks comms in
    close client_A;
    stop tcp_listener_A

