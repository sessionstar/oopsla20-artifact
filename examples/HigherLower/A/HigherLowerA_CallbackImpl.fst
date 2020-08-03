module HigherLowerA_CallbackImpl

open GeneratedHigherLowerA
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksA = {

  (*state39OnsendStart : (st: state39) -> ML (n0:int{((0) <= (n0)) && ((n0) < (100))});*)
  state39OnsendStart = (fun _ ->
    let n0 = 42 in
    FStar.IO.print_string "A: Sending n0: ";
    print_int n0;
    FStar.IO.print_string "\n";
    n0
  );

  (*state41OnsendLimit : (st: state41) -> ML (t0:int{((0) < (t0))});*)
  state41OnsendLimit = (fun _ ->
    let t0 = 5 in
    FStar.IO.print_string "A: Sending t0: ";
    print_int t0;
    FStar.IO.print_string "\n";
    t0
  );

  (*state42OnreceiveHigher : (st: state42) -> (_dummy: unit{(reveal ((Mkstate42?.t st)) > (1))}) -> ML (unit);*)
  state42OnreceiveHigher = (fun _ _ -> ());  (* CHECKME: phantom statevar knowledge avail? n, t*)

  (*state42OnreceiveLower : (st: state42) -> (_dummy: unit{(reveal ((Mkstate42?.t st)) > (1))}) -> ML (unit);*)
  state42OnreceiveLower = (fun _ _ -> ());

  (*state42OnreceiveLose : (st: state42) -> (_dummy: unit) -> ML (unit);*)
  state42OnreceiveLose = (fun _ _ -> FStar.IO.print_string "Lose.\n");

  (*state42OnreceiveWin : (st: state42) -> (_dummy: unit{(reveal ((Mkstate42?.t st)) = (1))}) -> ML (unit);*)
  state42OnreceiveWin = (fun _ _ -> FStar.IO.print_string "Win!\n")
}
