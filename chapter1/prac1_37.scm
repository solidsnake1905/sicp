(define (cont-frac n d k)
 (define (cont-frac-rec n d k i)
  (if (= k i)
	  (/ (n i) (d i))
	  (/ (n i) (+ (d i) (cont-frac-rec n d k (+ i 1))))))
  (cont-frac-rec n d k 1)
 )

(print (cont-frac (lambda (x) 1.0) (lambda (x) 1.0) 1000))

(define (cont-frac-2 n d k)
 (define (cont-frac-iter n d k i result)
  (if (= i 1)
	  result
	  (cont-frac-iter n d k (- i 1) (/ (n i) (+ (d i) result)))))
 (cont-frac-iter n d k k (/ (n k) (d k)))
 )

(print (cont-frac-2 (lambda (x) 1.0) (lambda (x) 1.0) 1000))
