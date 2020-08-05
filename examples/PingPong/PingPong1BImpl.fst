module PingPong1BImpl
open GeneratedPingPong1B
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state17OnreceiveBye = (fun _ -> ());
  state17OnreceivePing = (fun _ _ -> ());
  state19OnsendPong = (fun st -> Mkstate19?.x0 st + 1);
  state20OnsendBye = (fun _ -> ());
}
