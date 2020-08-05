module GeneratedPingPong10A
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| B
type state24 = unit
and state25 = unit
and state26 = {
_dumstate26 : unit;
x0 : int;
}
and state27 = {
_dumstate27 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
}
and state28 = {
_dumstate28 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
}
and state29 = {
_dumstate29 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
}
and state30 = {
_dumstate30 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
}
and state31 = {
_dumstate31 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
}
and state32 = {
_dumstate32 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
}
and state33 = {
_dumstate33 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
}
and state34 = {
_dumstate34 : unit;
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
and state35 = {
_dumstate35 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
}
and state36 = {
_dumstate36 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
}
and state37 = {
_dumstate37 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
}
and state38 = {
_dumstate38 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
}
and state39 = {
_dumstate39 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
}
and state40 = {
_dumstate40 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
}
and state41 = {
_dumstate41 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
}
and state42 = {
_dumstate42 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
}
and state43 = {
_dumstate43 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
}
and state44 = {
_dumstate44 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
}
and state45 = unit
type state24Choice (st: state24) =
| Choice24Bye of unit
| Choice24Ping of int
noeq type callbacksA = {
state24Onsend : (st: state24) -> ML (state24Choice st);
state26OnreceivePong : (st: state26) -> (y0: int{((y0) > (Mkstate26?.x0 st))}) -> ML (unit);
state27OnsendPing : (st: state27) -> ML (x1:int{((x1) > (Mkstate27?.y0 st))});
state28OnreceivePong : (st: state28) -> (y1: int{((y1) > (Mkstate28?.x1 st))}) -> ML (unit);
state29OnsendPing : (st: state29) -> ML (x2:int{((x2) > (Mkstate29?.y1 st))});
state30OnreceivePong : (st: state30) -> (y2: int{((y2) > (Mkstate30?.x2 st))}) -> ML (unit);
state31OnsendPing : (st: state31) -> ML (x3:int{((x3) > (Mkstate31?.y2 st))});
state32OnreceivePong : (st: state32) -> (y3: int{((y3) > (Mkstate32?.x3 st))}) -> ML (unit);
state33OnsendPing : (st: state33) -> ML (x4:int{((x4) > (Mkstate33?.y3 st))});
state34OnreceivePong : (st: state34) -> (y4: int{((y4) > (Mkstate34?.x4 st))}) -> ML (unit);
state35OnsendPing : (st: state35) -> ML (x5:int{((x5) > (Mkstate35?.y4 st))});
state36OnreceivePong : (st: state36) -> (y5: int{((y5) > (Mkstate36?.x5 st))}) -> ML (unit);
state37OnsendPing : (st: state37) -> ML (x6:int{((x6) > (Mkstate37?.y5 st))});
state38OnreceivePong : (st: state38) -> (y6: int{((y6) > (Mkstate38?.x6 st))}) -> ML (unit);
state39OnsendPing : (st: state39) -> ML (x7:int{((x7) > (Mkstate39?.y6 st))});
state40OnreceivePong : (st: state40) -> (y7: int{((y7) > (Mkstate40?.x7 st))}) -> ML (unit);
state41OnsendPing : (st: state41) -> ML (x8:int{((x8) > (Mkstate41?.y7 st))});
state42OnreceivePong : (st: state42) -> (y8: int{((y8) > (Mkstate42?.x8 st))}) -> ML (unit);
state43OnsendPing : (st: state43) -> ML (x9:int{((x9) > (Mkstate43?.y8 st))});
state44OnreceivePong : (st: state44) -> (y9: int{((y9) > (Mkstate44?.x9 st))}) -> ML (unit);
state45OnreceiveBye : (st: state45) -> ML (unit);
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
let rec runState24 (st: state24) : ML unit =
let label = callbacks.state24Onsend st in
match label with
| Choice24Bye _dummy ->
comms.send_string B "Bye";
comms.send_unit B _dummy;
let st : state45 = ()
in
runState45 st
| Choice24Ping x0 ->
comms.send_string B "Ping";
comms.send_int B x0;
let st : state26 = {
_dumstate26 = ();
x0 = x0;
}
in
runState26 st
and runState25 (st: state25) : ML unit =
()
and runState26 (st: state26) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y0 = comms.recv_int B () in
assume (((y0) > (Mkstate26?.x0 st)));
callbacks.state26OnreceivePong st y0;
let st : state27 = {
_dumstate27 = ();
x0 = (Mkstate26?.x0 st);
y0 = y0;
}
in
runState27 st
| _ -> unexpected "unexpected label"
and runState27 (st: state27) : ML unit =
comms.send_string B "Ping";
let x1 = callbacks.state27OnsendPing st in
comms.send_int B x1;
let st : state28 = {
_dumstate28 = ();
x0 = (Mkstate27?.x0 st);
y0 = (Mkstate27?.y0 st);
x1 = x1;
}
in
runState28 st
and runState28 (st: state28) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y1 = comms.recv_int B () in
assume (((y1) > (Mkstate28?.x1 st)));
callbacks.state28OnreceivePong st y1;
let st : state29 = {
_dumstate29 = ();
x0 = (Mkstate28?.x0 st);
y0 = (Mkstate28?.y0 st);
x1 = (Mkstate28?.x1 st);
y1 = y1;
}
in
runState29 st
| _ -> unexpected "unexpected label"
and runState29 (st: state29) : ML unit =
comms.send_string B "Ping";
let x2 = callbacks.state29OnsendPing st in
comms.send_int B x2;
let st : state30 = {
_dumstate30 = ();
x0 = (Mkstate29?.x0 st);
y0 = (Mkstate29?.y0 st);
x1 = (Mkstate29?.x1 st);
y1 = (Mkstate29?.y1 st);
x2 = x2;
}
in
runState30 st
and runState30 (st: state30) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y2 = comms.recv_int B () in
assume (((y2) > (Mkstate30?.x2 st)));
callbacks.state30OnreceivePong st y2;
let st : state31 = {
_dumstate31 = ();
x0 = (Mkstate30?.x0 st);
y0 = (Mkstate30?.y0 st);
x1 = (Mkstate30?.x1 st);
y1 = (Mkstate30?.y1 st);
x2 = (Mkstate30?.x2 st);
y2 = y2;
}
in
runState31 st
| _ -> unexpected "unexpected label"
and runState31 (st: state31) : ML unit =
comms.send_string B "Ping";
let x3 = callbacks.state31OnsendPing st in
comms.send_int B x3;
let st : state32 = {
_dumstate32 = ();
x0 = (Mkstate31?.x0 st);
y0 = (Mkstate31?.y0 st);
x1 = (Mkstate31?.x1 st);
y1 = (Mkstate31?.y1 st);
x2 = (Mkstate31?.x2 st);
y2 = (Mkstate31?.y2 st);
x3 = x3;
}
in
runState32 st
and runState32 (st: state32) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y3 = comms.recv_int B () in
assume (((y3) > (Mkstate32?.x3 st)));
callbacks.state32OnreceivePong st y3;
let st : state33 = {
_dumstate33 = ();
x0 = (Mkstate32?.x0 st);
y0 = (Mkstate32?.y0 st);
x1 = (Mkstate32?.x1 st);
y1 = (Mkstate32?.y1 st);
x2 = (Mkstate32?.x2 st);
y2 = (Mkstate32?.y2 st);
x3 = (Mkstate32?.x3 st);
y3 = y3;
}
in
runState33 st
| _ -> unexpected "unexpected label"
and runState33 (st: state33) : ML unit =
comms.send_string B "Ping";
let x4 = callbacks.state33OnsendPing st in
comms.send_int B x4;
let st : state34 = {
_dumstate34 = ();
x0 = (Mkstate33?.x0 st);
y0 = (Mkstate33?.y0 st);
x1 = (Mkstate33?.x1 st);
y1 = (Mkstate33?.y1 st);
x2 = (Mkstate33?.x2 st);
y2 = (Mkstate33?.y2 st);
x3 = (Mkstate33?.x3 st);
y3 = (Mkstate33?.y3 st);
x4 = x4;
}
in
runState34 st
and runState34 (st: state34) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y4 = comms.recv_int B () in
assume (((y4) > (Mkstate34?.x4 st)));
callbacks.state34OnreceivePong st y4;
let st : state35 = {
_dumstate35 = ();
x0 = (Mkstate34?.x0 st);
y0 = (Mkstate34?.y0 st);
x1 = (Mkstate34?.x1 st);
y1 = (Mkstate34?.y1 st);
x2 = (Mkstate34?.x2 st);
y2 = (Mkstate34?.y2 st);
x3 = (Mkstate34?.x3 st);
y3 = (Mkstate34?.y3 st);
x4 = (Mkstate34?.x4 st);
y4 = y4;
}
in
runState35 st
| _ -> unexpected "unexpected label"
and runState35 (st: state35) : ML unit =
comms.send_string B "Ping";
let x5 = callbacks.state35OnsendPing st in
comms.send_int B x5;
let st : state36 = {
_dumstate36 = ();
x0 = (Mkstate35?.x0 st);
y0 = (Mkstate35?.y0 st);
x1 = (Mkstate35?.x1 st);
y1 = (Mkstate35?.y1 st);
x2 = (Mkstate35?.x2 st);
y2 = (Mkstate35?.y2 st);
x3 = (Mkstate35?.x3 st);
y3 = (Mkstate35?.y3 st);
x4 = (Mkstate35?.x4 st);
y4 = (Mkstate35?.y4 st);
x5 = x5;
}
in
runState36 st
and runState36 (st: state36) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y5 = comms.recv_int B () in
assume (((y5) > (Mkstate36?.x5 st)));
callbacks.state36OnreceivePong st y5;
let st : state37 = {
_dumstate37 = ();
x0 = (Mkstate36?.x0 st);
y0 = (Mkstate36?.y0 st);
x1 = (Mkstate36?.x1 st);
y1 = (Mkstate36?.y1 st);
x2 = (Mkstate36?.x2 st);
y2 = (Mkstate36?.y2 st);
x3 = (Mkstate36?.x3 st);
y3 = (Mkstate36?.y3 st);
x4 = (Mkstate36?.x4 st);
y4 = (Mkstate36?.y4 st);
x5 = (Mkstate36?.x5 st);
y5 = y5;
}
in
runState37 st
| _ -> unexpected "unexpected label"
and runState37 (st: state37) : ML unit =
comms.send_string B "Ping";
let x6 = callbacks.state37OnsendPing st in
comms.send_int B x6;
let st : state38 = {
_dumstate38 = ();
x0 = (Mkstate37?.x0 st);
y0 = (Mkstate37?.y0 st);
x1 = (Mkstate37?.x1 st);
y1 = (Mkstate37?.y1 st);
x2 = (Mkstate37?.x2 st);
y2 = (Mkstate37?.y2 st);
x3 = (Mkstate37?.x3 st);
y3 = (Mkstate37?.y3 st);
x4 = (Mkstate37?.x4 st);
y4 = (Mkstate37?.y4 st);
x5 = (Mkstate37?.x5 st);
y5 = (Mkstate37?.y5 st);
x6 = x6;
}
in
runState38 st
and runState38 (st: state38) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y6 = comms.recv_int B () in
assume (((y6) > (Mkstate38?.x6 st)));
callbacks.state38OnreceivePong st y6;
let st : state39 = {
_dumstate39 = ();
x0 = (Mkstate38?.x0 st);
y0 = (Mkstate38?.y0 st);
x1 = (Mkstate38?.x1 st);
y1 = (Mkstate38?.y1 st);
x2 = (Mkstate38?.x2 st);
y2 = (Mkstate38?.y2 st);
x3 = (Mkstate38?.x3 st);
y3 = (Mkstate38?.y3 st);
x4 = (Mkstate38?.x4 st);
y4 = (Mkstate38?.y4 st);
x5 = (Mkstate38?.x5 st);
y5 = (Mkstate38?.y5 st);
x6 = (Mkstate38?.x6 st);
y6 = y6;
}
in
runState39 st
| _ -> unexpected "unexpected label"
and runState39 (st: state39) : ML unit =
comms.send_string B "Ping";
let x7 = callbacks.state39OnsendPing st in
comms.send_int B x7;
let st : state40 = {
_dumstate40 = ();
x0 = (Mkstate39?.x0 st);
y0 = (Mkstate39?.y0 st);
x1 = (Mkstate39?.x1 st);
y1 = (Mkstate39?.y1 st);
x2 = (Mkstate39?.x2 st);
y2 = (Mkstate39?.y2 st);
x3 = (Mkstate39?.x3 st);
y3 = (Mkstate39?.y3 st);
x4 = (Mkstate39?.x4 st);
y4 = (Mkstate39?.y4 st);
x5 = (Mkstate39?.x5 st);
y5 = (Mkstate39?.y5 st);
x6 = (Mkstate39?.x6 st);
y6 = (Mkstate39?.y6 st);
x7 = x7;
}
in
runState40 st
and runState40 (st: state40) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y7 = comms.recv_int B () in
assume (((y7) > (Mkstate40?.x7 st)));
callbacks.state40OnreceivePong st y7;
let st : state41 = {
_dumstate41 = ();
x0 = (Mkstate40?.x0 st);
y0 = (Mkstate40?.y0 st);
x1 = (Mkstate40?.x1 st);
y1 = (Mkstate40?.y1 st);
x2 = (Mkstate40?.x2 st);
y2 = (Mkstate40?.y2 st);
x3 = (Mkstate40?.x3 st);
y3 = (Mkstate40?.y3 st);
x4 = (Mkstate40?.x4 st);
y4 = (Mkstate40?.y4 st);
x5 = (Mkstate40?.x5 st);
y5 = (Mkstate40?.y5 st);
x6 = (Mkstate40?.x6 st);
y6 = (Mkstate40?.y6 st);
x7 = (Mkstate40?.x7 st);
y7 = y7;
}
in
runState41 st
| _ -> unexpected "unexpected label"
and runState41 (st: state41) : ML unit =
comms.send_string B "Ping";
let x8 = callbacks.state41OnsendPing st in
comms.send_int B x8;
let st : state42 = {
_dumstate42 = ();
x0 = (Mkstate41?.x0 st);
y0 = (Mkstate41?.y0 st);
x1 = (Mkstate41?.x1 st);
y1 = (Mkstate41?.y1 st);
x2 = (Mkstate41?.x2 st);
y2 = (Mkstate41?.y2 st);
x3 = (Mkstate41?.x3 st);
y3 = (Mkstate41?.y3 st);
x4 = (Mkstate41?.x4 st);
y4 = (Mkstate41?.y4 st);
x5 = (Mkstate41?.x5 st);
y5 = (Mkstate41?.y5 st);
x6 = (Mkstate41?.x6 st);
y6 = (Mkstate41?.y6 st);
x7 = (Mkstate41?.x7 st);
y7 = (Mkstate41?.y7 st);
x8 = x8;
}
in
runState42 st
and runState42 (st: state42) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y8 = comms.recv_int B () in
assume (((y8) > (Mkstate42?.x8 st)));
callbacks.state42OnreceivePong st y8;
let st : state43 = {
_dumstate43 = ();
x0 = (Mkstate42?.x0 st);
y0 = (Mkstate42?.y0 st);
x1 = (Mkstate42?.x1 st);
y1 = (Mkstate42?.y1 st);
x2 = (Mkstate42?.x2 st);
y2 = (Mkstate42?.y2 st);
x3 = (Mkstate42?.x3 st);
y3 = (Mkstate42?.y3 st);
x4 = (Mkstate42?.x4 st);
y4 = (Mkstate42?.y4 st);
x5 = (Mkstate42?.x5 st);
y5 = (Mkstate42?.y5 st);
x6 = (Mkstate42?.x6 st);
y6 = (Mkstate42?.y6 st);
x7 = (Mkstate42?.x7 st);
y7 = (Mkstate42?.y7 st);
x8 = (Mkstate42?.x8 st);
y8 = y8;
}
in
runState43 st
| _ -> unexpected "unexpected label"
and runState43 (st: state43) : ML unit =
comms.send_string B "Ping";
let x9 = callbacks.state43OnsendPing st in
comms.send_int B x9;
let st : state44 = {
_dumstate44 = ();
x0 = (Mkstate43?.x0 st);
y0 = (Mkstate43?.y0 st);
x1 = (Mkstate43?.x1 st);
y1 = (Mkstate43?.y1 st);
x2 = (Mkstate43?.x2 st);
y2 = (Mkstate43?.y2 st);
x3 = (Mkstate43?.x3 st);
y3 = (Mkstate43?.y3 st);
x4 = (Mkstate43?.x4 st);
y4 = (Mkstate43?.y4 st);
x5 = (Mkstate43?.x5 st);
y5 = (Mkstate43?.y5 st);
x6 = (Mkstate43?.x6 st);
y6 = (Mkstate43?.y6 st);
x7 = (Mkstate43?.x7 st);
y7 = (Mkstate43?.y7 st);
x8 = (Mkstate43?.x8 st);
y8 = (Mkstate43?.y8 st);
x9 = x9;
}
in
runState44 st
and runState44 (st: state44) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y9 = comms.recv_int B () in
assume (((y9) > (Mkstate44?.x9 st)));
callbacks.state44OnreceivePong st y9;
let st : state24 = ()
in
runState24 st
| _ -> unexpected "unexpected label"
and runState45 (st: state45) : ML unit =
let label = comms.recv_string B () in
match label with
| "Bye" ->
let _dummy = comms.recv_unit B () in
callbacks.state45OnreceiveBye st ;
let st : state25 = ()
in
runState25 st
| _ -> unexpected "unexpected label"
in
let initState : state24 =
()
in
runState24 initState
