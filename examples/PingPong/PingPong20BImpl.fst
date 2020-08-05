module PingPong20BImpl
open GeneratedPingPong20B
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state131OnreceiveBye = (fun _ -> ());
  state131OnreceivePing = (fun _ _ -> ());
  state133OnsendPong = (fun st -> Mkstate133?.x0 st + 1);
  state134OnreceivePing = (fun _ _ -> ());
  state135OnsendPong = (fun st -> Mkstate135?.x1 st + 1);
  state136OnreceivePing = (fun _ _ -> ());
  state137OnsendPong = (fun st -> Mkstate137?.x2 st + 1);
  state138OnreceivePing = (fun _ _ -> ());
  state139OnsendPong = (fun st -> Mkstate139?.x3 st + 1);
  state140OnreceivePing = (fun _ _ -> ());
  state141OnsendPong = (fun st -> Mkstate141?.x4 st + 1);
  state142OnreceivePing = (fun _ _ -> ());
  state143OnsendPong = (fun st -> Mkstate143?.x5 st + 1);
  state144OnreceivePing = (fun _ _ -> ());
  state145OnsendPong = (fun st -> Mkstate145?.x6 st + 1);
  state146OnreceivePing = (fun _ _ -> ());
  state147OnsendPong = (fun st -> Mkstate147?.x7 st + 1);
  state148OnreceivePing = (fun _ _ -> ());
  state149OnsendPong = (fun st -> Mkstate149?.x8 st + 1);
  state150OnreceivePing = (fun _ _ -> ());
  state151OnsendPong = (fun st -> Mkstate151?.x9 st + 1);
  state152OnreceivePing = (fun _ _ -> ());
  state153OnsendPong = (fun st -> Mkstate153?.x10 st + 1);
  state154OnreceivePing = (fun _ _ -> ());
  state155OnsendPong = (fun st -> Mkstate155?.x11 st + 1);
  state156OnreceivePing = (fun _ _ -> ());
  state157OnsendPong = (fun st -> Mkstate157?.x12 st + 1);
  state158OnreceivePing = (fun _ _ -> ());
  state159OnsendPong = (fun st -> Mkstate159?.x13 st + 1);
  state160OnreceivePing = (fun _ _ -> ());
  state161OnsendPong = (fun st -> Mkstate161?.x14 st + 1);
  state162OnreceivePing = (fun _ _ -> ());
  state163OnsendPong = (fun st -> Mkstate163?.x15 st + 1);
  state164OnreceivePing = (fun _ _ -> ());
  state165OnsendPong = (fun st -> Mkstate165?.x16 st + 1);
  state166OnreceivePing = (fun _ _ -> ());
  state167OnsendPong = (fun st -> Mkstate167?.x17 st + 1);
  state168OnreceivePing = (fun _ _ -> ());
  state169OnsendPong = (fun st -> Mkstate169?.x18 st + 1);
  state170OnreceivePing = (fun _ _ -> ());
  state171OnsendPong = (fun st -> Mkstate171?.x19 st + 1);
  state172OnsendBye = (fun _ -> ());
}
