module FibB_CallbackImpl

open GeneratedFibB
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksB = {

    (*state17OnreceiveNum1 : (st: state17) -> (x1: int{((x1) = (Mkstate17?.x st))}) -> ML (unit);*)
    state17OnreceiveNum1 = (fun _ _ -> ());

    (*state19OnreceiveNum2 : (st: state19) -> (y1: int{((y1) = (Mkstate19?.y st))}) -> ML (unit);*)
    state19OnreceiveNum2 = (fun _ _ -> ());

    (*state20OnsendNum3 : (st: state20) -> ML (z1:int{((z1) = ((Mkstate20?.x1 st) + (Mkstate20?.y1 st)))});*)
    //state20OnsendNum3 = (fun st -> (Mkstate20?.x1 st) + (Mkstate20?.y1 st))
    state20OnsendNum3 = (fun st -> (Mkstate20?.x1 st) + (Mkstate20?.y1 st));

    (*state17OnreceiveBye : (st: state17) -> (_dummy: unit) -> ML (unit)*)
    state17OnreceiveBye = (fun _ _ -> ())
}
