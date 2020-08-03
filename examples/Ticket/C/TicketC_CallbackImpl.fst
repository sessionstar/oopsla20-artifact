module TicketC_CallbackImpl

open GeneratedTicketC
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i


let callbacks : callbacksC = {

  (*state14OnsendOffer : (st: state14) -> ML (x:int{((x) >= (0)) && ((Mkstate14?.creditC st) >= (x))});*)
  state14OnsendOffer = (fun st ->
    let credit = (Mkstate14?.creditC st) in
    FStar.IO.print_string "C: Credit :";
    print_int credit;
    FStar.IO.print_string "\n";
    if credit > 0 then 1 else 0
  );

  (*state16OnreceiveOk : (st: state16) -> (y: int{(reveal ((Mkstate16?.count st)) < (1000)) && ((y) = reveal ((Mkstate16?.count st)))}) -> ML (unit);*)
  state16OnreceiveOk = (fun _ _ -> ());

  (*state16OnreceiveKo : (st: state16) -> (_dummy: unit) -> ML (unit);*)
  state16OnreceiveKo = (fun _ _ -> ())
}
