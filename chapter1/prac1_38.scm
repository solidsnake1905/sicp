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

(define (euler k)
 (+ 2.0 (cont-frac (lambda (x) 1.0) (lambda (x) (if(= 2 (remainder x 3)) (/ (+ x 4) 3) 1)) k)))

(display (euler 1000))
