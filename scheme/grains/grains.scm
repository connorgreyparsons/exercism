(import (rnrs))

(define (square n)
  (cond
   ((< 0 n 65) (expt 2 (- n 1)))
   (else (raise "input out of range"))))

(define total
  (let aux((n 64))
    (cond
     ((< n 1) 0)
     (else (+ (square n) (aux (- n 1)))))))
