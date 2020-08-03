module SHC_CallbackImpl

open GeneratedSHC
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksC = {

  (*state69OnreceiveSecIn : (st: state69) -> (r3: int) -> ML (unit);*)
  state69OnreceiveSecIn = (fun _ r3 ->
    FStar.IO.print_string "C: Received SecIn: r=";
    print_int r3;
    FStar.IO.print_string "\n"
  );

  (*state69OnreceiveClose : (st: state69) -> (_dummy: unit) -> ML (unit);*)
  state69OnreceiveClose = (fun _ _ -> FStar.IO.print_string "C: Received Close.\n");

  (*state69OnreceiveBothIn : (st: state69) -> (r1: int) -> ML (unit);*)
  state69OnreceiveBothIn = (fun _ r1 ->
    FStar.IO.print_string "C: Received BothIn: r=";
    print_int r1;
    FStar.IO.print_string "\n"
  );

  (*state69OnreceiveBothOut : (st: state69) -> (_dummy: unit) -> ML (unit);*)
  state69OnreceiveBothOut = (fun _ _ -> FStar.IO.print_string "C: Received BothOut.\n");

  (*state69OnreceiveSecOut : (st: state69) -> (r2: int) -> ML (unit);*)
  state69OnreceiveSecOut = (fun _ r2 ->
    FStar.IO.print_string "C: Received BothIn: r=";
    print_int r2;
    FStar.IO.print_string "\n"
  );

  (*state71OnreceiveSecIn2 : (st: state71) -> (r4: int{((r4) = reveal ((Mkstate71?.v2 st)))}) -> ML (unit);*)
  state71OnreceiveSecIn2 = (fun _ r4 ->
    FStar.IO.print_string "C: Received SecIn: r4=";
    print_int r4;
    FStar.IO.print_string "\n"
  )
}
