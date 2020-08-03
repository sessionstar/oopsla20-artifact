module RelayC_CallbackImpl

open GeneratedRelayC
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksC = {

  (*state23OnreceiveRelay : (st: state23) -> (y: int) -> ML (unit);*)
  state23OnreceiveRelay = (fun _ _ -> ());

  (*(*state25OnsendRelay : (st: state25) -> ML (z:int{((z) = reveal ((Mkstate25?.x st)))});*)
  state25OnsendRelay = (fun st -> (Mkstate25?.y st))  (* y=x => z=x *)*)

  (*state25OnsendRelay : (st: state25) -> ML (z:int{((z) > reveal ((Mkstate25?.x st)))});*)
  state25OnsendRelay = (fun st -> (Mkstate25?.y st)+1)  (* y>x => z>x -- CHECKME: int max?*)
}
