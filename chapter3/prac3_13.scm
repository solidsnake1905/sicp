(define (last-pair x)
 (if (null? (cdr x))
	 x
	 (last-pair (cdr x))))

(define (make-cycle x)
 (set-cdr! (last-pair x) x))

(define x (list 1 2 3))

(make-cycle x)
(newline)
(display x)
(newline)
