(*let time = Unix.gettimeofday ()
let () = Random.init (int_of_float time)*)
let () = TravelAgencyS.run_once ()
