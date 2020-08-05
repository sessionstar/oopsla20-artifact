module GeneratedPingPong10B
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| A
type state71 = unit
and state72 = unit
and state73 = {
_dumstate73 : unit;
x0 : int;
}
and state74 = {
_dumstate74 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
}
and state75 = {
_dumstate75 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
}
and state76 = {
_dumstate76 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
}
and state77 = {
_dumstate77 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
}
and state78 = {
_dumstate78 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
}
and state79 = {
_dumstate79 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
}
and state80 = {
_dumstate80 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
}
and state81 = {
_dumstate81 : unit;
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
and state82 = {
_dumstate82 : unit;
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
and state83 = {
_dumstate83 : unit;
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
and state84 = {
_dumstate84 : unit;
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
and state85 = {
_dumstate85 : unit;
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
and state86 = {
_dumstate86 : unit;
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
and state87 = {
_dumstate87 : unit;
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
and state88 = {
_dumstate88 : unit;
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
and state89 = {
_dumstate89 : unit;
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
and state90 = {
_dumstate90 : unit;
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
and state91 = {
_dumstate91 : unit;
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
and state92 = unit
noeq type callbacksB = {
state71OnreceiveBye : (st: state71) -> ML (unit);
state71OnreceivePing : (st: state71) -> (x0: int) -> ML (unit);
state73OnsendPong : (st: state73) -> ML (y0:int{((y0) > (Mkstate73?.x0 st))});
state74OnreceivePing : (st: state74) -> (x1: int{((x1) > (Mkstate74?.y0 st))}) -> ML (unit);
state75OnsendPong : (st: state75) -> ML (y1:int{((y1) > (Mkstate75?.x1 st))});
state76OnreceivePing : (st: state76) -> (x2: int{((x2) > (Mkstate76?.y1 st))}) -> ML (unit);
state77OnsendPong : (st: state77) -> ML (y2:int{((y2) > (Mkstate77?.x2 st))});
state78OnreceivePing : (st: state78) -> (x3: int{((x3) > (Mkstate78?.y2 st))}) -> ML (unit);
state79OnsendPong : (st: state79) -> ML (y3:int{((y3) > (Mkstate79?.x3 st))});
state80OnreceivePing : (st: state80) -> (x4: int{((x4) > (Mkstate80?.y3 st))}) -> ML (unit);
state81OnsendPong : (st: state81) -> ML (y4:int{((y4) > (Mkstate81?.x4 st))});
state82OnreceivePing : (st: state82) -> (x5: int{((x5) > (Mkstate82?.y4 st))}) -> ML (unit);
state83OnsendPong : (st: state83) -> ML (y5:int{((y5) > (Mkstate83?.x5 st))});
state84OnreceivePing : (st: state84) -> (x6: int{((x6) > (Mkstate84?.y5 st))}) -> ML (unit);
state85OnsendPong : (st: state85) -> ML (y6:int{((y6) > (Mkstate85?.x6 st))});
state86OnreceivePing : (st: state86) -> (x7: int{((x7) > (Mkstate86?.y6 st))}) -> ML (unit);
state87OnsendPong : (st: state87) -> ML (y7:int{((y7) > (Mkstate87?.x7 st))});
state88OnreceivePing : (st: state88) -> (x8: int{((x8) > (Mkstate88?.y7 st))}) -> ML (unit);
state89OnsendPong : (st: state89) -> ML (y8:int{((y8) > (Mkstate89?.x8 st))});
state90OnreceivePing : (st: state90) -> (x9: int{((x9) > (Mkstate90?.y8 st))}) -> ML (unit);
state91OnsendPong : (st: state91) -> ML (y9:int{((y9) > (Mkstate91?.x9 st))});
state92OnsendBye : (st: state92) -> ML (unit);
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
let rec runState71 (st: state71) : ML unit =
let label = comms.recv_string A () in
match label with
| "Bye" ->
let _dummy = comms.recv_unit A () in
callbacks.state71OnreceiveBye st ;
let st : state92 = ()
in
runState92 st
| "Ping" ->
let x0 = comms.recv_int A () in
callbacks.state71OnreceivePing st x0;
let st : state73 = {
_dumstate73 = ();
x0 = x0;
}
in
runState73 st
| _ -> unexpected "unexpected label"
and runState72 (st: state72) : ML unit =
()
and runState73 (st: state73) : ML unit =
comms.send_string A "Pong";
let y0 = callbacks.state73OnsendPong st in
comms.send_int A y0;
let st : state74 = {
_dumstate74 = ();
x0 = (Mkstate73?.x0 st);
y0 = y0;
}
in
runState74 st
and runState74 (st: state74) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x1 = comms.recv_int A () in
assume (((x1) > (Mkstate74?.y0 st)));
callbacks.state74OnreceivePing st x1;
let st : state75 = {
_dumstate75 = ();
x0 = (Mkstate74?.x0 st);
y0 = (Mkstate74?.y0 st);
x1 = x1;
}
in
runState75 st
| _ -> unexpected "unexpected label"
and runState75 (st: state75) : ML unit =
comms.send_string A "Pong";
let y1 = callbacks.state75OnsendPong st in
comms.send_int A y1;
let st : state76 = {
_dumstate76 = ();
x0 = (Mkstate75?.x0 st);
y0 = (Mkstate75?.y0 st);
x1 = (Mkstate75?.x1 st);
y1 = y1;
}
in
runState76 st
and runState76 (st: state76) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x2 = comms.recv_int A () in
assume (((x2) > (Mkstate76?.y1 st)));
callbacks.state76OnreceivePing st x2;
let st : state77 = {
_dumstate77 = ();
x0 = (Mkstate76?.x0 st);
y0 = (Mkstate76?.y0 st);
x1 = (Mkstate76?.x1 st);
y1 = (Mkstate76?.y1 st);
x2 = x2;
}
in
runState77 st
| _ -> unexpected "unexpected label"
and runState77 (st: state77) : ML unit =
comms.send_string A "Pong";
let y2 = callbacks.state77OnsendPong st in
comms.send_int A y2;
let st : state78 = {
_dumstate78 = ();
x0 = (Mkstate77?.x0 st);
y0 = (Mkstate77?.y0 st);
x1 = (Mkstate77?.x1 st);
y1 = (Mkstate77?.y1 st);
x2 = (Mkstate77?.x2 st);
y2 = y2;
}
in
runState78 st
and runState78 (st: state78) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x3 = comms.recv_int A () in
assume (((x3) > (Mkstate78?.y2 st)));
callbacks.state78OnreceivePing st x3;
let st : state79 = {
_dumstate79 = ();
x0 = (Mkstate78?.x0 st);
y0 = (Mkstate78?.y0 st);
x1 = (Mkstate78?.x1 st);
y1 = (Mkstate78?.y1 st);
x2 = (Mkstate78?.x2 st);
y2 = (Mkstate78?.y2 st);
x3 = x3;
}
in
runState79 st
| _ -> unexpected "unexpected label"
and runState79 (st: state79) : ML unit =
comms.send_string A "Pong";
let y3 = callbacks.state79OnsendPong st in
comms.send_int A y3;
let st : state80 = {
_dumstate80 = ();
x0 = (Mkstate79?.x0 st);
y0 = (Mkstate79?.y0 st);
x1 = (Mkstate79?.x1 st);
y1 = (Mkstate79?.y1 st);
x2 = (Mkstate79?.x2 st);
y2 = (Mkstate79?.y2 st);
x3 = (Mkstate79?.x3 st);
y3 = y3;
}
in
runState80 st
and runState80 (st: state80) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x4 = comms.recv_int A () in
assume (((x4) > (Mkstate80?.y3 st)));
callbacks.state80OnreceivePing st x4;
let st : state81 = {
_dumstate81 = ();
x0 = (Mkstate80?.x0 st);
y0 = (Mkstate80?.y0 st);
x1 = (Mkstate80?.x1 st);
y1 = (Mkstate80?.y1 st);
x2 = (Mkstate80?.x2 st);
y2 = (Mkstate80?.y2 st);
x3 = (Mkstate80?.x3 st);
y3 = (Mkstate80?.y3 st);
x4 = x4;
}
in
runState81 st
| _ -> unexpected "unexpected label"
and runState81 (st: state81) : ML unit =
comms.send_string A "Pong";
let y4 = callbacks.state81OnsendPong st in
comms.send_int A y4;
let st : state82 = {
_dumstate82 = ();
x0 = (Mkstate81?.x0 st);
y0 = (Mkstate81?.y0 st);
x1 = (Mkstate81?.x1 st);
y1 = (Mkstate81?.y1 st);
x2 = (Mkstate81?.x2 st);
y2 = (Mkstate81?.y2 st);
x3 = (Mkstate81?.x3 st);
y3 = (Mkstate81?.y3 st);
x4 = (Mkstate81?.x4 st);
y4 = y4;
}
in
runState82 st
and runState82 (st: state82) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x5 = comms.recv_int A () in
assume (((x5) > (Mkstate82?.y4 st)));
callbacks.state82OnreceivePing st x5;
let st : state83 = {
_dumstate83 = ();
x0 = (Mkstate82?.x0 st);
y0 = (Mkstate82?.y0 st);
x1 = (Mkstate82?.x1 st);
y1 = (Mkstate82?.y1 st);
x2 = (Mkstate82?.x2 st);
y2 = (Mkstate82?.y2 st);
x3 = (Mkstate82?.x3 st);
y3 = (Mkstate82?.y3 st);
x4 = (Mkstate82?.x4 st);
y4 = (Mkstate82?.y4 st);
x5 = x5;
}
in
runState83 st
| _ -> unexpected "unexpected label"
and runState83 (st: state83) : ML unit =
comms.send_string A "Pong";
let y5 = callbacks.state83OnsendPong st in
comms.send_int A y5;
let st : state84 = {
_dumstate84 = ();
x0 = (Mkstate83?.x0 st);
y0 = (Mkstate83?.y0 st);
x1 = (Mkstate83?.x1 st);
y1 = (Mkstate83?.y1 st);
x2 = (Mkstate83?.x2 st);
y2 = (Mkstate83?.y2 st);
x3 = (Mkstate83?.x3 st);
y3 = (Mkstate83?.y3 st);
x4 = (Mkstate83?.x4 st);
y4 = (Mkstate83?.y4 st);
x5 = (Mkstate83?.x5 st);
y5 = y5;
}
in
runState84 st
and runState84 (st: state84) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x6 = comms.recv_int A () in
assume (((x6) > (Mkstate84?.y5 st)));
callbacks.state84OnreceivePing st x6;
let st : state85 = {
_dumstate85 = ();
x0 = (Mkstate84?.x0 st);
y0 = (Mkstate84?.y0 st);
x1 = (Mkstate84?.x1 st);
y1 = (Mkstate84?.y1 st);
x2 = (Mkstate84?.x2 st);
y2 = (Mkstate84?.y2 st);
x3 = (Mkstate84?.x3 st);
y3 = (Mkstate84?.y3 st);
x4 = (Mkstate84?.x4 st);
y4 = (Mkstate84?.y4 st);
x5 = (Mkstate84?.x5 st);
y5 = (Mkstate84?.y5 st);
x6 = x6;
}
in
runState85 st
| _ -> unexpected "unexpected label"
and runState85 (st: state85) : ML unit =
comms.send_string A "Pong";
let y6 = callbacks.state85OnsendPong st in
comms.send_int A y6;
let st : state86 = {
_dumstate86 = ();
x0 = (Mkstate85?.x0 st);
y0 = (Mkstate85?.y0 st);
x1 = (Mkstate85?.x1 st);
y1 = (Mkstate85?.y1 st);
x2 = (Mkstate85?.x2 st);
y2 = (Mkstate85?.y2 st);
x3 = (Mkstate85?.x3 st);
y3 = (Mkstate85?.y3 st);
x4 = (Mkstate85?.x4 st);
y4 = (Mkstate85?.y4 st);
x5 = (Mkstate85?.x5 st);
y5 = (Mkstate85?.y5 st);
x6 = (Mkstate85?.x6 st);
y6 = y6;
}
in
runState86 st
and runState86 (st: state86) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x7 = comms.recv_int A () in
assume (((x7) > (Mkstate86?.y6 st)));
callbacks.state86OnreceivePing st x7;
let st : state87 = {
_dumstate87 = ();
x0 = (Mkstate86?.x0 st);
y0 = (Mkstate86?.y0 st);
x1 = (Mkstate86?.x1 st);
y1 = (Mkstate86?.y1 st);
x2 = (Mkstate86?.x2 st);
y2 = (Mkstate86?.y2 st);
x3 = (Mkstate86?.x3 st);
y3 = (Mkstate86?.y3 st);
x4 = (Mkstate86?.x4 st);
y4 = (Mkstate86?.y4 st);
x5 = (Mkstate86?.x5 st);
y5 = (Mkstate86?.y5 st);
x6 = (Mkstate86?.x6 st);
y6 = (Mkstate86?.y6 st);
x7 = x7;
}
in
runState87 st
| _ -> unexpected "unexpected label"
and runState87 (st: state87) : ML unit =
comms.send_string A "Pong";
let y7 = callbacks.state87OnsendPong st in
comms.send_int A y7;
let st : state88 = {
_dumstate88 = ();
x0 = (Mkstate87?.x0 st);
y0 = (Mkstate87?.y0 st);
x1 = (Mkstate87?.x1 st);
y1 = (Mkstate87?.y1 st);
x2 = (Mkstate87?.x2 st);
y2 = (Mkstate87?.y2 st);
x3 = (Mkstate87?.x3 st);
y3 = (Mkstate87?.y3 st);
x4 = (Mkstate87?.x4 st);
y4 = (Mkstate87?.y4 st);
x5 = (Mkstate87?.x5 st);
y5 = (Mkstate87?.y5 st);
x6 = (Mkstate87?.x6 st);
y6 = (Mkstate87?.y6 st);
x7 = (Mkstate87?.x7 st);
y7 = y7;
}
in
runState88 st
and runState88 (st: state88) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x8 = comms.recv_int A () in
assume (((x8) > (Mkstate88?.y7 st)));
callbacks.state88OnreceivePing st x8;
let st : state89 = {
_dumstate89 = ();
x0 = (Mkstate88?.x0 st);
y0 = (Mkstate88?.y0 st);
x1 = (Mkstate88?.x1 st);
y1 = (Mkstate88?.y1 st);
x2 = (Mkstate88?.x2 st);
y2 = (Mkstate88?.y2 st);
x3 = (Mkstate88?.x3 st);
y3 = (Mkstate88?.y3 st);
x4 = (Mkstate88?.x4 st);
y4 = (Mkstate88?.y4 st);
x5 = (Mkstate88?.x5 st);
y5 = (Mkstate88?.y5 st);
x6 = (Mkstate88?.x6 st);
y6 = (Mkstate88?.y6 st);
x7 = (Mkstate88?.x7 st);
y7 = (Mkstate88?.y7 st);
x8 = x8;
}
in
runState89 st
| _ -> unexpected "unexpected label"
and runState89 (st: state89) : ML unit =
comms.send_string A "Pong";
let y8 = callbacks.state89OnsendPong st in
comms.send_int A y8;
let st : state90 = {
_dumstate90 = ();
x0 = (Mkstate89?.x0 st);
y0 = (Mkstate89?.y0 st);
x1 = (Mkstate89?.x1 st);
y1 = (Mkstate89?.y1 st);
x2 = (Mkstate89?.x2 st);
y2 = (Mkstate89?.y2 st);
x3 = (Mkstate89?.x3 st);
y3 = (Mkstate89?.y3 st);
x4 = (Mkstate89?.x4 st);
y4 = (Mkstate89?.y4 st);
x5 = (Mkstate89?.x5 st);
y5 = (Mkstate89?.y5 st);
x6 = (Mkstate89?.x6 st);
y6 = (Mkstate89?.y6 st);
x7 = (Mkstate89?.x7 st);
y7 = (Mkstate89?.y7 st);
x8 = (Mkstate89?.x8 st);
y8 = y8;
}
in
runState90 st
and runState90 (st: state90) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x9 = comms.recv_int A () in
assume (((x9) > (Mkstate90?.y8 st)));
callbacks.state90OnreceivePing st x9;
let st : state91 = {
_dumstate91 = ();
x0 = (Mkstate90?.x0 st);
y0 = (Mkstate90?.y0 st);
x1 = (Mkstate90?.x1 st);
y1 = (Mkstate90?.y1 st);
x2 = (Mkstate90?.x2 st);
y2 = (Mkstate90?.y2 st);
x3 = (Mkstate90?.x3 st);
y3 = (Mkstate90?.y3 st);
x4 = (Mkstate90?.x4 st);
y4 = (Mkstate90?.y4 st);
x5 = (Mkstate90?.x5 st);
y5 = (Mkstate90?.y5 st);
x6 = (Mkstate90?.x6 st);
y6 = (Mkstate90?.y6 st);
x7 = (Mkstate90?.x7 st);
y7 = (Mkstate90?.y7 st);
x8 = (Mkstate90?.x8 st);
y8 = (Mkstate90?.y8 st);
x9 = x9;
}
in
runState91 st
| _ -> unexpected "unexpected label"
and runState91 (st: state91) : ML unit =
comms.send_string A "Pong";
let y9 = callbacks.state91OnsendPong st in
comms.send_int A y9;
let st : state71 = ()
in
runState71 st
and runState92 (st: state92) : ML unit =
comms.send_string A "Bye";
let _dummy = callbacks.state92OnsendBye st in
comms.send_unit A _dummy;
let st : state72 = ()
in
runState72 st
in
let initState : state71 =
()
in
runState71 initState
