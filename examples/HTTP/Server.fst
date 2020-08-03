module Server
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| C
type label =
| Body
| HeaderName
| HeaderValue
| Method
| Reason
| Status
| Target
| Version
type state106 = unit
and state107 = unit
and state108 = {
_dumstate108 : unit;
httpmethod : string;
}
and state109 = {
_dumstate109 : unit;
httpmethod : string;
target : string;
}
and state110 = {
_dumstate110 : unit;
httpmethod : string;
target : string;
reqversion : string;
}
and state111 = {
_dumstate111 : unit;
httpmethod : string;
target : string;
reqversion : string;
reqheadername : string;
}
and state112 = {
_dumstate112 : unit;
httpmethod : string;
target : string;
reqversion : string;
reqbody : string;
}
and state113 = {
_dumstate113 : unit;
httpmethod : string;
target : string;
reqversion : string;
reqbody : string;
respversion : string;
}
and state114 = {
_dumstate114 : unit;
httpmethod : string;
target : string;
reqversion : string;
reqbody : string;
respversion : string;
status : (status : int{((status) >= (100)) && ((status) <= (999))});
}
and state115 = {
_dumstate115 : unit;
httpmethod : string;
target : string;
reqversion : string;
reqbody : string;
respversion : string;
status : (status : int{((status) >= (100)) && ((status) <= (999))});
reason : string;
}
and state116 = {
_dumstate116 : unit;
httpmethod : string;
target : string;
reqversion : string;
reqbody : string;
respversion : string;
status : (status : int{((status) >= (100)) && ((status) <= (999))});
reason : string;
respheadername : string;
}
type state115Choice (st: state115) =
| Choice115HeaderName of string
| Choice115Body of string
noeq type callbacksS = {
state106OnreceiveMethod : (st: state106) -> (httpmethod: string) -> ML (unit);
state108OnreceiveTarget : (st: state108) -> (target: string) -> ML (unit);
state109OnreceiveVersion : (st: state109) -> (reqversion: string) -> ML (unit);
state110OnreceiveBody : (st: state110) -> (reqbody: string) -> ML (unit);
state110OnreceiveHeaderName : (st: state110) -> (reqheadername: string) -> ML (unit);
state111OnreceiveHeaderValue : (st: state111) -> (reqheadervalue: string) -> ML (unit);
state112OnsendVersion : (st: state112) -> ML (string);
state113OnsendStatus : (st: state113) -> ML (status:int{((status) >= (100)) && ((status) <= (999))});
state114OnsendReason : (st: state114) -> ML (string);
state115Onsend : (st: state115) -> ML (state115Choice st);
state116OnsendHeaderValue : (st: state116) -> ML (string);
}
noeq type connection = {
send_int : role -> int -> ML unit;
recv_int : role -> unit -> ML int;
send_string : role -> string -> ML unit;
recv_string : role -> unit -> ML string;
send_unit : role -> unit -> ML unit;
recv_unit : role -> unit -> ML unit;
send_label : role -> label -> ML unit;
recv_label : role -> unit -> ML label;
}
let run (callbacks : callbacksS) (comms : connection) : ML unit =
let rec runState106 (st: state106) : ML unit =
let label = comms.recv_label C () in
match label with
| Method ->
let httpmethod = comms.recv_string C () in
callbacks.state106OnreceiveMethod st httpmethod;
let st : state108 = {
_dumstate108 = ();
httpmethod = httpmethod;
}
in
runState108 st
| _ -> unexpected "unexpected label"
and runState107 (st: state107) : ML unit =
()
and runState108 (st: state108) : ML unit =
let label = comms.recv_label C () in
match label with
| Target ->
let target = comms.recv_string C () in
callbacks.state108OnreceiveTarget st target;
let st : state109 = {
_dumstate109 = ();
httpmethod = (Mkstate108?.httpmethod st);
target = target;
}
in
runState109 st
| _ -> unexpected "unexpected label"
and runState109 (st: state109) : ML unit =
let label = comms.recv_label C () in
match label with
| Version ->
let reqversion = comms.recv_string C () in
callbacks.state109OnreceiveVersion st reqversion;
let st : state110 = {
_dumstate110 = ();
httpmethod = (Mkstate109?.httpmethod st);
target = (Mkstate109?.target st);
reqversion = reqversion;
}
in
runState110 st
| _ -> unexpected "unexpected label"
and runState110 (st: state110) : ML unit =
let label = comms.recv_label C () in
match label with
| Body ->
let reqbody = comms.recv_string C () in
callbacks.state110OnreceiveBody st reqbody;
let st : state112 = {
_dumstate112 = ();
httpmethod = (Mkstate110?.httpmethod st);
target = (Mkstate110?.target st);
reqversion = (Mkstate110?.reqversion st);
reqbody = reqbody;
}
in
runState112 st
| HeaderName ->
let reqheadername = comms.recv_string C () in
callbacks.state110OnreceiveHeaderName st reqheadername;
let st : state111 = {
_dumstate111 = ();
httpmethod = (Mkstate110?.httpmethod st);
target = (Mkstate110?.target st);
reqversion = (Mkstate110?.reqversion st);
reqheadername = reqheadername;
}
in
runState111 st
| _ -> unexpected "unexpected label"
and runState111 (st: state111) : ML unit =
let label = comms.recv_label C () in
match label with
| HeaderValue ->
let reqheadervalue = comms.recv_string C () in
callbacks.state111OnreceiveHeaderValue st reqheadervalue;
let st : state110 = {
_dumstate110 = ();
httpmethod = (Mkstate111?.httpmethod st);
target = (Mkstate111?.target st);
reqversion = (Mkstate111?.reqversion st);
}
in
runState110 st
| _ -> unexpected "unexpected label"
and runState112 (st: state112) : ML unit =
comms.send_label C Version;
let respversion = callbacks.state112OnsendVersion st in
comms.send_string C respversion;
let st : state113 = {
_dumstate113 = ();
httpmethod = (Mkstate112?.httpmethod st);
target = (Mkstate112?.target st);
reqversion = (Mkstate112?.reqversion st);
reqbody = (Mkstate112?.reqbody st);
respversion = respversion;
}
in
runState113 st
and runState113 (st: state113) : ML unit =
comms.send_label C Status;
let status = callbacks.state113OnsendStatus st in
comms.send_int C status;
let st : state114 = {
_dumstate114 = ();
httpmethod = (Mkstate113?.httpmethod st);
target = (Mkstate113?.target st);
reqversion = (Mkstate113?.reqversion st);
reqbody = (Mkstate113?.reqbody st);
respversion = (Mkstate113?.respversion st);
status = status;
}
in
runState114 st
and runState114 (st: state114) : ML unit =
comms.send_label C Reason;
let reason = callbacks.state114OnsendReason st in
comms.send_string C reason;
let st : state115 = {
_dumstate115 = ();
httpmethod = (Mkstate114?.httpmethod st);
target = (Mkstate114?.target st);
reqversion = (Mkstate114?.reqversion st);
reqbody = (Mkstate114?.reqbody st);
respversion = (Mkstate114?.respversion st);
status = (Mkstate114?.status st);
reason = reason;
}
in
runState115 st
and runState115 (st: state115) : ML unit =
let label = callbacks.state115Onsend st in
match label with
| Choice115HeaderName respheadername ->
comms.send_label C HeaderName;
comms.send_string C respheadername;
let st : state116 = {
_dumstate116 = ();
httpmethod = (Mkstate115?.httpmethod st);
target = (Mkstate115?.target st);
reqversion = (Mkstate115?.reqversion st);
reqbody = (Mkstate115?.reqbody st);
respversion = (Mkstate115?.respversion st);
status = (Mkstate115?.status st);
reason = (Mkstate115?.reason st);
respheadername = respheadername;
}
in
runState116 st
| Choice115Body respbody ->
comms.send_label C Body;
comms.send_string C respbody;
let st : state107 = ()
in
runState107 st
and runState116 (st: state116) : ML unit =
comms.send_label C HeaderValue;
let respheadervalue = callbacks.state116OnsendHeaderValue st in
comms.send_string C respheadervalue;
let st : state115 = {
_dumstate115 = ();
httpmethod = (Mkstate116?.httpmethod st);
target = (Mkstate116?.target st);
reqversion = (Mkstate116?.reqversion st);
reqbody = (Mkstate116?.reqbody st);
respversion = (Mkstate116?.respversion st);
status = (Mkstate116?.status st);
reason = (Mkstate116?.reason st);
}
in
runState115 st
in
let initState : state106 =
()
in
runState106 initState
