module ServerImpl

open GeneratedHttpS

(*
noeq type callbacksS = {
state106OnreceiveMethod : (st: state106) -> (method: string) -> ML (unit);
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
type label =
| Body
| HeaderName
| HeaderValue
| Method
| Reason
| Status
| Target
| Version
*)

let callbacks = {
  state106OnreceiveMethod = (fun _ _ -> ());
  state108OnreceiveTarget = (fun _ _ -> ());
  state109OnreceiveVersion = (fun _ _ -> ());
  state110OnreceiveBody = (fun _ _ -> ());
  state110OnreceiveHeaderName = (fun _ _ -> ());
  state111OnreceiveHeaderValue = (fun _ _ -> ());
  state112OnsendVersion = (fun st -> Mkstate112?.reqversion st);
  state113OnsendStatus = (fun st -> if Mkstate113?.target st = "/secret" then 200 else 400);
  state114OnsendReason = (fun st -> if Mkstate114?.status st = 200 then "Ok" else
  "Bad Request");
  state115Onsend = (fun st -> let resp = (if Mkstate115?.status st = 200 then "42"
  else "The secret cannot be exposed!") in (Choice115Body resp));
  state116OnsendHeaderValue = (fun _ -> "");
}
