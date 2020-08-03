module OnlineWalletS_CallbackImpl

open GeneratedOnlineWalletS
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

//let balance : ref int = alloc 100
let overdraft : int = 50

let callbacks : callbacksS = {

  (*state47OnreceiveLogin_ok : (st: state47) -> (_dummy: unit) -> ML (unit);*)
  state47OnreceiveLogin_ok = (fun _ _ -> ());

  (*state47OnreceiveLogin_fail : (st: state47) -> (_dummy: unit) -> ML (unit);*)
  state47OnreceiveLogin_fail = (fun _ _ -> ());

  (*state49OnsendAccount : (st: state49) -> ML (balance:int{((balance) >= (0))});*)
  state49OnsendAccount = (fun _ -> 100);  // initial -- and then maintained as statevar

  (*state50OnsendOv : (st: state50) -> ML (overdraft:int{((overdraft) >= (0))});*)
  state50OnsendOv = (fun _ -> overdraft);

  (*state51OnreceivePay : (st: state51) -> (amount: int{((amount) <= reveal ((Mkstate51?.allowance st)))}) -> ML (unit);*)
  state51OnreceivePay = (fun _ amount -> 
    (*balance := !balance - amount*)  (*redundant, cf. statevar*)
    ()
  );

  (*state51OnreceiveQuit : (st: state51) -> (_dummy: unit) -> ML (unit);*)
  state51OnreceiveQuit = (fun _ _ -> ());

  (*state52OnreceivePayee : (st: state52) -> (payee: string) -> ML (unit);*)
  state52OnreceivePayee = (fun _ _ -> ());

  (*state53OnsendAccount : (st: state53) -> ML (newbalance:int{((newbalance) = ((Mkstate53?.balance1 st) - (Mkstate53?.amount st)))});*)
  state53OnsendAccount = (fun st -> (Mkstate53?.balance1 st) - (Mkstate53?.amount st));

  (*state54OnsendAccount : (st: state54) -> ML (newoverdraft:int{((newoverdraft) = (Mkstate54?.overdraft1 st))});*)
  state54OnsendAccount = (fun st -> (Mkstate54?.overdraft1 st))
}

