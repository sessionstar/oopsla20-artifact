let () =
  let port = 3000 in
  let conn = Network.listen port in
  let rec aux () =
    let conn, disconn = conn () in
    Server.run ServerImpl.callbacks conn;
    disconn ();
    aux ()
  in aux ()
