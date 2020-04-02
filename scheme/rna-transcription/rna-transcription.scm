(import (rnrs))

(define (dna->rna dna)
  (let loop((ls (string->list dna)))
    (cond
     ((null? ls) "")
     ((eq? (car ls) #\G) (string-append "C" (loop (cdr ls))))
     ((eq? (car ls) #\C) (string-append "G" (loop (cdr ls))))
     ((eq? (car ls) #\T) (string-append "A" (loop (cdr ls))))
     ((eq? (car ls) #\A) (string-append "U" (loop (cdr ls)))))))
