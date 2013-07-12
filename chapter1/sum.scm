(define (sum term a next b)
 (if (> a b)
	 0
	 (+ (term a) (sum term (next a) next b))))

(define (inc a)
 (+ a 1))


(define (square a)
 (* a a))

(define (cube a)
 (* a a a))

(print (sum + 1 inc 10))
(print (sum square 1 inc 10))
(print (sum cube 1 inc 10))
