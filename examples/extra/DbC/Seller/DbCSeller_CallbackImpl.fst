module DbCSeller_CallbackImpl

open GeneratedDbCSeller
open FStar.Mul
open FStar.All

(*val random : unit -> ML int
let random () = Random.int (100l) |> FStar.Int32.v*)  (* 0..100 inclusive *)

let print_int (i:int) =
  let i = string_of_int i in
  FStar.IO.print_string i

let callbacks : callbacksSeller = {

  (*state19OnreceiveOffer : (st: state19) -> (vo: int{((vo) >= (100))}) -> ML (unit);*)
  state19OnreceiveOffer = (fun _ vo ->
    FStar.IO.print_string "Seller: Received: ";
    print_int vo;
    FStar.IO.print_string "\n"
  );

  (*state21Onsend : (st: state21) -> ML (state21Choice st);*)
  state21Onsend = (fun st ->
  if (Mkstate21?.vo st) > (Mkstate21?.pvo st) then
    Choice21Hag ()
  else
    Choice21Ok ()
  );

  (*state22OnreceiveAck : (st: state22) -> (va: int{(((va) = (1)) || ((va) = (0)))}) -> ML (unit);*)
  state22OnreceiveAck = (fun _ _ -> ())
}
