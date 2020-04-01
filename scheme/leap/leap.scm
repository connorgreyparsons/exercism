(import (rnrs))

(define (leap-year? year)
  (or (= (remainder year 400) 0)
      (and (not (= (remainder year 100) 0))
           (= (remainder year 4) 0))))
