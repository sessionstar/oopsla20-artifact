module RelayA_CallbackImpl

open GeneratedRelayA
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksA = {

  (*state5OnsendHello : (st: state5) -> ML (x:int{((x) > (0))});*)
  state5OnsendHello = (fun _ -> 42);

  (*state7OnreceiveRelay : (st: state7) -> (z: int{((z) = (Mkstate7?.x st))}) -> ML (unit);*)
  state7OnreceiveRelay = (fun _ z ->
    FStar.IO.print_string "A: Received: ";
    print_int z;
    FStar.IO.print_string "\n"
  )
}
