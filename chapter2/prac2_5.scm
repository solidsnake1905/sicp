(define (construct x y)
	(lambda (m) (m x y))
)

(define (careg z)
 (z (lambda (p q) (expt 2 p))))

(define (cdreg z)
 (z (lambda (p q) (expt 3 q))))

(define p2q3 (construct 2 3))

(print (careg p2q3))
(print (cdreg p2q3))
