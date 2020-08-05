module Server5

open PingPong5BImpl
open GeneratedPingPong5B
open Payload
open Network

open FStar.Tcp
open FStar.All

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
    let callbacks = mk_callbacks 1 in
    let () = run callbacks comms in
    close client;
    stop tcp_listener

let run_forever ip_addr port =
    let tcp_listener = listen ip_addr port in
    let rec aux () : ML unit =
      let client = accept tcp_listener in
      let comms = mk_comms client in
      let callbacks = mk_callbacks 1 in
      let () = run callbacks comms in
      close client;
      aux ()
    in
    aux ()
