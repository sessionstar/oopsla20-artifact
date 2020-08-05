module GeneratedPingPong1A
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| B
type state6 = unit
and state7 = unit
and state8 = {
_dumstate8 : unit;
x0 : int;
}
and state9 = unit
type state6Choice (st: state6) =
| Choice6Bye of unit
| Choice6Ping of int
noeq type callbacksA = {
state6Onsend : (st: state6) -> ML (state6Choice st);
state8OnreceivePong : (st: state8) -> (y0: int{((y0) > (Mkstate8?.x0 st))}) -> ML (unit);
state9OnreceiveBye : (st: state9) -> ML (unit);
}
noeq type communications = {
    send_int : role -> int -> ML unit;
    send_string : role -> string -> ML unit;
    send_unit : role -> unit -> ML unit;
    recv_int : role -> unit -> ML int;
    recv_string : role -> unit -> ML string;
    recv_unit : role -> unit -> ML unit;
}
let run (callbacks : callbacksA) (comms : communications) : ML unit =
let rec runState6 (st: state6) : ML unit =
let label = callbacks.state6Onsend st in
match label with
| Choice6Bye _dummy ->
comms.send_string B "Bye";
comms.send_unit B _dummy;
let st : state9 = ()
in
runState9 st
| Choice6Ping x0 ->
comms.send_string B "Ping";
comms.send_int B x0;
let st : state8 = {
_dumstate8 = ();
x0 = x0;
}
in
runState8 st
and runState7 (st: state7) : ML unit =
()
and runState8 (st: state8) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y0 = comms.recv_int B () in
assume (((y0) > (Mkstate8?.x0 st)));
callbacks.state8OnreceivePong st y0;
let st : state6 = ()
in
runState6 st
| _ -> unexpected "unexpected label"
and runState9 (st: state9) : ML unit =
let label = comms.recv_string B () in
match label with
| "Bye" ->
let _dummy = comms.recv_unit B () in
callbacks.state9OnreceiveBye st ;
let st : state7 = ()
in
runState7 st
| _ -> unexpected "unexpected label"
in
let initState : state6 =
()
in
runState6 initState
