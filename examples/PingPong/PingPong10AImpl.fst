module PingPong10AImpl
open GeneratedPingPong10A
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state24Onsend = (fun _ -> if !it < count then (it := !it + 1; Choice24Ping ((!it-1) * 10)) else Choice24Bye ());
  state26OnreceivePong = (fun _ _ -> ());
  state27OnsendPing = (fun st -> Mkstate27?.y0 st + 1);
  state28OnreceivePong = (fun _ _ -> ());
  state29OnsendPing = (fun st -> Mkstate29?.y1 st + 1);
  state30OnreceivePong = (fun _ _ -> ());
  state31OnsendPing = (fun st -> Mkstate31?.y2 st + 1);
  state32OnreceivePong = (fun _ _ -> ());
  state33OnsendPing = (fun st -> Mkstate33?.y3 st + 1);
  state34OnreceivePong = (fun _ _ -> ());
  state35OnsendPing = (fun st -> Mkstate35?.y4 st + 1);
  state36OnreceivePong = (fun _ _ -> ());
  state37OnsendPing = (fun st -> Mkstate37?.y5 st + 1);
  state38OnreceivePong = (fun _ _ -> ());
  state39OnsendPing = (fun st -> Mkstate39?.y6 st + 1);
  state40OnreceivePong = (fun _ _ -> ());
  state41OnsendPing = (fun st -> Mkstate41?.y7 st + 1);
  state42OnreceivePong = (fun _ _ -> ());
  state43OnsendPing = (fun st -> Mkstate43?.y8 st + 1);
  state44OnreceivePong = (fun _ _ -> ());
  state45OnreceiveBye = (fun _ -> ());
}
