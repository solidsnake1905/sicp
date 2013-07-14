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

(display (fix-point (lambda (y) (+ (cos y) (sin y))) 1.0))
(define (average a b)
 (/ (+ a b) 2.0))

(define (sqrt_ x)
 (fix-point (lambda (y) (average y (/ x y))) 1.0))

(display (sqrt_ 1))
(display (sqrt_ 2))
(display (sqrt_ 3))
(display (sqrt_ 4))
(display (sqrt_ 5))
