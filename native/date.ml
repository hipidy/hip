type t = float

let now () = Unix.time ()

let tomorrow () = let t = now () in Tomorrow.tomorrow t
