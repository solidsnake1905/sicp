(define squares (list 1 4 9 16 25))

(define (last-pair items)
 (if (null? (cdr items))
	 (car items)
	 (last-pair (cdr items))))

(display (last-pair squares))
(newline)
