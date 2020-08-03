module OAuthU_CallbackImpl

open GeneratedOAuthU
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

(*CHECKME: pass args to callbacks, e.g., user+pw*)
let callbacks : callbacksU = {

  (*state10OnreceiveLogin : (st: state10) -> (redir: string) -> ML (unit);*)
  state10OnreceiveLogin = (fun _ _ -> ());

  (*state12OnsendCredential : (st: state12) -> ML (int);*)
  state12OnsendCredential = (fun _ -> 1234);

  (*state13OnsendPw : (st: state13) -> ML (string);*)
  state13OnsendPw = (fun _ -> "password");

  (*state14OnsendRe : (st: state14) -> ML (redirresp:string{((Mkstate14?.redir st) = (redirresp))});*)
  state14OnsendRe = (fun st -> (Mkstate14?.redir st));

  (*state15OnreceiveNot_authed : (st: state15) -> (_dummy: unit) -> ML (unit);*)
  state15OnreceiveNot_authed = (fun _ _ -> FStar.IO.print_string "U: Not authed.\n");

  (*state15OnreceiveAuthed : (st: state15) -> (token: string) -> ML (unit);*)
  state15OnreceiveAuthed = (fun _ token -> 
   FStar.IO.print_string "U: Authed: ";
   FStar.IO.print_string token
  );

  (*state16OnsendAuthed : (st: state16) -> ML (tokenresp:string{((Mkstate16?.token st) = (tokenresp))});*)
  state16OnsendAuthed = (fun st -> (Mkstate16?.token st));

  (*state17OnsendNot_authed : (st: state17) -> ML (unit);*)
  state17OnsendNot_authed = (fun _ -> ())
}
