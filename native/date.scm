(type t float)

(define (now ()) 
   (Unix.time ()))

(define (tomorrow ()) 
  (let ((t (now ()))) 
    (Tomorrow.tomorrow t)))
