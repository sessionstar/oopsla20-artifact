module GeneratedPingPong5B
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| A
type state41 = unit
and state42 = unit
and state43 = {
_dumstate43 : unit;
x0 : int;
}
and state44 = {
_dumstate44 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
}
and state45 = {
_dumstate45 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
}
and state46 = {
_dumstate46 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
}
and state47 = {
_dumstate47 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
}
and state48 = {
_dumstate48 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
}
and state49 = {
_dumstate49 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
}
and state50 = {
_dumstate50 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
}
and state51 = {
_dumstate51 : unit;
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
and state52 = unit
noeq type callbacksB = {
state41OnreceiveBye : (st: state41) -> ML (unit);
state41OnreceivePing : (st: state41) -> (x0: int) -> ML (unit);
state43OnsendPong : (st: state43) -> ML (y0:int{((y0) > (Mkstate43?.x0 st))});
state44OnreceivePing : (st: state44) -> (x1: int{((x1) > (Mkstate44?.y0 st))}) -> ML (unit);
state45OnsendPong : (st: state45) -> ML (y1:int{((y1) > (Mkstate45?.x1 st))});
state46OnreceivePing : (st: state46) -> (x2: int{((x2) > (Mkstate46?.y1 st))}) -> ML (unit);
state47OnsendPong : (st: state47) -> ML (y2:int{((y2) > (Mkstate47?.x2 st))});
state48OnreceivePing : (st: state48) -> (x3: int{((x3) > (Mkstate48?.y2 st))}) -> ML (unit);
state49OnsendPong : (st: state49) -> ML (y3:int{((y3) > (Mkstate49?.x3 st))});
state50OnreceivePing : (st: state50) -> (x4: int{((x4) > (Mkstate50?.y3 st))}) -> ML (unit);
state51OnsendPong : (st: state51) -> ML (y4:int{((y4) > (Mkstate51?.x4 st))});
state52OnsendBye : (st: state52) -> ML (unit);
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
let rec runState41 (st: state41) : ML unit =
let label = comms.recv_string A () in
match label with
| "Bye" ->
let _dummy = comms.recv_unit A () in
callbacks.state41OnreceiveBye st ;
let st : state52 = ()
in
runState52 st
| "Ping" ->
let x0 = comms.recv_int A () in
callbacks.state41OnreceivePing st x0;
let st : state43 = {
_dumstate43 = ();
x0 = x0;
}
in
runState43 st
| _ -> unexpected "unexpected label"
and runState42 (st: state42) : ML unit =
()
and runState43 (st: state43) : ML unit =
comms.send_string A "Pong";
let y0 = callbacks.state43OnsendPong st in
comms.send_int A y0;
let st : state44 = {
_dumstate44 = ();
x0 = (Mkstate43?.x0 st);
y0 = y0;
}
in
runState44 st
and runState44 (st: state44) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x1 = comms.recv_int A () in
assume (((x1) > (Mkstate44?.y0 st)));
callbacks.state44OnreceivePing st x1;
let st : state45 = {
_dumstate45 = ();
x0 = (Mkstate44?.x0 st);
y0 = (Mkstate44?.y0 st);
x1 = x1;
}
in
runState45 st
| _ -> unexpected "unexpected label"
and runState45 (st: state45) : ML unit =
comms.send_string A "Pong";
let y1 = callbacks.state45OnsendPong st in
comms.send_int A y1;
let st : state46 = {
_dumstate46 = ();
x0 = (Mkstate45?.x0 st);
y0 = (Mkstate45?.y0 st);
x1 = (Mkstate45?.x1 st);
y1 = y1;
}
in
runState46 st
and runState46 (st: state46) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x2 = comms.recv_int A () in
assume (((x2) > (Mkstate46?.y1 st)));
callbacks.state46OnreceivePing st x2;
let st : state47 = {
_dumstate47 = ();
x0 = (Mkstate46?.x0 st);
y0 = (Mkstate46?.y0 st);
x1 = (Mkstate46?.x1 st);
y1 = (Mkstate46?.y1 st);
x2 = x2;
}
in
runState47 st
| _ -> unexpected "unexpected label"
and runState47 (st: state47) : ML unit =
comms.send_string A "Pong";
let y2 = callbacks.state47OnsendPong st in
comms.send_int A y2;
let st : state48 = {
_dumstate48 = ();
x0 = (Mkstate47?.x0 st);
y0 = (Mkstate47?.y0 st);
x1 = (Mkstate47?.x1 st);
y1 = (Mkstate47?.y1 st);
x2 = (Mkstate47?.x2 st);
y2 = y2;
}
in
runState48 st
and runState48 (st: state48) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x3 = comms.recv_int A () in
assume (((x3) > (Mkstate48?.y2 st)));
callbacks.state48OnreceivePing st x3;
let st : state49 = {
_dumstate49 = ();
x0 = (Mkstate48?.x0 st);
y0 = (Mkstate48?.y0 st);
x1 = (Mkstate48?.x1 st);
y1 = (Mkstate48?.y1 st);
x2 = (Mkstate48?.x2 st);
y2 = (Mkstate48?.y2 st);
x3 = x3;
}
in
runState49 st
| _ -> unexpected "unexpected label"
and runState49 (st: state49) : ML unit =
comms.send_string A "Pong";
let y3 = callbacks.state49OnsendPong st in
comms.send_int A y3;
let st : state50 = {
_dumstate50 = ();
x0 = (Mkstate49?.x0 st);
y0 = (Mkstate49?.y0 st);
x1 = (Mkstate49?.x1 st);
y1 = (Mkstate49?.y1 st);
x2 = (Mkstate49?.x2 st);
y2 = (Mkstate49?.y2 st);
x3 = (Mkstate49?.x3 st);
y3 = y3;
}
in
runState50 st
and runState50 (st: state50) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x4 = comms.recv_int A () in
assume (((x4) > (Mkstate50?.y3 st)));
callbacks.state50OnreceivePing st x4;
let st : state51 = {
_dumstate51 = ();
x0 = (Mkstate50?.x0 st);
y0 = (Mkstate50?.y0 st);
x1 = (Mkstate50?.x1 st);
y1 = (Mkstate50?.y1 st);
x2 = (Mkstate50?.x2 st);
y2 = (Mkstate50?.y2 st);
x3 = (Mkstate50?.x3 st);
y3 = (Mkstate50?.y3 st);
x4 = x4;
}
in
runState51 st
| _ -> unexpected "unexpected label"
and runState51 (st: state51) : ML unit =
comms.send_string A "Pong";
let y4 = callbacks.state51OnsendPong st in
comms.send_int A y4;
let st : state41 = ()
in
runState41 st
and runState52 (st: state52) : ML unit =
comms.send_string A "Bye";
let _dummy = callbacks.state52OnsendBye st in
comms.send_unit A _dummy;
let st : state42 = ()
in
runState42 st
in
let initState : state41 =
()
in
runState41 initState
