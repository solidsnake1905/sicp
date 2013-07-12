(define (fast-expr-iter b n product)
 (if(= n 0)
    product
	(if (= 1 (remainder n 2))
		(fast-expr-iter (* b b) (/ (- n 1) 2) (* b product))
		(fast-expr-iter (* b b) (/ n 2) product))))

(define (fast-expr b n)
 (fast-expr-iter b n 1))

(print (fast-expr 3 10))
(print (fast-expr 3 11))
(print (fast-expr 3 12))
(print (fast-expr 3 13))
(print (fast-expr 3 14))
(print (fast-expr 3 15))
