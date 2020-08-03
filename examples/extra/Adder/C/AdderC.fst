(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module AdderC

open AdderC_CallbackImpl
open GeneratedAdderC
open Payload
open Network

open FStar.Tcp

let ip_addr_B = "127.0.0.1"
let port_B = 4000

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
    let server_B = connect ip_addr_B port_B in
    let comms = mk_comms server_B in
    let () = run callbacks comms in
    close server_B
