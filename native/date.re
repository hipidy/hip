/** In native we use a timestamp to represent a date */

type t = float;

/** Returns the current time. */

let now = () => Unix.time();

let tomorrow = () => {
    let t = now();
      Tomorrow.tomorrow(t);
};

