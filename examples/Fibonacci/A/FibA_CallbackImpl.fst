module FibA_CallbackImpl

open GeneratedFibA
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksA = {

    (*state6OnsendNum1 : (st: state6) -> ML (x1:int{((x1) = (Mkstate6?.x st))});*)
    state6Onsend = (fun st ->
        let x = (Mkstate6?.x st) in
        if x < 1000 then Choice6Num1 x else Choice6Bye ()
  );

  (*state8OnsendNum2 : (st: state8) -> ML (y1:int{((y1) = (Mkstate8?.y st))});*)
  state8OnsendNum2 = (fun st -> (Mkstate8?.y st));

  (*state9OnreceiveNum3 : (st: state9) -> (z1: int{((z1) = ((Mkstate9?.x1 st) + (Mkstate9?.y1 st)))}) -> ML (unit);*)
  state9OnreceiveNum3 = (fun _ z1 ->
    FStar.IO.print_string "A: Received: ";
    print_int z1;
    FStar.IO.print_string "\n";
    ()
  )
}
