type t = float ref

let default = 0.0

let init () = ref default

let time timer f arg =
  let start = Unix.gettimeofday () in
  let result = f arg in
  let finish = Unix.gettimeofday () in
  timer := (!timer +. (finish -. start));
  result

let get timer = !timer

let get_str timer = get timer |> string_of_float

let now () =
  let time = Unix.gettimeofday () in
  Printf.printf "%f\n" time
