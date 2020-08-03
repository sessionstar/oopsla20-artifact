(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module TicketC

open TicketC_CallbackImpl
open GeneratedTicketC
open Payload
open Network

open FStar.Tcp

let ip_addr_S = "127.0.0.1"
let port_S = 4000

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

let main () =
    let server_S = connect ip_addr_S port_S in
    let comms = mk_comms server_S in
    let () = run callbacks comms in
    close server_S
