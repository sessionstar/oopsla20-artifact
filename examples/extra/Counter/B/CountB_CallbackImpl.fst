module CountB_CallbackImpl

open GeneratedCountB
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksB = {

  (*state14OnreceiveSucc : (st: state14) -> (x: int{((x) = (reveal ((Mkstate14?.c st)) + (1)))}) -> ML (unit);*)
  state14OnreceiveSucc = (fun _ x ->
    FStar.IO.print_string "Received: ";
    print_int x;
    FStar.IO.print_string "\n"
  );

  (*state16OnsendSuccSucc : (st: state16) -> ML (y:int{((y) = ((Mkstate16?.x st) + (1)))});*)
  state16OnsendSuccSucc = (fun st -> (Mkstate16?.x st) + 1)
}
