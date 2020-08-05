module PingPong5BImpl
open GeneratedPingPong5B
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state41OnreceiveBye = (fun _ -> ());
  state41OnreceivePing = (fun _ _ -> ());
  state43OnsendPong = (fun st -> Mkstate43?.x0 st + 1);
  state44OnreceivePing = (fun _ _ -> ());
  state45OnsendPong = (fun st -> Mkstate45?.x1 st + 1);
  state46OnreceivePing = (fun _ _ -> ());
  state47OnsendPong = (fun st -> Mkstate47?.x2 st + 1);
  state48OnreceivePing = (fun _ _ -> ());
  state49OnsendPong = (fun st -> Mkstate49?.x3 st + 1);
  state50OnreceivePing = (fun _ _ -> ());
  state51OnsendPong = (fun st -> Mkstate51?.x4 st + 1);
  state52OnsendBye = (fun _ -> ());
}
