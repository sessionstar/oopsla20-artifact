(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module SHP

open SHP_CallbackImpl
open GeneratedSHP
open Payload
open Network

open FStar.Tcp

let ip_addr_R = "127.0.0.1"
let port_R = 4000
let ip_addr_C = "127.0.0.1"
let port_C = 5000

let mk_comms stream_R stream_C : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | R -> send_payload stream_R p
    | C -> send_payload stream_C p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | R -> send_payload stream_R p
    | C -> send_payload stream_C p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | R -> send_payload stream_R p
    | C -> send_payload stream_C p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | R -> recv_payload stream_R
    | C -> recv_payload stream_C) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | R -> recv_payload stream_R
    | C -> recv_payload stream_C) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | R -> recv_payload stream_R
    | C -> recv_payload stream_C) in
    unit_of_payload p);
}

let main () =
    let server_R = connect ip_addr_R port_R in
    let server_C = connect ip_addr_C port_C in
    let comms = mk_comms server_R server_C in
    let () = run callbacks comms in
    close server_R;
    close server_C

