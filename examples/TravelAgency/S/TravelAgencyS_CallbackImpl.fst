module TravelAgencyS_CallbackImpl

open GeneratedBookingS
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksS = {

  (*state97OnreceiveYes : (st: state97) -> (_dummy: unit) -> ML (unit);*)
  state97OnreceiveYes = (fun _ _ -> FStar.IO.print_string "S: Received Yes.\n");

  (*state97OnreceiveNo : (st: state97) -> (_dummy: unit) -> ML (unit);*)
  state97OnreceiveNo = (fun _ _ -> FStar.IO.print_string "S: Received No.\n");

  (*state97OnreceiveDummy : (st: state97) -> (_dummy: unit) -> ML (unit);*)
  state97OnreceiveDummy = (fun _ _ -> ());

  (*state99OnreceivePayment : (st: state99) -> (pay: int{((pay) = reveal ((Mkstate99?.q st)))}) -> ML (unit);*)
  state99OnreceivePayment = (fun _ p ->
    FStar.IO.print_string "S: Received Payment: ";
    print_int p;
    FStar.IO.print_string "\n"
  );

  (*state100OnsendAck : (st: state100) -> ML (unit);*)
  state100OnsendAck = (fun _ -> ())
}

