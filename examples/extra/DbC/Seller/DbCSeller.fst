(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module DbCSeller

open DbCSeller_CallbackImpl
open GeneratedDbCSeller
open Payload
open Network

open FStar.Tcp

let ip_addr_Seller = "127.0.0.1"
let port_Buyer = 4000
let ip_addr_Bank = "127.0.0.1"
let port_Bank = 6000

let mk_comms stream_Buyer stream_Bank : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | Buyer -> send_payload stream_Buyer p
    | Bank -> send_payload stream_Bank p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | Buyer -> send_payload stream_Buyer p
    | Bank -> send_payload stream_Bank p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | Buyer -> send_payload stream_Buyer p
    | Bank -> send_payload stream_Bank p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | Buyer -> recv_payload stream_Buyer
    | Bank -> recv_payload stream_Bank) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | Buyer -> recv_payload stream_Buyer
    | Bank -> recv_payload stream_Bank) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | Buyer -> recv_payload stream_Buyer
    | Bank -> recv_payload stream_Bank) in
    unit_of_payload p);
}

let run_once () =
    let tcp_listener_Buyer = listen ip_addr_Seller port_Buyer in
    let client_Buyer = accept tcp_listener_Buyer in
    let server_Bank = connect ip_addr_Bank port_Bank in
    let comms = mk_comms client_Buyer server_Bank in
    let () = run callbacks comms in
    close client_Buyer;
    close server_Bank;
    stop tcp_listener_Buyer

