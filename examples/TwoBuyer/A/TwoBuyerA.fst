(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module TwoBuyerA

open TwoBuyerA_CallbackImpl
open GeneratedTwoBuyerA
open Payload
open Network

open FStar.Tcp

let ip_addr_B = "127.0.0.1"
let port_B = 4000
let ip_addr_S = "127.0.0.1"
let port_S = 5000

let mk_comms stream_B stream_S : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | B -> send_payload stream_B p
    | S -> send_payload stream_S p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | B -> send_payload stream_B p
    | S -> send_payload stream_S p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | B -> send_payload stream_B p
    | S -> send_payload stream_S p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | B -> recv_payload stream_B
    | S -> recv_payload stream_S) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | B -> recv_payload stream_B
    | S -> recv_payload stream_S) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | B -> recv_payload stream_B
    | S -> recv_payload stream_S) in
    unit_of_payload p);
}

let main () =
    let server_B = connect ip_addr_B port_B in
    let server_S = connect ip_addr_S port_S in
    let comms = mk_comms server_B server_S in
    let () = run callbacks comms in
    close server_B;
    close server_S

