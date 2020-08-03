module CountA_CallbackImpl

open GeneratedCountA
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksA = {

  (*state5OnsendSucc : (st: state5) -> ML (x:int{((x) = ((Mkstate5?.c st) + (1)))});*)
  state5OnsendSucc = (fun st -> ((Mkstate5?.c st) + (1)));

  (*state7OnreceiveSuccSucc : (st: state7) -> (y: int{((y) = ((Mkstate7?.x st) + (1)))}) -> ML (unit);*)
  state7OnreceiveSuccSucc = (fun _ y ->
    FStar.IO.print_string "Received: ";
    print_int y;
    FStar.IO.print_string "\n"
  )
}
