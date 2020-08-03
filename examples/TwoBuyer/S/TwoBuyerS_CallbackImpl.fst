module TwoBuyerS_CallbackImpl

open GeneratedTwoBuyerS
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksS = {

  (*state35OnreceiveBookId : (st: state35) -> (id: int) -> ML (unit);*)
  state35OnreceiveBookId = (fun _ id ->
    FStar.IO.print_string "S: Received id: ";
    print_int id;
    FStar.IO.print_string "\n"
  );

  (*state37OnsendQuoteA : (st: state37) -> ML (x:int{((x) >= (0))});*)
  state37OnsendQuoteA = (fun _ -> 100);

  (*state38OnsendQuoteB : (st: state38) -> ML (y:int{((Mkstate38?.x st) = (y))});*)
  state38OnsendQuoteB = (fun st -> (Mkstate38?.x st));

  (*state39OnreceiveBuy : (st: state39) -> (_dummy: unit) -> ML (unit);*)
  state39OnreceiveBuy = (fun _ _ -> FStar.IO.print_string "S: Received Buy\n");

  (*state39OnreceiveCancel : (st: state39) -> (_dummy: unit) -> ML (unit);*)
  state39OnreceiveCancel = (fun _ _ -> FStar.IO.print_string "S: Received Cancel\n")
}
