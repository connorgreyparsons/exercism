(import (rnrs))

(define (hamming-distance strand-a strand-b)
  (length (filter (λ (ls) (not (eqv? (car ls) (car (cdr ls)))))
                  (map-in-order (λ (a b) (list a b))
                                (string->list strand-a) (string->list strand-b)))))
