module Timer

open FStar.All
open FStar.Float

assume type t

val init : unit -> ML t

val time : t -> ('a -> ML 'r) -> 'a -> ML 'r

val get : t -> float

val get_str : t -> string

val now : unit -> ML unit
