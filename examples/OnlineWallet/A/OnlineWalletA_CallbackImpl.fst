module OnlineWalletA_CallbackImpl

open GeneratedOnlineWalletA
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksA = {

  (*state92OnreceiveLogin : (st: state92) -> (id: String) -> ML (unit);*)
  state92OnreceiveLogin = (fun _ _ -> ());

  (*state94OnreceivePassword : (st: state94) -> (pw: String) -> ML (unit);*)
  state94OnreceivePassword = (fun _ _ -> ());

  (*state95Onsend : (st: state95) -> ML (state95Choice st);*)
  state95Onsend = (fun _ ->
    if true then (* TODO *)
      Choice95Login_ok ()
    else
      //Choice95Login_fail "Bad login."
      Choice95Login_fail (-1)
  );

  (*state96OnsendLogin_ok : (st: state96) -> ML (unit);*)
  state96OnsendLogin_ok = (fun _ -> ());

  (*state97OnreceivePay_auth : (st: state97) -> (_dummy: unit) -> ML (unit);*)
  state97OnreceivePay_auth = (fun _ _ -> ());

  (*state97OnreceiveQuit : (st: state97) -> (_dummy: unit) -> ML (unit);*)
  state97OnreceiveQuit = (fun _ _ -> ());

  (*state98OnsendLogin_fail : (st: state98) -> ML (unit);*)
  state98OnsendLogin_fail = (fun _ -> ())
}
