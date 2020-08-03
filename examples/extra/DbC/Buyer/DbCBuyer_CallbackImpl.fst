module DbCBuyer_CallbackImpl

open GeneratedDbCBuyer
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let foo : ref (x:int{x>=100}) = alloc 101

let callbacks : callbacksBuyer = {

  (*state7OnsendOffer : (st: state7) -> ML (vo:int{((vo) >= (100))});*)
  state7OnsendOffer = (fun _ ->
    let curr = !foo in
    FStar.IO.print_string "Buyer: Sending: ";
    print_int curr;
    FStar.IO.print_string "\n";
    curr
  );

  (*state9OnreceiveOk : (st: state9) -> (_dummy: unit) -> ML (unit);*)
  state9OnreceiveOk = (fun _ _ -> ());

  (*state9OnreceiveHag : (st: state9) -> (_dummy: unit{((Mkstate9?.vo st) > reveal ((Mkstate9?.pvo st)))}) -> ML (unit);*)
  state9OnreceiveHag = (fun st _ ->
    let curr = (Mkstate9?.vo st) in
    (*(foo := if curr > 105 then curr + 1 else curr);  (* Relies on vo >= 100 *) -- CHECKME: syntax *)
    (if curr < 105 then foo := curr + 1 else ());
    ()
  );

  (*state10OnsendCheck : (st: state10) -> ML (unit);*)
  state10OnsendCheck = (fun _ -> ());

  (*state11OnsendPayment : (st: state11) -> ML (vp:int{((Mkstate11?.vo st) = (vp))});*)
  state11OnsendPayment = (fun st -> (Mkstate11?.vo st));
}
