(define (square x) (* x x))

(define (square-list items)
 (if (null? items)
	 ()
	 (cons (square (car items)) (square-list (cdr items)))))

(display (square-list (list 1 2 3 4 5)))
(newline)

(define (square-list2 items)
 (map square items))

(display (square-list2 (list 1 2 3 4 5)))
(newline)
