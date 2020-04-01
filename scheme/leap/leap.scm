(import (rnrs))

(define (leap-year? year)
  (if (= (remainder year 400) 0) #t
      (if (and (not (= (remainder year 100) 0))
              (= (remainder year 4) 0)) #t #f)))
