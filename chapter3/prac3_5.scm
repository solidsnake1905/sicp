(define (random-in-range low high)
 (+ low (random (- high low))))

(define P?
 (lambda (x y)
  (<= (+ (square x)
		 (square y)
		 )
	  1)))

(define (estimate-integral predicate x1 y1 x2 y2 trials)
 (* (- x2 x1) (- y2 y1) (monte-carlo trials predicate x1 y1 x2 y2)))

(define (monte-carlo trials predicate x1 y1 x2 y2)
 (define (iter trials-remaining trials-passed)
  (cond ((= trials-remaining 0)
		 (/ trials-passed trials))
		((predicate (random-in-range x1 x2) (random-in-range y1 y2))
		 (iter (- trials-remaining 1) (+ 1 trials-passed)))
		(else (iter (- trials-remaining 1) trials-passed))))
 (iter trials 0))

(newline)
(display (estimate-integral P? -1. -1. 1. 1. 100000))
(newline)
