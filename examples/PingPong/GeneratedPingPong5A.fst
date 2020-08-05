module GeneratedPingPong5A
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| B
type state14 = unit
and state15 = unit
and state16 = {
_dumstate16 : unit;
x0 : int;
}
and state17 = {
_dumstate17 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
}
and state18 = {
_dumstate18 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
}
and state19 = {
_dumstate19 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
}
and state20 = {
_dumstate20 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
}
and state21 = {
_dumstate21 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
}
and state22 = {
_dumstate22 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
}
and state23 = {
_dumstate23 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
}
and state24 = {
_dumstate24 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
}
and state25 = unit
type state14Choice (st: state14) =
| Choice14Bye of unit
| Choice14Ping of int
noeq type callbacksA = {
state14Onsend : (st: state14) -> ML (state14Choice st);
state16OnreceivePong : (st: state16) -> (y0: int{((y0) > (Mkstate16?.x0 st))}) -> ML (unit);
state17OnsendPing : (st: state17) -> ML (x1:int{((x1) > (Mkstate17?.y0 st))});
state18OnreceivePong : (st: state18) -> (y1: int{((y1) > (Mkstate18?.x1 st))}) -> ML (unit);
state19OnsendPing : (st: state19) -> ML (x2:int{((x2) > (Mkstate19?.y1 st))});
state20OnreceivePong : (st: state20) -> (y2: int{((y2) > (Mkstate20?.x2 st))}) -> ML (unit);
state21OnsendPing : (st: state21) -> ML (x3:int{((x3) > (Mkstate21?.y2 st))});
state22OnreceivePong : (st: state22) -> (y3: int{((y3) > (Mkstate22?.x3 st))}) -> ML (unit);
state23OnsendPing : (st: state23) -> ML (x4:int{((x4) > (Mkstate23?.y3 st))});
state24OnreceivePong : (st: state24) -> (y4: int{((y4) > (Mkstate24?.x4 st))}) -> ML (unit);
state25OnreceiveBye : (st: state25) -> ML (unit);
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
let rec runState14 (st: state14) : ML unit =
let label = callbacks.state14Onsend st in
match label with
| Choice14Bye _dummy ->
comms.send_string B "Bye";
comms.send_unit B _dummy;
let st : state25 = ()
in
runState25 st
| Choice14Ping x0 ->
comms.send_string B "Ping";
comms.send_int B x0;
let st : state16 = {
_dumstate16 = ();
x0 = x0;
}
in
runState16 st
and runState15 (st: state15) : ML unit =
()
and runState16 (st: state16) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y0 = comms.recv_int B () in
assume (((y0) > (Mkstate16?.x0 st)));
callbacks.state16OnreceivePong st y0;
let st : state17 = {
_dumstate17 = ();
x0 = (Mkstate16?.x0 st);
y0 = y0;
}
in
runState17 st
| _ -> unexpected "unexpected label"
and runState17 (st: state17) : ML unit =
comms.send_string B "Ping";
let x1 = callbacks.state17OnsendPing st in
comms.send_int B x1;
let st : state18 = {
_dumstate18 = ();
x0 = (Mkstate17?.x0 st);
y0 = (Mkstate17?.y0 st);
x1 = x1;
}
in
runState18 st
and runState18 (st: state18) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y1 = comms.recv_int B () in
assume (((y1) > (Mkstate18?.x1 st)));
callbacks.state18OnreceivePong st y1;
let st : state19 = {
_dumstate19 = ();
x0 = (Mkstate18?.x0 st);
y0 = (Mkstate18?.y0 st);
x1 = (Mkstate18?.x1 st);
y1 = y1;
}
in
runState19 st
| _ -> unexpected "unexpected label"
and runState19 (st: state19) : ML unit =
comms.send_string B "Ping";
let x2 = callbacks.state19OnsendPing st in
comms.send_int B x2;
let st : state20 = {
_dumstate20 = ();
x0 = (Mkstate19?.x0 st);
y0 = (Mkstate19?.y0 st);
x1 = (Mkstate19?.x1 st);
y1 = (Mkstate19?.y1 st);
x2 = x2;
}
in
runState20 st
and runState20 (st: state20) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y2 = comms.recv_int B () in
assume (((y2) > (Mkstate20?.x2 st)));
callbacks.state20OnreceivePong st y2;
let st : state21 = {
_dumstate21 = ();
x0 = (Mkstate20?.x0 st);
y0 = (Mkstate20?.y0 st);
x1 = (Mkstate20?.x1 st);
y1 = (Mkstate20?.y1 st);
x2 = (Mkstate20?.x2 st);
y2 = y2;
}
in
runState21 st
| _ -> unexpected "unexpected label"
and runState21 (st: state21) : ML unit =
comms.send_string B "Ping";
let x3 = callbacks.state21OnsendPing st in
comms.send_int B x3;
let st : state22 = {
_dumstate22 = ();
x0 = (Mkstate21?.x0 st);
y0 = (Mkstate21?.y0 st);
x1 = (Mkstate21?.x1 st);
y1 = (Mkstate21?.y1 st);
x2 = (Mkstate21?.x2 st);
y2 = (Mkstate21?.y2 st);
x3 = x3;
}
in
runState22 st
and runState22 (st: state22) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y3 = comms.recv_int B () in
assume (((y3) > (Mkstate22?.x3 st)));
callbacks.state22OnreceivePong st y3;
let st : state23 = {
_dumstate23 = ();
x0 = (Mkstate22?.x0 st);
y0 = (Mkstate22?.y0 st);
x1 = (Mkstate22?.x1 st);
y1 = (Mkstate22?.y1 st);
x2 = (Mkstate22?.x2 st);
y2 = (Mkstate22?.y2 st);
x3 = (Mkstate22?.x3 st);
y3 = y3;
}
in
runState23 st
| _ -> unexpected "unexpected label"
and runState23 (st: state23) : ML unit =
comms.send_string B "Ping";
let x4 = callbacks.state23OnsendPing st in
comms.send_int B x4;
let st : state24 = {
_dumstate24 = ();
x0 = (Mkstate23?.x0 st);
y0 = (Mkstate23?.y0 st);
x1 = (Mkstate23?.x1 st);
y1 = (Mkstate23?.y1 st);
x2 = (Mkstate23?.x2 st);
y2 = (Mkstate23?.y2 st);
x3 = (Mkstate23?.x3 st);
y3 = (Mkstate23?.y3 st);
x4 = x4;
}
in
runState24 st
and runState24 (st: state24) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y4 = comms.recv_int B () in
assume (((y4) > (Mkstate24?.x4 st)));
callbacks.state24OnreceivePong st y4;
let st : state14 = ()
in
runState14 st
| _ -> unexpected "unexpected label"
and runState25 (st: state25) : ML unit =
let label = comms.recv_string B () in
match label with
| "Bye" ->
let _dummy = comms.recv_unit B () in
callbacks.state25OnreceiveBye st ;
let st : state15 = ()
in
runState15 st
| _ -> unexpected "unexpected label"
in
let initState : state14 =
()
in
runState14 initState
