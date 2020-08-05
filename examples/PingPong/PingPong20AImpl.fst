module PingPong20AImpl
open GeneratedPingPong20A
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state44Onsend = (fun _ -> if !it < count then (it := !it + 1; Choice44Ping ((!it-1) * 20)) else Choice44Bye ());
  state46OnreceivePong = (fun _ _ -> ());
  state47OnsendPing = (fun st -> Mkstate47?.y0 st + 1);
  state48OnreceivePong = (fun _ _ -> ());
  state49OnsendPing = (fun st -> Mkstate49?.y1 st + 1);
  state50OnreceivePong = (fun _ _ -> ());
  state51OnsendPing = (fun st -> Mkstate51?.y2 st + 1);
  state52OnreceivePong = (fun _ _ -> ());
  state53OnsendPing = (fun st -> Mkstate53?.y3 st + 1);
  state54OnreceivePong = (fun _ _ -> ());
  state55OnsendPing = (fun st -> Mkstate55?.y4 st + 1);
  state56OnreceivePong = (fun _ _ -> ());
  state57OnsendPing = (fun st -> Mkstate57?.y5 st + 1);
  state58OnreceivePong = (fun _ _ -> ());
  state59OnsendPing = (fun st -> Mkstate59?.y6 st + 1);
  state60OnreceivePong = (fun _ _ -> ());
  state61OnsendPing = (fun st -> Mkstate61?.y7 st + 1);
  state62OnreceivePong = (fun _ _ -> ());
  state63OnsendPing = (fun st -> Mkstate63?.y8 st + 1);
  state64OnreceivePong = (fun _ _ -> ());
  state65OnsendPing = (fun st -> Mkstate65?.y9 st + 1);
  state66OnreceivePong = (fun _ _ -> ());
  state67OnsendPing = (fun st -> Mkstate67?.y10 st + 1);
  state68OnreceivePong = (fun _ _ -> ());
  state69OnsendPing = (fun st -> Mkstate69?.y11 st + 1);
  state70OnreceivePong = (fun _ _ -> ());
  state71OnsendPing = (fun st -> Mkstate71?.y12 st + 1);
  state72OnreceivePong = (fun _ _ -> ());
  state73OnsendPing = (fun st -> Mkstate73?.y13 st + 1);
  state74OnreceivePong = (fun _ _ -> ());
  state75OnsendPing = (fun st -> Mkstate75?.y14 st + 1);
  state76OnreceivePong = (fun _ _ -> ());
  state77OnsendPing = (fun st -> Mkstate77?.y15 st + 1);
  state78OnreceivePong = (fun _ _ -> ());
  state79OnsendPing = (fun st -> Mkstate79?.y16 st + 1);
  state80OnreceivePong = (fun _ _ -> ());
  state81OnsendPing = (fun st -> Mkstate81?.y17 st + 1);
  state82OnreceivePong = (fun _ _ -> ());
  state83OnsendPing = (fun st -> Mkstate83?.y18 st + 1);
  state84OnreceivePong = (fun _ _ -> ());
  state85OnreceiveBye = (fun _ -> ());
}
