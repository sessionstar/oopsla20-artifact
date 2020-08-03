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
let prev : ref int = alloc 9999

let callbacks : callbacksC = {

  (*state9Onsend : (st: state9) -> ML (state9Choice st);*)
  state9Onsend = (fun _ -> 
    let c = !count in
    if !prev < 100 then
      Choice9Yes ()
    else if c < 4 then (
      count := c + 1;
      Choice9Query (string_of_int c))
    else
      Choice9No ()
  );

  (*state11OnreceiveQuote : (st: state11) -> (quot: int) -> ML (unit);*)
  state11OnreceiveQuote = (fun _ q ->
    prev := q;
    FStar.IO.print_string "C: Received quote: ";
    print_int q;
    FStar.IO.print_string "\n"
  );

  (*state12OnsendPayment : (st: state12) -> ML (string);*)
  state12OnsendPayment = (fun _ -> "payment");

  (*state13OnreceiveAck : (st: state13) -> (_dummy: unit) -> ML (unit);*)
  state13OnreceiveAck = (fun _ _ -> ());

  (*state14OnsendBye : (st: state14) -> ML (unit);*)
  state14OnsendBye = (fun _ -> ());

  (*state15OnsendBye : (st: state15) -> ML (unit);*)
  state15OnsendBye = (fun _ -> ())
}
