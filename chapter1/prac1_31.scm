(define (product term a next b)
 (if (> a b)
	 1
	 (* (term a) (product term (next a) next b))))

(define (factorial x)
 (product (lambda (n) n) 1 (lambda (n) (+ n 1)) x))

(display (factorial 0))
(display (factorial 1))
(display (factorial 2))
(display (factorial 3))
(display (factorial 4))
(display (factorial 5))
(display (factorial 6))
(display (factorial 7))

(define (pi_div_four n)
 (product (lambda (n) (* (/ n (+ n 1)) (/ (+ n 2) (+ n 1)))) 2 (lambda (n) (+ n 2)) n))

(display (pi_div_four 1))
(display (pi_div_four 10))
(display (pi_div_four 100))
(display (pi_div_four 1000))
(display (pi_div_four 10000))
(display (pi_div_four 100000))
