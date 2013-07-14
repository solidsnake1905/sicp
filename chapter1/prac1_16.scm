(define (fast-expr-iter b n product)
 (if(= n 0)
    product
	(if (= 1 (remainder n 2))
		(fast-expr-iter (* b b) (/ (- n 1) 2) (* b product))
		(fast-expr-iter (* b b) (/ n 2) product))))

(define (fast-expr b n)
 (fast-expr-iter b n 1))

(display (fast-expr 3 10))
(display (fast-expr 3 11))
(display (fast-expr 3 12))
(display (fast-expr 3 13))
(display (fast-expr 3 14))
(display (fast-expr 3 15))
