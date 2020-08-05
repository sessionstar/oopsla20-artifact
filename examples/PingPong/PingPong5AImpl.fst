module PingPong5AImpl
open GeneratedPingPong5A
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state14Onsend = (fun _ -> if !it < count then (it := !it + 1; Choice14Ping ((!it-1) * 5)) else Choice14Bye ());
  state16OnreceivePong = (fun _ _ -> ());
  state17OnsendPing = (fun st -> Mkstate17?.y0 st + 1);
  state18OnreceivePong = (fun _ _ -> ());
  state19OnsendPing = (fun st -> Mkstate19?.y1 st + 1);
  state20OnreceivePong = (fun _ _ -> ());
  state21OnsendPing = (fun st -> Mkstate21?.y2 st + 1);
  state22OnreceivePong = (fun _ _ -> ());
  state23OnsendPing = (fun st -> Mkstate23?.y3 st + 1);
  state24OnreceivePong = (fun _ _ -> ());
  state25OnreceiveBye = (fun _ -> ());
}
