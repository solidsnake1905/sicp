(define (sum term a next b)
 (define (iter a result)
  (if (> a b)
	  result
      (iter (next a) (+ result (term a)))))
 (iter a 0)
 )

(display (sum (lambda (x) x) 1 (lambda (x) (+ x 1)) 10))
(display (sum (lambda (x) x) 1 (lambda (x) (+ x 1)) 100))
(display (sum (lambda (x) x) 1 (lambda (x) (+ x 1)) 1000))
(display (sum (lambda (x) x) 1 (lambda (x) (+ x 1)) 10000))
(display (sum (lambda (x) (* x x)) 1 (lambda (x) (+ x 1)) 10))
(display (sum (lambda (x) (* x x)) 1 (lambda (x) (+ x 1)) 100))
