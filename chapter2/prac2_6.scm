(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
 (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) ((add-1 zero) f)))
(define two (lambda (f) ((add-1 one) f)))
(define three (lambda (f) ((add-1 two) f)))
(define (inc x) (+ 1 x))
(print ((one inc) 0))
(print ((two inc) 0))
(print ((three inc) 0))

(define (add m n) (lambda (f) (lambda (x) ((m f) ((n f) x)))))

(print (((add three two) inc) 0))
