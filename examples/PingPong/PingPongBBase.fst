module PingPongBBase

open FStar.All
open FStar.Error
open FStar.Tcp
open Payload
open Network

type role =
    | A

noeq type communications = {
    send_int : role -> int -> ML unit;
    send_string : role -> string -> ML unit;
    send_unit : role -> unit -> ML unit;
    recv_int : role -> unit -> ML int;
    recv_string : role -> unit -> ML string;
    recv_unit : role -> unit -> ML unit;
}

let running (comms : communications): ML unit =
    let rec r () : ML unit =
        let resp = comms.recv_string A () in
        match resp with
        | "Ping" ->
            let n = comms.recv_int A () in
            comms.send_string A "Pong" ;
            comms.send_int A (n+1);
            r ()
        | "Bye" ->
            comms.recv_unit A () ;
            comms.send_string A "Bye";
            comms.send_unit A ()
        | _ -> unexpected "unexpected label"
    in
    r ()

let mk_comms stream : communications =
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

let run_once ip_addr port =
    let tcp_listener = listen ip_addr port in
    let client = accept tcp_listener in
    let comms = mk_comms client in
    let () = running comms in
    close client;
    stop tcp_listener

let run_forever ip_addr port =
    let tcp_listener = listen ip_addr port in
    let rec aux () : ML unit =
      let client = accept tcp_listener in
      let comms = mk_comms client in
      let () = running comms in
      close client;
      aux ()
    in
    aux ()
