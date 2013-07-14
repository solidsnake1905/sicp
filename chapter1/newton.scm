(define (sqrt_ x)
(define (square x) (* x x))

(define (good-enough? x y)
 (< (abs (- (square x) y)) 0.001))

(define (average x y) (/ (+ x y) 2.0))

	(define (improve x y) (average x (/ y x)))
	(define (sqrt-iter x y)
	 (if (good-enough? x y)
	  x
	  (sqrt-iter (improve x y) y)))

 (sqrt-iter 1.0 x))

	(display (sqrt_ 1.0))
	(display (sqrt_ 2.0))
	(display (sqrt_ 3.0))
	(display (sqrt_ 4.0))
	(display (sqrt_ 5.0))
	(display (sqrt_ 6.0))
	(display (sqrt_ 7.0))
	(display (sqrt_ 8.0))
	(display (sqrt_ 27.0))
(display (sqrt_ 64.0))
