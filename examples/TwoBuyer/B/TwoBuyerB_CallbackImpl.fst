module TwoBuyerB_CallbackImpl

open GeneratedTwoBuyerB
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksB = {

  (*state23OnreceiveQuoteB : (st: state23) -> (y: int) -> ML (unit);*)
  state23OnreceiveQuoteB = (fun _ _ -> ());

  (*state25OnreceiveProposeA : (st: state25) -> (a: int{((a) >= (0)) && ((a) <= reveal ((Mkstate25?.x st)))}) -> ML (unit);*)
  state25OnreceiveProposeA = (fun _ a ->
    FStar.IO.print_string "B: Received proposal: ";
    print_int a;
    FStar.IO.print_string "\n"
  );

  (*state26Onsend : (st: state26) -> ML (state26Choice st);*)
  state26Onsend = (fun st ->
    let y = (Mkstate26?.y st) in
    let a = (Mkstate26?.a st) in
    let b = y - a in
    if b<50 && b<a then Choice26Ok (b) else Choice26No ()
  )
}
