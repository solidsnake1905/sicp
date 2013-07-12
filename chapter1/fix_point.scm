(define tolerance 0.00001)

(define (close-enough? a b)
 (< (abs (- a b)) tolerance))

(define (fix-point f first-guess)
	(define (try guess)
	 (let ((next (f guess)))
		  (if (close-enough? next guess)
			  guess
			  (try next)
		   )
	)
	 )
	(try first-guess)
	)

(print (fix-point (lambda (y) (+ (cos y) (sin y))) 1.0))
(define (average a b)
 (/ (+ a b) 2.0))

(define (sqrt_ x)
 (fix-point (lambda (y) (average y (/ x y))) 1.0))

(print (sqrt_ 1))
(print (sqrt_ 2))
(print (sqrt_ 3))
(print (sqrt_ 4))
(print (sqrt_ 5))
