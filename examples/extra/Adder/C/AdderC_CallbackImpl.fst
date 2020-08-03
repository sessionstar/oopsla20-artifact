module AdderC_CallbackImpl

open GeneratedAdderC
open FStar.Mul
open FStar.All

val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let x: ref int = alloc 0
let y: ref int = alloc 1

let callbacks : callbacksC = {

  (*state8OnsendHELLO : (st: state8) -> ML (int);*)
  state8OnsendHELLO = (fun _ -> 123);

  (*state10Onsend : (st: state10) -> ML (state10Choice st);*)
  state10Onsend = (fun _ -> 
    (*let x = random () in
    print_int x;  // CHECKME: "s1" ?
    if x > 50 then Choice10ADD x else Choice10BYE ()*)
    if !y < 1000 then
      Choice10ADD !x
    else (
      FStar.IO.print_string "\n";
      Choice10BYE ()
    )
  );

  (*state11OnsendADD : (st: state11) -> ML (int);*)
  state11OnsendADD = (fun _ ->
    x := !y;
    !y
  );

  (*state12OnreceiveRES : (st: state12) -> (f: int{((f) = ((Mkstate12?.w st) + (Mkstate12?.v st)))}) -> ML (unit);*)
  state12OnreceiveRES = (fun _ f ->
    print_int f;
    FStar.IO.print_string " ";
    y := f
  );

  (*state13OnreceiveBYE : (st: state13) -> (_dummy: unit) -> ML (unit);*)
  state13OnreceiveBYE = (fun _ _ -> ());

}
