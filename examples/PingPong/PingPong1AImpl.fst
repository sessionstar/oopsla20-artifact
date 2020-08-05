module PingPong1AImpl
open GeneratedPingPong1A
open FStar.Ref
open FStar.Mul
let mk_callbacks (count: pos) =
  let it = alloc 0 in {
  state6Onsend = (fun _ -> if !it < count then (it := !it + 1; Choice6Ping ((!it-1) * 1)) else Choice6Bye ());
  state8OnreceivePong = (fun _ _ -> ());
  state9OnreceiveBye = (fun _ -> ());
}
