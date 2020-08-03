module OAuthA_CallbackImpl

open GeneratedOAuthA
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksA = {

  (*state41OnreceiveCredential : (st: state41) -> (userid: int) -> ML (unit);*)
  state41OnreceiveCredential = (fun _ _ -> ());

  (*state43OnreceivePw : (st: state43) -> (password: string) -> ML (unit);*)  (*FIXME: string in gen api*)
  state43OnreceivePw = (fun _ _ -> ());

  (*state44OnreceiveRe : (st: state44) -> (redirresp: string{(reveal ((Mkstate44?.redir st)) = (redirresp))}) -> ML (unit);*)
  state44OnreceiveRe = (fun _ _ -> ());

  (*state45Onsend : (st: state45) -> ML (state45Choice st);*)
  state45Onsend = (fun _ ->
    let uid = (Mkstate45?.redir userid) in
    let pw = (Mkstate45?.redir password) in
    if true then  (* TODO *)
      Choice45Authed "auth token"
    else
      Choice45Not_authed ()
  );

  (*state46OnreceiveRequest_resource_token : (st: state46) -> (authtoken: string) -> ML (unit);*)
  state46OnreceiveRequest_resource_token = (fun _ _ -> ());

  (*state47OnsendResource_token : (st: state47) -> ML (string);*)
  state47OnsendResource_token = (fun _ _ -> "resource token")
}
