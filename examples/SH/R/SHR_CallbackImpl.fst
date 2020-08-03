module SHR_CallbackImpl

open GeneratedSHR
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksR = {

  (*state51OnreceivePlane : (st: state51) -> (x1: int) -> ML (unit);*)
  state51OnreceivePlane = (fun _ x1 ->
    FStar.IO.print_string "R: Received: x1=";
    print_int x1;
    FStar.IO.print_string "\n"
  );

  (*state53OnreceivePlane2 : (st: state53) -> (x2: int) -> ML (unit);*)
  state53OnreceivePlane2 = (fun _ x2 ->
    FStar.IO.print_string "R: Received: x2=";
    print_int x2;
    FStar.IO.print_string "\n"
  );

  (*state54OnreceivePlane3 : (st: state54) -> (x3: int) -> ML (unit);*)
  state54OnreceivePlane3 = (fun _ x3 ->
    FStar.IO.print_string "R: Received: x3=";
    print_int x3;
    FStar.IO.print_string "\n"
  );

  (*state55OnreceivePlane4 : (st: state55) -> (x4: int) -> ML (unit);*)
  state55OnreceivePlane4 = (fun _ x4 ->
    FStar.IO.print_string "R: Received: x4=";
    print_int x4;
    FStar.IO.print_string "\n"
  );

  (*state56OnreceiveIsAbove : (st: state56) -> (v1: int) -> ML (unit);*)
  state56OnreceiveIsAbove = (fun _ v1 ->
    FStar.IO.print_string "R: Received: v1=";
    print_int v1;
    FStar.IO.print_string "\n"
  );

  (*state56OnreceiveClose : (st: state56) -> (_dummy: unit) -> ML (unit);*)
  state56OnreceiveClose = (fun _ v1 -> FStar.IO.print_string "R: Received Close.\n");

  (*state57OnsendRes : (st: state57) -> ML (b1:int{(((b1) = (0)) || ((b1) = (1)))});*)
  state57OnsendRes = (fun _ -> 0);  (*TODO*)

  (*state58OnreceiveIsAbove : (st: state58) -> (v2: int) -> ML (unit);*)
  state58OnreceiveIsAbove = (fun _ v2 ->
    FStar.IO.print_string "R: Received: v2=";
    print_int v2;
    FStar.IO.print_string "\n"
  );

  (*state59OnsendRes : (st: state59) -> ML (b2:int{(((b2) = (0)) || ((b2) = (1)))});*)
  state59OnsendRes = (fun _ -> 1);  (*TODO*)

  (*state60OnreceiveIntersct : (st: state60) -> (y1: int{((((Mkstate60?.b1 st) = (1)) && ((Mkstate60?.b2 st) = (0))) || (((Mkstate60?.b1 st) = (0)) && ((Mkstate60?.b2 st) = (1)))) && ((y1) = (Mkstate60?.v1 st))}) -> ML (unit);*)
  state60OnreceiveIntersct = (fun _ y1 ->
    FStar.IO.print_string "R: Received: y1=";
    print_int y1;
    FStar.IO.print_string "\n"
  );

  (*state60OnreceiveBothIn : (st: state60) -> (_dummy: unit{((Mkstate60?.b1 st) = (1)) && ((Mkstate60?.b2 st) = (1))}) -> ML (unit);*)
  state60OnreceiveBothIn = (fun _ _ -> FStar.IO.print_string "R: Received BothIn.\n");


  (*state60OnreceiveBothOut : (st: state60) -> (_dummy: unit{((Mkstate60?.b1 st) = (0)) && ((Mkstate60?.b2 st) = (0))}) -> ML (unit);*)
  state60OnreceiveBothOut = (fun _ _ -> FStar.IO.print_string "R: Received BothOut.\n");

  (*state61OnreceiveIntersct2 : (st: state61) -> (y2: int{((y2) = (Mkstate61?.v2 st))}) -> ML (unit);*)
  state61OnreceiveIntersct2 = (fun _ y2 ->
    FStar.IO.print_string "R: Received: y2=";
    print_int y2;
    FStar.IO.print_string "\n"
  );

  (*state62OnsendRes : (st: state62) -> ML (int);*)
  state62OnsendRes = (fun _ -> 1234)
}
