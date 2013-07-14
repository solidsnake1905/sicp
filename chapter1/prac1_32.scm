(define (accumulate combiner null-value term a next b)
 (if (> a b)
	 null-value
	 (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
 (accumulate + 0 term a next b))

(define (product term a next b)
 (accumulate * 1 term a next b))

(define (simple-sum a b)
 (sum (lambda (n) n) a (lambda (n) (+ n 1)) b))

(define (simple-product a b)
 (product (lambda (n) n) a (lambda (n) (+ n 1)) b))

(display (simple-sum 0 10))
(display (simple-sum 0 100))
(display (simple-sum 0 1000))
(display (simple-sum 0 10000))

(display (simple-product 1 5))
(display (simple-product 1 6))
(display (simple-product 1 7))
