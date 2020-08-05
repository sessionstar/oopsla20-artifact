module Client1

open PingPong1AImpl
open GeneratedPingPong1A
open Payload
open Network
module T = Timer

open FStar.Util
open FStar.Tcp

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

let main (count:pos) ip_addr port  =
    let tot_timer = T.init () in
    let server = connect ip_addr port in
    let run_all () =
      let comms = mk_comms server in
      run (mk_callbacks count) comms
    in
    T.time tot_timer run_all ();
    let tot_time = T.get_str tot_timer in
    FStar.IO.print_string (tot_time ^ "\n");
    close server
