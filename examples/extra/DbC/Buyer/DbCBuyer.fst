(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module DbCBuyer

open DbCBuyer_CallbackImpl
open GeneratedDbCBuyer
open Payload
open Network

open FStar.Tcp

let ip_addr_Seller = "127.0.0.1"
let port_Seller = 4000
let ip_addr_Bank = "127.0.0.1"
let port_Bank = 5000

let mk_comms stream_Seller stream_Bank : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | Seller -> send_payload stream_Seller p
    | Bank -> send_payload stream_Bank p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | Seller -> send_payload stream_Seller p
    | Bank -> send_payload stream_Bank p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | Seller -> send_payload stream_Seller p
    | Bank -> send_payload stream_Bank p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | Seller -> recv_payload stream_Seller
    | Bank -> recv_payload stream_Bank) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | Seller -> recv_payload stream_Seller
    | Bank -> recv_payload stream_Bank) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | Seller -> recv_payload stream_Seller
    | Bank -> recv_payload stream_Bank) in
    unit_of_payload p);
}

let main () =
    let server_Seller = connect ip_addr_Seller port_Seller in
    let server_Bank = connect ip_addr_Bank port_Bank in
    let comms = mk_comms server_Seller server_Bank in
    let () = run callbacks comms in
    close server_Seller;
    close server_Bank
