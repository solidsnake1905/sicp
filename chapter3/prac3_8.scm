(define (func)
 (let ((set? #f))
  (lambda (x)
   (if (not set?)
	(begin (set! set? #t) x)
	0))))

	(define f (func))
	(define f2 (func))
	(newline)
	(display (+ (f 0) (f 1)))
	(newline)
	(display (+ (f 0) (f 1)))
	(newline)
(display (+ (f2 0) (f2 1)))
(newline)
(display (+ (f2 0) (f2 1)))
	;(display (+ (f 1) (f 0)))
