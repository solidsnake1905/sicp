(define (install-rectangular-package)
 (define (real-part z) (car z))
 (define (imag-part z) (cdr z))
 (define (make-from-real-imag x y) (cons x y))
 (define (magnitude z) (sqrt (+ (* (real-part z) (real-part z)) (* (imag-part z) (imag-part z)))))
 (define (angle z) (atan (/ (imag-part z) (real-part z))))
 (define (make-from-mag-ang r a) (cons (* r (cos a)) (* r (sin a))))

 (define (tag x) (attach-tag 'rectangular x))
 (put 'real-part '(rectangular) real-part)
 (put 'imag-part '(rectangular) imag-part)
 (put 'magnitude '(rectangular) magnitude)
 (put 'angle '(rectangular) angle)
 (put 'make-from-real-imag '(rectangular) (lambda (x y) (tag (make-from-real-imag x y))))
 (put 'make-from-mag-ang '(rectangular) (lambda (r a) (rag (make-from-mag-ang r a))))
 'done
 )

(define (install-polar-package)
 (define (magnitude z) (car z))
 (define (angle z) (cdr z))
 (define (real-part z) (* (magnitude z) (cos (angle z))))
 (define (imag-part z) (* (magnitude z) (sin (angle z))))
 (define (make-from-real-imag x y) (cons (sqrt (+ (* x x) (* y y))) (atan (/ y x))))
 (define (make-from-mag-ang r a) (cons r a))

 (define (tag x) (attach-tag 'polar x))
 (put 'real-part '(polar) real-part)
 (put 'imag-part '(polar) imag-part)
 (put 'magnitude '(polar) magnitude)
 (put 'angle '(polar) angle)
 (put 'make-from-real-imag '(polar) (lambda (x y) (tag (make-from-real-imag x y))))
 (put 'make-from-mag-ang '(polar) (lambda (r a) (rag (make-from-mag-ang r a))))
 'done
 )

(define (apply-generic op . args)
 (let ((type-tags (map type-tag args)))
  (let ((proc (get op type-tags)))
   (if proc
	   (apply proc (map contents args))
	   (error
		"No method for these types -- APPLY-GENERIC"
		(list op type-tags))))))

(define (real-part z) (apply-generic 'real-part z))
(define (imag-part z) (apply-generic 'imag-part z))
(define (magnitude z) (apply-generic 'magnitude z))
(define (angle z) (apply-generic 'angle z))

(install-rectangular-package)
(install-polar-package)