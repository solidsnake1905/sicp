(define (product term a next b)
 (if (> a b)
	 1
	 (* (term a) (product term (next a) next b))))

(define (factorial x)
 (product (lambda (n) n) 1 (lambda (n) (+ n 1)) x))

(print (factorial 0))
(print (factorial 1))
(print (factorial 2))
(print (factorial 3))
(print (factorial 4))
(print (factorial 5))
(print (factorial 6))
(print (factorial 7))

(define (pi_div_four n)
 (product (lambda (n) (* (/ n (+ n 1)) (/ (+ n 2) (+ n 1)))) 2 (lambda (n) (+ n 2)) n))

(print (pi_div_four 1))
(print (pi_div_four 10))
(print (pi_div_four 100))
(print (pi_div_four 1000))
(print (pi_div_four 10000))
(print (pi_div_four 100000))
