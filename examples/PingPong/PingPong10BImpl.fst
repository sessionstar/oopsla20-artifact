module PingPong10BImpl
open GeneratedPingPong10B
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state71OnreceiveBye = (fun _ -> ());
  state71OnreceivePing = (fun _ _ -> ());
  state73OnsendPong = (fun st -> Mkstate73?.x0 st + 1);
  state74OnreceivePing = (fun _ _ -> ());
  state75OnsendPong = (fun st -> Mkstate75?.x1 st + 1);
  state76OnreceivePing = (fun _ _ -> ());
  state77OnsendPong = (fun st -> Mkstate77?.x2 st + 1);
  state78OnreceivePing = (fun _ _ -> ());
  state79OnsendPong = (fun st -> Mkstate79?.x3 st + 1);
  state80OnreceivePing = (fun _ _ -> ());
  state81OnsendPong = (fun st -> Mkstate81?.x4 st + 1);
  state82OnreceivePing = (fun _ _ -> ());
  state83OnsendPong = (fun st -> Mkstate83?.x5 st + 1);
  state84OnreceivePing = (fun _ _ -> ());
  state85OnsendPong = (fun st -> Mkstate85?.x6 st + 1);
  state86OnreceivePing = (fun _ _ -> ());
  state87OnsendPong = (fun st -> Mkstate87?.x7 st + 1);
  state88OnreceivePing = (fun _ _ -> ());
  state89OnsendPong = (fun st -> Mkstate89?.x8 st + 1);
  state90OnreceivePing = (fun _ _ -> ());
  state91OnsendPong = (fun st -> Mkstate91?.x9 st + 1);
  state92OnsendBye = (fun _ -> ());
}
