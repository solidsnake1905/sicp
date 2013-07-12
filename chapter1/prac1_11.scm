(define (f1 n)
 (if (< n 3)
	 n
	 (+ (f1 (- n 1)) (* 2 (f1 (- n 2))) (* 3 (f1 (- n 3))))
	 )
 )

(print (f1 1))
(print (f1 2))
(print (f1 3))
(print (f1 4))
(print (f1 5))
(print (f1 6))
(print (f1 7))
(print (f1 8))
(print (f1 9))
(print (f1 10))

(define (f2-iter a b c n)
 (if (= n 0)
	 (+ a (* 2 b) (* 3 c))
	 (f2-iter  (+ a (* 2 b) (* 3 c)) a b (- n 1)))
 )

(define (f2 n)
 (if (< n 3)
	 n
	 (f2-iter 2 1 0 (- n 3))
	 ))
	
(print (f2 1))
(print (f2 2))
(print (f2 3))
(print (f2 4))
(print (f2 5))
(print (f2 6))
(print (f2 7))
(print (f2 8))
(print (f2 9))
(print (f2 10))
