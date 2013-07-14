(define (real-part z) (car z))
(define (imag-part z) (cdr z))

(define (magnitude z) (sqrt (+ (* (real-part z) (real-part z))
							   (* (imag-part z) (imag-part z)))))

(define (angle z) (atan (/ (imag-part z) (real-part z))))
(define (make-from-real-imag x y) (cons x y))
(define (make-from-mag-ang r a) (cons 
								 (* r (cos a))
								 (* r (sin a))))

(define (add-complex z1 z2)
 (make-from-real-imag (+ (real-part z1) (real-part z2))
					  (+ (imag-part z1) (imag-part z2))))

(define (sub-complex z1 z2)
 (make-from-real-imag (- (real-part z1) (real-part z2))
					  (- (imag-part z1) (imag-part z2))))

(define (mul-complex z1 z2)
 (make-from-mag-ang (* (magnitude z1) (magnitude z2))
					(+ (angle z1) (angle z2))))

(define (div-complex z1 z2)
 (make-from-mag-ang (/ (magnitude z1) (magnitude z2))
					(- (angle z1) (angle z2))))

(define complex-1 (make-from-real-imag 1 2))
(define complex-2 (make-from-real-imag 1 2))

(newline)
(display complex-1)
(newline)
(display complex-2)
(newline)
(display (add-complex complex-1 complex-2))
(newline)
(display (sub-complex complex-1 complex-2))
(newline)
(display (mul-complex complex-1 complex-2))
(newline)
(display (div-complex complex-1 complex-2))
(newline)
