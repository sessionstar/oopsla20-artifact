module TravelAgencyA_CallbackImpl

open GeneratedBookingA
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let next : ref int = alloc 101

let callbacks : callbacksA = {

  (*state27OnreceiveNo : (st: state27) -> (_dummy: unit) -> ML (unit);*)
  state27OnreceiveNo = (fun _ _ -> FStar.IO.print_string "A: Received No:\n");

  (*state27OnreceiveYes : (st: state27) -> (_dummy: unit) -> ML (unit);*)
  state27OnreceiveYes = (fun _ _ -> FStar.IO.print_string "A: Received Yes:\n");

  (*state27OnreceiveQuery : (st: state27) -> (query: string) -> ML (unit);*)
  state27OnreceiveQuery = (fun _ q ->
    FStar.IO.print_string "A: Received Query:";
    FStar.IO.print_string q;
    FStar.IO.print_string "A: \n"
  );

  (*state29OnsendQuote : (st: state29) -> ML (int);*)
  state29OnsendQuote = (fun _ ->
    let n = !next in
    next := n - 1;
    n
  );

  (*state30OnsendDummy : (st: state30) -> ML (unit);*)
  state30OnsendDummy = (fun _ -> ());

  (*state31OnsendYes : (st: state31) -> ML (unit);*)
  state31OnsendYes = (fun _ -> ());

  (*state32OnreceiveBye : (st: state32) -> (_dummy: unit) -> ML (unit);*)
  state32OnreceiveBye = (fun _ _ -> ());

  (*state33OnsendNo : (st: state33) -> ML (unit);*)
  state33OnsendNo = (fun _ -> ());

  (*state34OnreceiveBye : (st: state34) -> (_dummy: unit) -> ML (unit);*)
  state34OnreceiveBye = (fun _ _ -> ())
}
