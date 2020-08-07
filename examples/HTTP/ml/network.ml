open GeneratedHttpS
open Unix

let split request =
  let curr = Buffer.create 1024 in
  let acc = ref [] in
  let cr = ref false in
  let until_eol = ref false in
  let skip_space = ref false in
  let f = function
    | ' ' ->
        if !skip_space then skip_space := false else (
        if !until_eol
        then
        Buffer.add_char curr ' '
        else
        (acc := Buffer.contents curr :: !acc;
        Buffer.clear curr))
    | ':' ->
        if !until_eol then Buffer.add_char curr ':' else (
        acc := Buffer.contents curr :: !acc;
        Buffer.clear curr;
        until_eol := true;
        skip_space := true)
    | '\r' ->
        cr := true
    | '\n' ->
        if !cr then
        (acc := Buffer.contents curr :: !acc;
        cr := false;
        until_eol := false;
        Buffer.clear curr)
        else
        Buffer.add_char curr '\n'
    | ch ->
        if !cr then
        (Buffer.add_char curr '\r';
        cr := false);
        Buffer.add_char curr ch
  in
  String.iter f request;
  List.rev !acc

let listen port : (unit -> connection * (unit -> unit)) =
  let socket = socket PF_INET SOCK_STREAM 0 in
  setsockopt socket SO_REUSEADDR true ;
  bind socket (ADDR_INET (inet_addr_of_string "0.0.0.0", port)) ;
  listen socket 10;
  let f () =
    let client, _ = accept socket in
    let send s = send_substring client s 0 (String.length s) [] |> ignore in
    let send_string _ s = send s in
    let send_int _ i = send (Z.to_string i) in
    let send_unit _ _ = send "" in
    let send_label _ l = match l with
      | Version -> ()
      | Status -> send " "
      | Reason -> send " "
      | HeaderName -> send "\r\n"
      | HeaderValue -> send ": "
      | Body -> send "\r\n\r\n"
      | _ -> assert false
    in
    let buffer = Bytes.create 4096 in
    let recvlen = recv client buffer 0 4096 [] in
    let request = Bytes.sub_string buffer 0 recvlen in
    let request = ref (split request) in
    let label_cnt = ref 0 in
    let take () =
      match !request with
      | [] -> assert false
      | hd :: tl -> request := tl; hd
    in
    let recv_int _ () = 
      let i = take () in Z.of_string i in
    let recv_string _ () =
      take () in
    let recv_unit _ () =
      () in
    let recv_label _ () =
      match !label_cnt with
      | 0 -> label_cnt := 1; Method
      | 1 -> label_cnt := 2; Target
      | 2 -> label_cnt := 3; Version
      | 3 -> if List.hd !request = ""
             then (Body)
             else (label_cnt := 4; HeaderName)
      | 4 -> label_cnt := 3; HeaderValue
    in
    let conn = 
    {
      send_int;
      recv_int;
      send_string;
      recv_string;
      send_unit;
      recv_unit;
      send_label;
      recv_label;
    } in
    let disconn = fun () -> close client in
    conn, disconn
  in f
