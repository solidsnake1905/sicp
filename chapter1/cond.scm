(define (abs_ x) 
 (cond ((> x 0) x)
	   ((= x 0) x)
	   ((< x 0) (- x))))

(print (abs_ 1))
(print (abs_ 0))
(print (abs_ -1))


(define (abs_2 x)
 (cond ((< x 0) (- x))
	   (else x)))

(print (abs_2 1))
(print (abs_2 0))
(print (abs_2 -1))

(define (abs_3 x)
 (if (< x 0)
	 (- x)
	 x))

(print (abs_3 1))
(print (abs_3 0))
(print (abs_3 -1))

(define (between_5_10 x)
 (and (> x 5) (< x 10)))

(define (judge x)
 (if (between_5_10 x)
	 (print "yes")
	 (print "no")))

(judge 5)
(judge 6)
(judge 7)
(judge 8)
(judge 9)
(judge 10)
