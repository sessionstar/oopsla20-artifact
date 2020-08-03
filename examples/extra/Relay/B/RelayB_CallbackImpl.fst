module RelayB_CallbackImpl

open GeneratedRelayB
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksB = {

  (*state14OnreceiveHello : (st: state14) -> (x: int{((x) > (0))}) -> ML (unit);*)
  state14OnreceiveHello = (fun _ _ -> ());

  (*(*state16OnsendRelay : (st: state16) -> ML (y:int{((Mkstate16?.x st) = (y))});*)
  state16OnsendRelay = (fun st -> (Mkstate16?.x st))*)

  (*state16OnsendRelay : (st: state16) -> ML (y:int{((y) > (Mkstate16?.x st))});*)
  state16OnsendRelay = (fun st -> (Mkstate16?.x st)+1)  (*CHECKME: int max?*)
}
