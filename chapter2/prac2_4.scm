(define (construct x y)
 (lambda (m) (m x y)))

(define (careg z)
 (z (lambda (p q) p)))

(define (cdreg z)
 (z (lambda (p q) q)))

(define half (construct 1 2))

(print (careg half))
(print (cdreg half))
