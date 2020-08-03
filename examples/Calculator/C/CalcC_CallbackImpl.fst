module CalcC_CallbackImpl

open GeneratedCalcC
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let x : ref int = alloc 0
let y : ref int = alloc 1

let callbacks : callbacksC = {

  (*state20Onsend : (st: state20) -> ML (state20Choice st);*)
  state20Onsend = (fun _ ->
    let x = !x in
    if x < 1000 then
      Choice20Sum1 x
    else
      Choice20Quit ()
  );

  (*state22OnsendSum2 : (st: state22) -> ML (int);*)
  state22OnsendSum2 = (fun _ -> 
    let y = !y in
    x := y;
    y
  );

  (*state23OnreceiveResult : (st: state23) -> (r1: int{((r1) = ((Mkstate23?.x1 st) + (Mkstate23?.y1 st)))}) -> ML (unit);*)
  state23OnreceiveResult = (fun _ r1 ->
    FStar.IO.print_string "C: Received: r1=";
    print_int r1;
    FStar.IO.print_string "\n";
    y := r1
  );

  (*state24OnreceiveTerminate : (st: state24) -> (_dummy: unit) -> ML (unit);*)
  state24OnreceiveTerminate = (fun _ _ -> ())
}

