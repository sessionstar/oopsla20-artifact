module AdderS_CallbackImpl

open GeneratedAdderS
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100  inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksS = {
  (*state23OnreceiveHELLO : (st: state23) -> (u: int) -> ML (unit);*)
  state23OnreceiveHELLO = (fun _ _ -> ());

  (*state25OnreceiveBYE : (st: state25) -> (_dummy: unit) -> ML (unit);*)
  state25OnreceiveBYE = (fun _ _ -> ());

  (*state25OnreceiveADD : (st: state25) -> (w: int) -> ML (unit);*)
  state25OnreceiveADD = (fun _ _ -> ());

  (*state26OnreceiveADD : (st: state26) -> (v: int) -> ML (unit);*)
  state26OnreceiveADD = (fun _ _ -> ());

  (*state27OnsendRES : (st: state27) -> ML (f:int{((f) = ((Mkstate27?.w st) + (Mkstate27?.v st)))});*)
  state27OnsendRES = (fun st -> (Mkstate27?.w st) + (Mkstate27?.v st));

  (*state28OnsendBYE : (st: state28) -> ML (unit);*)
  state28OnsendBYE = (fun _ -> ());
}
