module CalcS_CallbackImpl

open GeneratedCalcS
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksS = {

  (*state7OnreceiveSum1 : (st: state7) -> (x1: int) -> ML (unit);*)
  state7OnreceiveSum1 = (fun _ x1 ->
    FStar.IO.print_string "S: Received Sum: x1=";
    print_int x1;
    FStar.IO.print_string "\n"
  );

  (*state7OnreceiveQuit : (st: state7) -> (_dummy: unit) -> ML (unit);*)
  state7OnreceiveQuit = (fun _ x1 -> FStar.IO.print_string "S: Received Quit.");

  (*state9OnreceiveSum2 : (st: state9) -> (y1: int) -> ML (unit);*)
  state9OnreceiveSum2 = (fun _ y1 ->
    FStar.IO.print_string "S: Received Sum: y1=";
    print_int y1;
    FStar.IO.print_string "\n"
  );

  (*state10OnsendResult : (st: state10) -> ML (r1:int{((r1) = ((Mkstate10?.x1 st) + (Mkstate10?.y1 st)))});*)
  state10OnsendResult = (fun st -> (Mkstate10?.x1 st) + (Mkstate10?.y1 st));

  (*state11OnsendTerminate : (st: state11) -> ML (unit);*)
  state11OnsendTerminate = (fun _ -> ())
}

