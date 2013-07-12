(define (fast-mult-iter b n product)
 (if(= n 0)
    product
	(if (= 1 (remainder n 2))
		(fast-mult-iter (+ b b) (/ (- n 1) 2) (+ b product))
		(fast-mult-iter (+ b b) (/ n 2) product))))

(define (fast-mult b n)
 (fast-mult-iter b n 0))

(print (fast-mult 3 10))
(print (fast-mult 3 11))
(print (fast-mult 3 12))
(print (fast-mult 3 13))
(print (fast-mult 3 14))
(print (fast-mult 3 15))
