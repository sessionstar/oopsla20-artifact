module TravelAgencyC_CallbackImpl

open GeneratedBookingC
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let count : ref (c:int{1<=c&&c<=4}) = alloc 1

let recvQuote = (fun _ q ->
    FStar.IO.print_string "C: Received quote: ";
    print_int q;
    FStar.IO.print_string "\n"
  )

let callbacks : callbacksC = {

  (*state61Onsend : (st: state61) -> ML (state61Choice st);*)
  state61Onsend = (fun st -> 
    let c = !count in
    if (Mkstate61?.q st) < 100 then
      Choice61Yes ()
    else if c < 4 then (
      count := c + 1;
      Choice61Query 42)
    else
      Choice61No ()
  );

  (*state58OnsendQuery : (st: state58) -> ML (int);*)
  state58OnsendQuery = (fun _ -> 42);

  (*state60OnreceiveQuote : (st: state60) -> (quot: int) -> ML (unit);*)
  state60OnreceiveQuote = recvQuote;

  (*state62OnreceiveQuote : (st: state62) -> (q1: int) -> ML (unit);*)
  state62OnreceiveQuote = recvQuote;

  (*state63OnsendPayment : (st: state63) -> ML (pay:int{((pay) = (Mkstate63?.q st))});*)
  state63OnsendPayment = (fun st -> (Mkstate63?.q st));

  (*state64OnreceiveAck : (st: state64) -> (_dummy: unit) -> ML (unit);*)
  state64OnreceiveAck = (fun _ _ -> ());

  (*state65OnsendBye : (st: state65) -> ML (unit);*)
  state65OnsendBye = (fun _ -> ());

  (*state66OnsendBye : (st: state66) -> ML (unit);*)
  state66OnsendBye = (fun _ -> ())
}

