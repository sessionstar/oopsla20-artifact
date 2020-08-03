module SHP_CallbackImpl

open GeneratedSHP
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let count : ref int = alloc 0

let callbacks : callbacksP = {

  (*state19OnsendPlane : (st: state19) -> ML (int);*)
  state19OnsendPlane = (fun _ -> 1);

  (*state21OnsendPlane2 : (st: state21) -> ML (int);*)
  state21OnsendPlane2 = (fun _ -> 2);

  (*state22OnsendPlane3 : (st: state22) -> ML (int);*)
  state22OnsendPlane3 = (fun _ -> 3);

  (*state23OnsendPlane4 : (st: state23) -> ML (int);*)
  state23OnsendPlane4 = (fun _ -> 4);

  (*state24Onsend : (st: state24) -> ML (state24Choice st);*)
  state24Onsend = (fun _ ->
    let c = !count in
    if c < 4 then (
      count := c+1;
      Choice24IsAbove 5)
    else
      Choice24Close ()
  );

  (*state25OnreceiveRes : (st: state25) -> (b1: int{(((b1) = (0)) || ((b1) = (1)))}) -> ML (unit);*)
  state25OnreceiveRes = (fun _ b1 -> 
    FStar.IO.print_string "P: Received Res: b1=";
    print_int b1;
    FStar.IO.print_string "\n"
  );

  (*state26OnsendIsAbove : (st: state26) -> ML (int);*)
  state26OnsendIsAbove = (fun _ -> 6);

  (*state27OnreceiveRes : (st: state27) -> (b2: int{(((b2) = (0)) || ((b2) = (1)))}) -> ML (unit);*)
  state27OnreceiveRes = (fun _ b2 ->
    FStar.IO.print_string "P: Received Res: b2=";
    print_int b2;
    FStar.IO.print_string "\n"
  );

  (*state28Onsend : (st: state28) -> ML (state28Choice st);*)
  state28Onsend = (fun st ->
    let b1 = (Mkstate28?.b1 st) in
    let b2 = (Mkstate28?.b2 st) in
    if b1=1 && b2=1 then
      Choice28BothIn ()
    else if b1=0 && b2=0 then
      Choice28BothOut ()
    else
      Choice28Intersct (Mkstate28?.v1 st)
  );

  (*state29OnsendBothIn : (st: state29) -> ML (int);*)
  state29OnsendBothIn = (fun _ -> 7);

  (*state30OnsendBothOut : (st: state30) -> ML (unit);*)
  state30OnsendBothOut = (fun _ -> ());

  (*state31OnsendIntersct2 : (st: state31) -> ML (y2:int{((y2) = (Mkstate31?.v2 st))});*)
  state31OnsendIntersct2 = (fun st -> (Mkstate31?.v2 st));

  (*state32OnreceiveRes : (st: state32) -> (i: int) -> ML (unit);*)
  state32OnreceiveRes = (fun _ i -> 
    FStar.IO.print_string "P: Received Res: i=";
    print_int i;
    FStar.IO.print_string "\n"
  );

  (*state33Onsend : (st: state33) -> ML (state33Choice st);*)
  state33Onsend = (fun st ->
    let b2 = (Mkstate33?.b2 st) in
    if b2=0 then
      Choice33SecOut (Mkstate33?.i st)
    else
      Choice33SecIn (Mkstate33?.i st)
  );

  (*state34OnsendSecIn2 : (st: state34) -> ML (r4:int{((r4) = (Mkstate34?.v2 st))});*)
  state34OnsendSecIn2 = (fun st -> (Mkstate34?.v2 st));

  (*state35OnsendClose : (st: state35) -> ML (unit);*)
  state35OnsendClose = (fun _ -> ())
}
