module OAuthS_CallbackImpl

open GeneratedOAuthS
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i


(* FIXME
GeneratedOAuthS.fst(74,31-74,32): (Error 54) Prims.int is not a subtype of the e
xpected type Prims.string
1 error was reported (see above)
*)


let callbacks : callbacksS = {

  (*state26OnsendLogin : (st: state26) -> ML (string);*)
  state26OnsendLogin = (fun st -> "doubledoubledouble.redir.com")

  (*state28OnreceiveAuthed : (st: state28) -> (tokenresp: string) -> ML (unit);*)  (*FIXME: string in gen api*)
  state28OnreceiveAuthed = (fun _ tokenresp ->
    FStar.IO.print_string "S: Authed: ";
    print_int tokenresp;
    FStar.IO.print_string "\n"
  );

  (*state28OnreceiveNot_authed : (st: state28) -> (_dummy: unit) -> ML (unit);*)
  state28OnreceiveNot_authed = (fun _ _ -> FStar.IO.print_string "Seller: Not Authed.\n");

  (*state29OnsendRequest_resource_token : (st: state29) -> ML (authtoken:string{((authtoken) = (Mkstate29?.tokenresp st))});*)
  state29OnsendRequest_resource_token = (fun st -> (Mkstate29?.tokenresp st))

  (*state30OnreceiveResource_token : (st: state30) -> (restoken: string) -> ML (unit);*)
  state30OnreceiveResource_token = (fun _ restoken ->
    FStar.IO.print_string "S: Resource token: ";
    FStar.IO.print_string restoken;
    FStar.IO.print_string "\n"
  )
}
