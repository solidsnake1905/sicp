(define (sum term a next b)
 (if (> a b)
  0
  (+ (term a) (sum term (next a) next b))))


(define (integral f a b dx)

 (define (add-dx x) (+ x dx))
 (if (> a b)
  0
  (* dx (sum f (+ a (/ dx 2.0)) add-dx b)))
 )

(define (identity x) x)
(define (cube x) (* x x x))

(print (integral identity 0 1 0.0001))
(print (integral cube 0 1 0.01))
(print (integral cube 0 1 0.001))
