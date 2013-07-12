(define tree (cons (list 1 2) (list 3 4)))
(define (count-leaves items)
 (cond ((null? items) 0)
	   ((not (pair? items)) 1)
	   (else (+ (count-leaves (car items)) (count-leaves (cdr items))))
	   ))	

(display (length tree))
(newline)

(display (count-leaves tree))
(newline)
