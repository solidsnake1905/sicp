(define (abs_ x) 
 (cond ((> x 0) x)
	   ((= x 0) x)
	   ((< x 0) (- x))))

(display (abs_ 1))
(display (abs_ 0))
(display (abs_ -1))


(define (abs_2 x)
 (cond ((< x 0) (- x))
	   (else x)))

(display (abs_2 1))
(display (abs_2 0))
(display (abs_2 -1))

(define (abs_3 x)
 (if (< x 0)
	 (- x)
	 x))

(display (abs_3 1))
(display (abs_3 0))
(display (abs_3 -1))

(define (between_5_10 x)
 (and (> x 5) (< x 10)))

(define (judge x)
 (if (between_5_10 x)
	 (display "yes")
	 (display "no")))

(judge 5)
(judge 6)
(judge 7)
(judge 8)
(judge 9)
(judge 10)
