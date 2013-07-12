(define dx 0.00001)
(define tolerance 0.0001)	
(define (close-enough? a b)
 (< (abs (- a b)) tolerance))
(define (deriv g)
 (lambda (x)
  (/ (- (g (+ x dx)) (g x)) dx)))

(define (fix-point f first-guess)
 (define (try guess)
  (let ((next (f guess)))
	   (if (close-enough? next guess)
		   guess
		   (try next))))
 (try first-guess)
 )

(define (average-damp f)
 (lambda (x) (/ (+ (f x) x) 2)))

(define (newton-transform f)
 (lambda (x) (- x (/ (f x) ((deriv f) x)))))

(define (newton-method f)
 (lambda (x) (fix-point (newton-transform f) x)))

(define (sqrt_ x)
 ((newton-method (lambda (y) (- (* y y) x))) 1.0))

(print (sqrt_ 2.0))
