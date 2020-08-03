module TwoBuyerA_CallbackImpl

open GeneratedTwoBuyerA
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksA = {

  (*state9OnsendBookId : (st: state9) -> ML (int);*)
  state9OnsendBookId = (fun _ -> 42);

  (*state11OnreceiveQuoteA : (st: state11) -> (x: int{((x) >= (0))}) -> ML (unit);*)
  state11OnreceiveQuoteA = (fun _ _ -> ());

  (*state12OnsendProposeA : (st: state12) -> ML (a:int{((a) >= (0)) && ((a) <= (Mkstate12?.x st))});*)
  state12OnsendProposeA = (fun st ->
    let q = (Mkstate12?.x st) in if q = 0 then 0 else (q/2 + 1)
  );

  (*state13OnreceiveNo : (st: state13) -> (_dummy: unit) -> ML (unit);*)
  state13OnreceiveNo = (fun _ _ -> FStar.IO.print_string "A: Received No\n");

  (*state13OnreceiveOk : (st: state13) -> (b: int{((b) = (reveal ((Mkstate13?.y st)) - (Mkstate13?.a st))) && ((b) <= (Mkstate13?.a st))}) -> ML (unit);*)
  state13OnreceiveOk = (fun _ _ -> FStar.IO.print_string "A: Received OK\n");

  (*state14OnsendBuy : (st: state14) -> ML (unit);*)
  state14OnsendBuy = (fun _ -> ());

  (*state15OnsendCancel : (st: state15) -> ML (unit);*)
  state15OnsendCancel = (fun _ -> ())
}
