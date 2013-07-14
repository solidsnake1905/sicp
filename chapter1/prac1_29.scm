(define (simpson-integral f a b n)
	(define h (/ (- b a) n))

	(define (sum term a next b)
	 (if(> a b)
		0
		(+ (term a) (sum term (next a) next b)))
	 )

	(define (inc x) (+ x h))

	(define (sub-sum x)
	 (+ (f x) (* 4.0 (f (+ x h))) (f (+ x (* 2.0 h)))))

	(* (/ h 3.0) (sum sub-sum a inc (- b (* 2.0 h))))
 )

(define (cube x)
 (* x x x)
 )

(display (simpson-integral cube 0 1.0 10))
(display (simpson-integral cube 0 1.0 100))
(display (simpson-integral cube 0 1.0 1000))
(display (simpson-integral cube 0 1.0 10000))
