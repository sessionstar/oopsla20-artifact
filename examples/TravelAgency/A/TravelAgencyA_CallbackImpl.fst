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

let recvQuery = (fun _ q ->
    FStar.IO.print_string "A: Received Query:";
    print_int q;
    FStar.IO.print_string "A: \n"
  )

let sendQuote = (fun _ ->
    let n = !next in
    next := n - 1;
    n
  )

let callbacks : callbacksA = {

  (*state83OnreceiveNo : (st: state83) -> (_dummy: unit) -> ML (unit);*)
  state83OnreceiveNo = (fun _ _ -> FStar.IO.print_string "A: Received No:\n");

  (*state83OnreceiveYes : (st: state83) -> (_dummy: unit) -> ML (unit);*)
  state83OnreceiveYes = (fun _ _ -> FStar.IO.print_string "A: Received Yes:\n");

  (*state80OnreceiveQuery : (st: state80) -> (x: int) -> ML (unit);*)
  state80OnreceiveQuery = recvQuery;

  (*state83OnreceiveQuery : (st: state83) -> (y: int) -> ML (unit);*)
  state83OnreceiveQuery = recvQuery;

  (*state82OnsendQuote : (st: state82) -> ML (int);*)
  state82OnsendQuote = sendQuote;

  (*state84OnsendQuote : (st: state84) -> ML (int);*)
  state84OnsendQuote = sendQuote;

  (*state85OnsendDummy : (st: state85) -> ML (unit);*)
  state85OnsendDummy = (fun _ -> ());

  (*state86OnsendYes : (st: state86) -> ML (unit);*)
  state86OnsendYes = (fun _ -> ());

  (*state87OnreceiveBye : (st: state87) -> (_dummy: unit) -> ML (unit);*)
  state87OnreceiveBye = (fun _ _ -> ());

  (*state88OnsendNo : (st: state88) -> ML (unit);*)
  state88OnsendNo = (fun _ -> ());

  (*state89OnreceiveBye : (st: state89) -> (_dummy: unit) -> ML (unit);*)
  state89OnreceiveBye = (fun _ _ -> ())
}

