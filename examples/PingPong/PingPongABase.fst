module PingPongABase

open FStar.All
open FStar.Error
open FStar.Tcp
open Network
open Payload
module T = Timer

type role =
    | B

noeq type communications = {
    send_int : role -> int -> ML unit;
    send_string : role -> string -> ML unit;
    send_unit : role -> unit -> ML unit;
    recv_int : role -> unit -> ML int;
    recv_string : role -> unit -> ML string;
    recv_unit : role -> unit -> ML unit;
}

let running (n : int) (comms : communications): ML unit =
    let bye () : ML unit =
        comms.send_string B "Bye" ;
        comms.send_unit B () ;
        let resp = comms.recv_string B () in
        match resp with
        | "Bye" -> comms.recv_unit B ()
        | _ -> unexpected "unexpected label"

    in
    let rec r (n : int) (it : int): ML unit =
        if n = it then bye () else begin
        comms.send_string B "Ping" ;
        comms.send_int B (it + it) ;
        let resp = comms.recv_string B () in
        match resp with
        | "Pong" -> let _it = comms.recv_int B () in r n (it + 1)
        | _ -> unexpected "unexpected label"
        end
    in
    r n 0

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

let main (count:pos) ip_addr port =
    let tot_timer = T.init () in
    let server = connect ip_addr port in
    let run_all () =
      let comms = mk_comms server in
      running count comms
    in
    T.time tot_timer run_all ();
    let tot_time = T.get_str tot_timer in
    FStar.IO.print_string (tot_time ^ "\n");
    close server
