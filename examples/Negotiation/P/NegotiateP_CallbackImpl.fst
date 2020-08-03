module NegotiateP_CallbackImpl

open GeneratedNegotiateP
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let next : ref int = alloc 70

let callbacks : callbacksP = {

  (*state49OnreceivePropose : (st: state49) -> (initialPrice: int) -> ML (unit);*)
  state49OnreceivePropose = (fun _ p ->
    FStar.IO.print_string "P: Received initial propose: ";
    print_int p;
    FStar.IO.print_string "\n"
  );

  (*state51Onsend : (st: state51) -> ML (state51Choice st);*)
  state51Onsend = (fun st ->
    (*let prop = (Mkstate51?.prop st) in*)
    let prop = (Mkstate51?.propP st) in
    let n = !next in
    if prop<90 || prop=n then
      Choice51Accpt (prop)
    else (
      next := n + 1;
      Choice51Counter (n)
    )
    (*Didn't use Choice51Reject *)
  );

  (*state52OnreceiveConfirm : (st: state52) -> (_dummy: unit) -> ML (unit);*)
  state52OnreceiveConfirm = (fun _ p -> FStar.IO.print_string "P: Received Confirm.\n");

  (*state53OnreceiveAccpt : (st: state53) -> (confirmedPrice2: int{((Mkstate53?.counterOfferPrice st) = (confirmedPrice2))}) -> ML (unit);*)
  state53OnreceiveAccpt = (fun _ _ -> FStar.IO.print_string "P: Received Accept.\n");

  (*state53OnreceiveCounter : (st: state53) -> (countercounter: int{(((countercounter) < (Mkstate53?.counterOfferPrice st)) || ((countercounter) > (Mkstate53?.counterOfferPrice st))) && (((countercounter) < (Mkstate53?.prop st)) || ((countercounter) > (Mkstate53?.prop st)))}) -> ML (unit);*)
  state53OnreceiveCounter = (fun _ p ->
    FStar.IO.print_string "P: Received counter counter: ";
    print_int p;
    FStar.IO.print_string "\n"
  );

  (*state53OnreceiveReject : (st: state53) -> (_dummy: unit) -> ML (unit);*)
  state53OnreceiveReject = (fun _ _ -> FStar.IO.print_string "P: Received Reject.\n");

  (*state54OnsendConfirm : (st: state54) -> ML (unit);*)
  state54OnsendConfirm = (fun _ -> ())
}

