module GeneratedPingPong1B
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| A
type state17 = unit
and state18 = unit
and state19 = {
_dumstate19 : unit;
x0 : int;
}
and state20 = unit
noeq type callbacksB = {
state17OnreceiveBye : (st: state17) -> ML (unit);
state17OnreceivePing : (st: state17) -> (x0: int) -> ML (unit);
state19OnsendPong : (st: state19) -> ML (y0:int{((y0) > (Mkstate19?.x0 st))});
state20OnsendBye : (st: state20) -> ML (unit);
}
noeq type communications = {
    send_int : role -> int -> ML unit;
    send_string : role -> string -> ML unit;
    send_unit : role -> unit -> ML unit;
    recv_int : role -> unit -> ML int;
    recv_string : role -> unit -> ML string;
    recv_unit : role -> unit -> ML unit;
}
let run (callbacks : callbacksB) (comms : communications) : ML unit =
let rec runState17 (st: state17) : ML unit =
let label = comms.recv_string A () in
match label with
| "Bye" ->
let _dummy = comms.recv_unit A () in
callbacks.state17OnreceiveBye st ;
let st : state20 = ()
in
runState20 st
| "Ping" ->
let x0 = comms.recv_int A () in
callbacks.state17OnreceivePing st x0;
let st : state19 = {
_dumstate19 = ();
x0 = x0;
}
in
runState19 st
| _ -> unexpected "unexpected label"
and runState18 (st: state18) : ML unit =
()
and runState19 (st: state19) : ML unit =
comms.send_string A "Pong";
let y0 = callbacks.state19OnsendPong st in
comms.send_int A y0;
let st : state17 = ()
in
runState17 st
and runState20 (st: state20) : ML unit =
comms.send_string A "Bye";
let _dummy = callbacks.state20OnsendBye st in
comms.send_unit A _dummy;
let st : state18 = ()
in
runState18 st
in
let initState : state17 =
()
in
runState17 initState
