module NegotiateC_CallbackImpl

open GeneratedNegotiateC
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksC = {

  (*state34OnsendPropose : (st: state34) -> ML (int);*)
  state34OnsendPropose = (fun _ -> 100);

  (*state36OnreceiveCounter : (st: state36) -> (counterOfferPrice: int{(((counterOfferPrice) < (Mkstate36?.prop st)) || ((counterOfferPrice) > (Mkstate36?.prop st)))}) -> ML (unit);*)
  state36OnreceiveCounter = (fun _ c ->
    FStar.IO.print_string "C: Received Counter: counter=";
    print_int c;
    FStar.IO.print_string "\n"
  );

  (*state36OnreceiveAccpt : (st: state36) -> (confirmedPrice1: int{((Mkstate36?.prop st) = (confirmedPrice1))}) -> ML (unit);*)
  state36OnreceiveAccpt = (fun _ c ->
    FStar.IO.print_string "C: Received Accpt: ";
    print_int c;
    FStar.IO.print_string "\n"
  );

  (*state36OnreceiveReject : (st: state36) -> (_dummy: unit) -> ML (unit);*)
  state36OnreceiveReject = (fun _ _ -> FStar.IO.print_string "C: Received Reject: ");

  (*state37OnsendConfirm : (st: state37) -> ML (unit);*)
  state37OnsendConfirm = (fun _ -> ());

  (*state38Onsend : (st: state38) -> ML (state38Choice st);*)
  state38Onsend = (fun st ->
    (*let prop = (Mkstate38?.prop st) in*)
    let prop = (Mkstate38?.propC st) in
    let counter = (Mkstate38?.counterOfferPrice st) in
    if counter > 80 || counter = prop-1 then
      Choice38Accpt (counter)
    else
      Choice38Counter (prop-1)  (*n.b. countercounter != prop && countercounter != counter*)
    (*Didn't use Choice38Reject *)
  );

  (*state39OnreceiveConfirm : (st: state39) -> (_dummy: unit) -> ML (unit);*)
  state39OnreceiveConfirm = (fun _ _ -> ())

}
