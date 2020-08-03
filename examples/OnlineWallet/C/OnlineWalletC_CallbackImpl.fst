module OnlineWalletC_CallbackImpl

open GeneratedOnlineWalletC
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*) (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksC = {

  (*state70OnsendLogin : (st: state70) -> ML (string);*)
  //state70OnsendLogin = (fun _ -> "login");
  state70OnsendLogin = (fun _ -> 1234);

  (*state72OnsendPassword : (st: state72) -> ML (string);*)
  //state72OnsendPassword = (fun _ -> "password");
  state72OnsendPassword = (fun _ -> 5678);

  (*state73OnreceiveLogin_ok : (st: state73) -> (_dummy: unit) -> ML (unit);*)
  state73OnreceiveLogin_ok = (fun _ _ -> FStar.IO.print_string "C: Login OK.");

  (*state73OnreceiveLogin_fail : (st: state73) -> (error: string) -> ML (unit);*)
  state73OnreceiveLogin_fail = (fun _ error ->
    FStar.IO.print_string "C: Login failed: ";
    //FStar.IO.print_string error;
    print_int error;
    FStar.IO.print_string "\n"
  );

  (*state74OnreceiveAccount : (st: state74) -> (balance: int{((balance) >= (0))}) -> ML (unit);*)
  state74OnreceiveAccount = (fun _ _ -> ());

  (*state75OnreceiveOv : (st: state75) -> (overdraft: int{((overdraft) >= (0))}) -> ML (unit);*)
  state75OnreceiveOv = (fun _ _ -> ());

  (*state76Onsend : (st: state76) -> ML (state76Choice st);*)
  state76Onsend = (fun st ->
    let a = (Mkstate76?.allowance st) in
    if a >= 10 then
      (FStar.IO.print_string "C: Pay: 10\n";
      Choice76Pay 10)  (* 10 <= allowance *)
      (*Choice76Pay 11*)
    else
      Choice76Quit ()
  );

  (*state77OnsendPayee : (st: state77) -> ML (string);*)
  //state77OnsendPayee = (fun _ -> "foo");
  state77OnsendPayee = (fun _ -> 999);

  (*state78OnsendPay_auth : (st: state78) -> ML (unit);*)
  state78OnsendPay_auth = (fun _ -> ());

  (*state79OnreceiveAccount : (st: state79) -> (newbalance: int{((newbalance) = (reveal ((Mkstate79?.balance1 st)) - (Mkstate79?.amount st)))}) -> ML (unit);*)
  state79OnreceiveAccount = (fun _ newbalance -> 
    FStar.IO.print_string "C: newbalance: ";
    print_int newbalance;
    FStar.IO.print_string "\n"
  );

  (*state80OnreceiveAccount : (st: state80) -> (newoverdraft: int{((newoverdraft) = reveal ((Mkstate80?.overdraft1 st)))}) -> ML (unit);*)
  state80OnreceiveAccount = (fun _ _ -> ());

  (*state81OnsendQuit : (st: state81) -> ML (unit);*)
  state81OnsendQuit = (fun _ -> ());
}
