module TicketS_CallbackImpl

open GeneratedTicketS
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksS = {

  (*state5OnreceiveOffer : (st: state5) -> (x: int{((x) >= (0)) && (reveal ((Mkstate5?.creditC st)) >= (x))}) -> ML (unit);*)
  state5OnreceiveOffer = (fun st _ ->
    FStar.IO.print_string "S: credit=";
    print_int (Mkstate5?.creditS st);
    FStar.IO.print_string " count=";
    print_int (Mkstate5?.count st);
    FStar.IO.print_string "\n"
  );

  (*state7Onsend : (st: state7) -> ML (state7Choice st);*)
  state7Onsend = (fun st ->
    let count = (Mkstate7?.count st) in
    if count < 1000 then Choice7Ok count else Choice7Ko ()
  )
}
