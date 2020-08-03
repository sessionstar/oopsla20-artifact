module HigherLowerB_CallbackImpl

open GeneratedHigherLowerB
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksB = {

  (*state55OnreceiveStart : (st: state55) -> (n0: int{((0) <= (n0)) && ((n0) < (100))}) -> ML (unit);*)
  state55OnreceiveStart = (fun _ _ -> ());

  (*state57OnreceiveLimit : (st: state57) -> (t0: int{((0) < (t0))}) -> ML (unit);*)
  state57OnreceiveLimit = (fun _ _ -> ());

  (*state58OnreceiveGuess : (st: state58) -> (x: int{((0) <= (x)) && ((x) < (100))}) -> ML (unit);*)
  state58OnreceiveGuess = (fun _ _ -> ());

  (*state59Onsend : (st: state59) -> ML (state59Choice st);*)
  state59Onsend = (fun st ->
    let n = (Mkstate59?.n st) in
    let x = (Mkstate59?.x st) in
    let t = (Mkstate59?.t st) in
    if n = x then
      Choice59Win ()
    else if t = 1 then
      Choice59Lose ()
    else if n > x then
      Choice59Higher ()
    else
      Choice59Lower ()
  );

  (*state60OnsendHigher : (st: state60) -> ML (unit);*)
  (*state60OnsendHigher = fun _ -> ();  (*CHECKME: why is this one not a syntax error? but type error*)*)
  state60OnsendHigher = (fun _ -> ());

  (*state61OnsendLose : (st: state61) -> ML (unit);*)
  state61OnsendLose = (fun _ -> ());

  (*state62OnsendLower : (st: state62) -> ML (unit);*)
  state62OnsendLower = (fun _ -> ());

  (*state63OnsendWin : (st: state63) -> ML (unit);*)
  state63OnsendWin = (fun _ -> ())
}
