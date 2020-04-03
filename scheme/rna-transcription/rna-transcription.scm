(import (rnrs))

(define (dna->rna dna)
  (list->string
   (map (lambda (c)
          (cond
           ((eqv? c #\G) #\C)
           ((eqv? c #\C) #\G)
           ((eqv? c #\T) #\A)
           ((eqv? c #\A) #\U)))
        (string->list dna))))
