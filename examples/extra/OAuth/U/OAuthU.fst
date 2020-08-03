(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module OAuthU

open OAuthU_CallbackImpl
open GeneratedOAuthU
open Payload
open Network

open FStar.Tcp

let ip_addr_S = "127.0.0.1"
let port_S = 4000
let ip_addr_A = "127.0.0.1"
let port_A = 5000

let mk_comms stream_S stream_A : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | S -> send_payload stream_S p
    | A -> send_payload stream_A p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | S -> send_payload stream_S p
    | A -> send_payload stream_A p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | S -> send_payload stream_S p
    | A -> send_payload stream_A p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | S -> recv_payload stream_S
    | A -> recv_payload stream_A) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | S -> recv_payload stream_S
    | A -> recv_payload stream_A) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | S -> recv_payload stream_S
    | A -> recv_payload stream_A) in
    unit_of_payload p);
}

let main () =
    let server_S = connect ip_addr_S port_S in
    let server_A = connect ip_addr_A port_A in
    let comms = mk_comms server_S server_A in
    let () = run callbacks comms in  (*CHECKME: pass args to callbacks*)
    close server_S;
    close server_A
