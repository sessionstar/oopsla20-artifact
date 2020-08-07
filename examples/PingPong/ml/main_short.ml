open Prims

let () =
  let ip_addr = Sys.argv.(1) in
  let port = Sys.argv.(2) |> Z.of_string in
  let run =
    match Sys.argv.(3) with
    | "bareclient" ->
        let pingpong_count = Sys.argv.(4) |> Z.of_string in
        if pingpong_count > Z.zero then PingPongABase.main pingpong_count
        else failwith "Must provide a positive count"
    | "client" ->
        let pingpong_count = Sys.argv.(4) |> Z.of_string in
        let protocol_parameter = Sys.argv.(5) |> int_of_string in
        if pingpong_count > Z.zero then
          match protocol_parameter with
          | 1 -> Client1.main pingpong_count
          | 5 -> Client5.main pingpong_count
          | 10 -> Client10.main pingpong_count
          | _ -> failwith "Protocol parameter must be 1, 5, 10"
        else failwith "Must provide a positive count"
    | "server" -> (
        let protocol_parameter = Sys.argv.(4) |> int_of_string in
        match protocol_parameter with
        | 1 -> Server1.run_once
        | 5 -> Server5.run_once
        | 10 -> Server10.run_once
        | _ -> failwith "Protocol parameter must be 1, 5, 10" )
    | "serverforever" -> (
        let protocol_parameter = Sys.argv.(4) |> int_of_string in
        match protocol_parameter with
        | 1 -> Server1.run_forever
        | 5 -> Server5.run_forever
        | 10 -> Server10.run_forever
        | _ -> failwith "Protocol parameter must be 1, 5, 10" )
    | "bareserver" -> PingPongBBase.run_once
    | "bareserverforever" -> PingPongBBase.run_forever
    | _ -> failwith "Use client or server"
  in
  run ip_addr port
