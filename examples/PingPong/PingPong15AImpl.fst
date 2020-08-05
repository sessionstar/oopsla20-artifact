module PingPong15AImpl
open GeneratedPingPong15A
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state34Onsend = (fun _ -> if !it < count then (it := !it + 1; Choice34Ping ((!it-1) * 15)) else Choice34Bye ());
  state36OnreceivePong = (fun _ _ -> ());
  state37OnsendPing = (fun st -> Mkstate37?.y0 st + 1);
  state38OnreceivePong = (fun _ _ -> ());
  state39OnsendPing = (fun st -> Mkstate39?.y1 st + 1);
  state40OnreceivePong = (fun _ _ -> ());
  state41OnsendPing = (fun st -> Mkstate41?.y2 st + 1);
  state42OnreceivePong = (fun _ _ -> ());
  state43OnsendPing = (fun st -> Mkstate43?.y3 st + 1);
  state44OnreceivePong = (fun _ _ -> ());
  state45OnsendPing = (fun st -> Mkstate45?.y4 st + 1);
  state46OnreceivePong = (fun _ _ -> ());
  state47OnsendPing = (fun st -> Mkstate47?.y5 st + 1);
  state48OnreceivePong = (fun _ _ -> ());
  state49OnsendPing = (fun st -> Mkstate49?.y6 st + 1);
  state50OnreceivePong = (fun _ _ -> ());
  state51OnsendPing = (fun st -> Mkstate51?.y7 st + 1);
  state52OnreceivePong = (fun _ _ -> ());
  state53OnsendPing = (fun st -> Mkstate53?.y8 st + 1);
  state54OnreceivePong = (fun _ _ -> ());
  state55OnsendPing = (fun st -> Mkstate55?.y9 st + 1);
  state56OnreceivePong = (fun _ _ -> ());
  state57OnsendPing = (fun st -> Mkstate57?.y10 st + 1);
  state58OnreceivePong = (fun _ _ -> ());
  state59OnsendPing = (fun st -> Mkstate59?.y11 st + 1);
  state60OnreceivePong = (fun _ _ -> ());
  state61OnsendPing = (fun st -> Mkstate61?.y12 st + 1);
  state62OnreceivePong = (fun _ _ -> ());
  state63OnsendPing = (fun st -> Mkstate63?.y13 st + 1);
  state64OnreceivePong = (fun _ _ -> ());
  state65OnreceiveBye = (fun _ -> ());
}
