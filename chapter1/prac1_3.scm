(define (max_ a b) 
 (cond ((> a b) a)
	   (else b)))

(define (func a b c)
 (max_ (max_ a b) (max_ b c)))

(print (func 1 2 3))
(print (func 3 2 1))
(print (func 1 3 2))
