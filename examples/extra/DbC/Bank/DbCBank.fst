(*
$ rm .depend; make
$ make main.ocaml.exe
*)


module DbCBank

open DbCBank_CallbackImpl
open GeneratedDbCBank
open Payload
open Network

open FStar.Tcp

let ip_addr_Bank = "127.0.0.1"
let port_Buyer = 5000
let port_Seller = 6000

let mk_comms stream_Buyer stream_Seller : connection = {
  send_int = (fun role p ->
    let p = payload_of_int p in
    match role with
    | Buyer -> send_payload stream_Buyer p
    | Seller -> send_payload stream_Seller p);
  send_string = (fun role p ->
    let p = payload_of_str p in
    match role with
    | Buyer -> send_payload stream_Buyer p
    | Seller -> send_payload stream_Seller p);
  send_unit = (fun role p ->
    let p = payload_of_unit p in
    match role with 
    | Buyer -> send_payload stream_Buyer p
    | Seller -> send_payload stream_Seller p);
  recv_int = (fun role _ ->
    let p = (match role with 
    | Buyer -> recv_payload stream_Buyer
    | Seller -> recv_payload stream_Seller) in
    int_of_payload p);
  recv_string = (fun role _ ->
    let p = (match role with
    | Buyer -> recv_payload stream_Buyer
    | Seller -> recv_payload stream_Seller) in
    str_of_payload p);
  recv_unit = (fun role _ ->
    let p = (match role with
    | Buyer -> recv_payload stream_Buyer
    | Seller -> recv_payload stream_Seller) in
    unit_of_payload p);
}

let run_once () =
    let tcp_listener_Buyer = listen ip_addr_Bank port_Buyer in
    let tcp_listener_Seller = listen ip_addr_Bank port_Seller in
    let client_Buyer = accept tcp_listener_Buyer in
    let client_Seller = accept tcp_listener_Seller in
    let comms = mk_comms client_Buyer client_Seller in
    let () = run callbacks comms in
    close client_Buyer;
    close client_Seller;
    stop tcp_listener_Buyer;
    stop tcp_listener_Seller

