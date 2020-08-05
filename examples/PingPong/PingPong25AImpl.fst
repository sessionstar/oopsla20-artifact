module PingPong25AImpl
open GeneratedPingPong25A
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state54Onsend = (fun _ -> if !it < count then (it := !it + 1; Choice54Ping ((!it-1) * 25)) else Choice54Bye ());
  state56OnreceivePong = (fun _ _ -> ());
  state57OnsendPing = (fun st -> Mkstate57?.y0 st + 1);
  state58OnreceivePong = (fun _ _ -> ());
  state59OnsendPing = (fun st -> Mkstate59?.y1 st + 1);
  state60OnreceivePong = (fun _ _ -> ());
  state61OnsendPing = (fun st -> Mkstate61?.y2 st + 1);
  state62OnreceivePong = (fun _ _ -> ());
  state63OnsendPing = (fun st -> Mkstate63?.y3 st + 1);
  state64OnreceivePong = (fun _ _ -> ());
  state65OnsendPing = (fun st -> Mkstate65?.y4 st + 1);
  state66OnreceivePong = (fun _ _ -> ());
  state67OnsendPing = (fun st -> Mkstate67?.y5 st + 1);
  state68OnreceivePong = (fun _ _ -> ());
  state69OnsendPing = (fun st -> Mkstate69?.y6 st + 1);
  state70OnreceivePong = (fun _ _ -> ());
  state71OnsendPing = (fun st -> Mkstate71?.y7 st + 1);
  state72OnreceivePong = (fun _ _ -> ());
  state73OnsendPing = (fun st -> Mkstate73?.y8 st + 1);
  state74OnreceivePong = (fun _ _ -> ());
  state75OnsendPing = (fun st -> Mkstate75?.y9 st + 1);
  state76OnreceivePong = (fun _ _ -> ());
  state77OnsendPing = (fun st -> Mkstate77?.y10 st + 1);
  state78OnreceivePong = (fun _ _ -> ());
  state79OnsendPing = (fun st -> Mkstate79?.y11 st + 1);
  state80OnreceivePong = (fun _ _ -> ());
  state81OnsendPing = (fun st -> Mkstate81?.y12 st + 1);
  state82OnreceivePong = (fun _ _ -> ());
  state83OnsendPing = (fun st -> Mkstate83?.y13 st + 1);
  state84OnreceivePong = (fun _ _ -> ());
  state85OnsendPing = (fun st -> Mkstate85?.y14 st + 1);
  state86OnreceivePong = (fun _ _ -> ());
  state87OnsendPing = (fun st -> Mkstate87?.y15 st + 1);
  state88OnreceivePong = (fun _ _ -> ());
  state89OnsendPing = (fun st -> Mkstate89?.y16 st + 1);
  state90OnreceivePong = (fun _ _ -> ());
  state91OnsendPing = (fun st -> Mkstate91?.y17 st + 1);
  state92OnreceivePong = (fun _ _ -> ());
  state93OnsendPing = (fun st -> Mkstate93?.y18 st + 1);
  state94OnreceivePong = (fun _ _ -> ());
  state95OnsendPing = (fun st -> Mkstate95?.y19 st + 1);
  state96OnreceivePong = (fun _ _ -> ());
  state97OnsendPing = (fun st -> Mkstate97?.y20 st + 1);
  state98OnreceivePong = (fun _ _ -> ());
  state99OnsendPing = (fun st -> Mkstate99?.y21 st + 1);
  state100OnreceivePong = (fun _ _ -> ());
  state101OnsendPing = (fun st -> Mkstate101?.y22 st + 1);
  state102OnreceivePong = (fun _ _ -> ());
  state103OnsendPing = (fun st -> Mkstate103?.y23 st + 1);
  state104OnreceivePong = (fun _ _ -> ());
  state105OnreceiveBye = (fun _ -> ());
}
