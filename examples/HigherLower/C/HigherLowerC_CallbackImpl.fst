module HigherLowerC_CallbackImpl

open GeneratedHigherLowerC
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let next : ref (x:int{0 <= x && x < 100}) = alloc 50

let callbacks : callbacksC = {

  (*state70OnsendGuess : (st: state70) -> ML (x:int{((0) <= (x)) && ((x) < (100))});*)
  state70OnsendGuess = (fun _ ->
    let next = !next in
    FStar.IO.print_string "C: Guessing: ";
    print_int next;
    FStar.IO.print_string "\n";
    next
  );

  (*state72OnreceiveWin : (st: state72) -> (_dummy: unit{(reveal ((Mkstate72?.n st)) = (Mkstate72?.x st))}) -> ML (unit);*)
  state72OnreceiveWin = (fun _  _ -> FStar.IO.print_string "Win!\n");

  (*state72OnreceiveLose : (st: state72) -> (_dummy: unit{((reveal ((Mkstate72?.n st)) < (Mkstate72?.x st)) || (reveal ((Mkstate72?.n st)) > (Mkstate72?.x st))) && (reveal ((Mkstate72?.t st)) = (1))}) -> ML (unit);*)
  state72OnreceiveLose = (fun _ _ -> FStar.IO.print_string "Lose.\n");

  (*state72OnreceiveHigher : (st: state72) -> (_dummy: unit{(reveal ((Mkstate72?.n st)) > (Mkstate72?.x st)) && (reveal ((Mkstate72?.t st)) > (1))}) -> ML (unit);*)
  state72OnreceiveHigher = (fun st _ -> next := (Mkstate72?.x st) + 1);  (*x<n && n<100 => x+1<100 ...*)
  (*state72OnreceiveHigher = (fun st _ -> next := !next + 1);  (*... cf.^*)*)

  (*state72OnreceiveLower : (st: state72) -> (_dummy: unit{(reveal ((Mkstate72?.n st)) < (Mkstate72?.x st)) && (reveal ((Mkstate72?.t st)) > (1))}) -> ML (unit);*)
  state72OnreceiveLower = (fun st _ -> next := (Mkstate72?.x st) - 1)
}
