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

  (*state42OnreceiveYes : (st: state42) -> (_dummy: unit) -> ML (unit);*)
  state42OnreceiveYes = (fun _ _ -> FStar.IO.print_string "S: Received Yes.\n");

  (*state42OnreceiveNo : (st: state42) -> (_dummy: unit) -> ML (unit);*)
  state42OnreceiveNo = (fun _ _ -> FStar.IO.print_string "S: Received No.\n");

  (*state42OnreceiveDummy : (st: state42) -> (_dummy: unit) -> ML (unit);*)
  state42OnreceiveDummy = (fun _ _ -> ());

  (*state44OnreceivePayment : (st: state44) -> (payment: string) -> ML (unit);*)
  state44OnreceivePayment = (fun _ p ->
    FStar.IO.print_string "S: Received Payment: ";
    FStar.IO.print_string p;
    FStar.IO.print_string "\n"
  );

  (*state45OnsendAck : (st: state45) -> ML (unit);*)
  state45OnsendAck = (fun _ -> ())
}

