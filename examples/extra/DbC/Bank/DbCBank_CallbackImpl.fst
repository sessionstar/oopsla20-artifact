module DbCBank_CallbackImpl

open GeneratedDbCBank
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksBank = {

  (*state29OnreceivePayment : (st: state29) -> (vp: int) -> ML (unit);*)
  state29OnreceivePayment = (fun _ vp ->
    FStar.IO.print_string "Bank: Received Payment: ";
    print_int vp;
    FStar.IO.print_string "\n"
  );

  (*state29OnreceiveCheck : (st: state29) -> (_dummy: unit) -> ML (unit);*)
  state29OnreceiveCheck = (fun _ _ -> FStar.IO.print_string "Bank: Received Check:\n");

  (*state31OnsendAck : (st: state31) -> ML (va:int{(((va) = (1)) || ((va) = (0)))});*)
  state31OnsendAck = (fun _ -> 1)
}
