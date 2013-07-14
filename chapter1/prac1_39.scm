(define pi 3.14159265359)
	
(define (cont-frac n d k)
 (define (cont-frac-rec n d k i)
  (if (= k i)
	  (/ (n i) (d i))
	  (/ (n i) (+ (d i) (cont-frac-rec n d k (+ i 1))))))
  (cont-frac-rec n d k 1)
 )


(define (cont-frac-2 n d k)
 (define (cont-frac-iter n d k i result)
  (if (= i 1)
	  result
	  (cont-frac-iter n d k (- i 1) (/ (n i) (+ (d i) result)))))
 (cont-frac-iter n d k k (/ (n k) (d k)))
 )

(define (tan-cf x k)
 (/ (cont-frac (lambda (n) (- (* x x))) (lambda (n) (- (* 2 n) 1)) k) (- x)))

(display (tan-cf (/ pi 4.0) 1000))
