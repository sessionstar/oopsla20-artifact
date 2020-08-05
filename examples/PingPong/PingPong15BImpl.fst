module PingPong15BImpl
open GeneratedPingPong15B
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state101OnreceiveBye = (fun _ -> ());
  state101OnreceivePing = (fun _ _ -> ());
  state103OnsendPong = (fun st -> Mkstate103?.x0 st + 1);
  state104OnreceivePing = (fun _ _ -> ());
  state105OnsendPong = (fun st -> Mkstate105?.x1 st + 1);
  state106OnreceivePing = (fun _ _ -> ());
  state107OnsendPong = (fun st -> Mkstate107?.x2 st + 1);
  state108OnreceivePing = (fun _ _ -> ());
  state109OnsendPong = (fun st -> Mkstate109?.x3 st + 1);
  state110OnreceivePing = (fun _ _ -> ());
  state111OnsendPong = (fun st -> Mkstate111?.x4 st + 1);
  state112OnreceivePing = (fun _ _ -> ());
  state113OnsendPong = (fun st -> Mkstate113?.x5 st + 1);
  state114OnreceivePing = (fun _ _ -> ());
  state115OnsendPong = (fun st -> Mkstate115?.x6 st + 1);
  state116OnreceivePing = (fun _ _ -> ());
  state117OnsendPong = (fun st -> Mkstate117?.x7 st + 1);
  state118OnreceivePing = (fun _ _ -> ());
  state119OnsendPong = (fun st -> Mkstate119?.x8 st + 1);
  state120OnreceivePing = (fun _ _ -> ());
  state121OnsendPong = (fun st -> Mkstate121?.x9 st + 1);
  state122OnreceivePing = (fun _ _ -> ());
  state123OnsendPong = (fun st -> Mkstate123?.x10 st + 1);
  state124OnreceivePing = (fun _ _ -> ());
  state125OnsendPong = (fun st -> Mkstate125?.x11 st + 1);
  state126OnreceivePing = (fun _ _ -> ());
  state127OnsendPong = (fun st -> Mkstate127?.x12 st + 1);
  state128OnreceivePing = (fun _ _ -> ());
  state129OnsendPong = (fun st -> Mkstate129?.x13 st + 1);
  state130OnreceivePing = (fun _ _ -> ());
  state131OnsendPong = (fun st -> Mkstate131?.x14 st + 1);
  state132OnsendBye = (fun _ -> ());
}
