(define (element-of-set? x set)
 (cond	((null? set) #f)
		((equal? x (car set)) #t)
		(else (element-of-set? x (cdr set)))))
(define (adjoin-set x set)
 (if (element-of-set? x set)
	 set
	 (cons x set)))

(define (intersection-set set1 set2)
 (cond  ((null? set1) ())
		((element-of-set? (car set1) set2) (cons (car set1) (intersection-set (cdr set1) set2)))
		(else (intersection-set (cdr set1) set2))))

(display (element-of-set? 1 (list 1 2 3)))
(newline)
(display (element-of-set? 4 (list 1 2 3)))
(newline)
(display (adjoin-set 1 (list 1 2 3)))
(newline)
(display (adjoin-set 0 (list 1 2 3)))
(newline)
(display (intersection-set (list 1 2 3 4 5) (list 6 5 2 10 11)))
(newline)
