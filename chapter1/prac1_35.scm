(define tolerance 0.00001)

(define (fix-point f first-guess)
 (define (close-enough? a b)
  (< (abs (- a b)) tolerance))
 (define (try guess)
  (let ((next (f guess)))
	   (if (close-enough? guess next)
		   guess
		   (try next))))
 (try first-guess)
 )

(define (gold) 
 (fix-point (lambda (x) (+ 1 (/ 1 x))) 1.0))

(display (gold))
