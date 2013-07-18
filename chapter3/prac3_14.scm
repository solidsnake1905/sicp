(define (mystery x)
 (define (loop x y)
  (if (null? x)
	  y
	  (let ((temp (cdr x)))
		   (set-cdr! x y)
		   (loop temp x))))
 (loop x ()))

(newline)
(display (mystery (list 1 2 3 4 5)))
(newline)
