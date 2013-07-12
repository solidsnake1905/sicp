(define (accumulate op initial sequence)
 (if (null? sequence)
	 initial
	 (op (car sequence) 
		 (accumulate op initial (cdr sequence)))))

(define x (list 1 2 3 4 5))
(display (accumulate + 0 x))
(newline)
(display (accumulate * 1 x))
(newline)
