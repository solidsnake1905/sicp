(define (accumulate op initial sequence)
 (cond ((null? sequence) initial)
	   ((not (pair? sequence)) sequence)
	   (else (op (car sequence)
				 (accumulate op initial (cdr sequence))))
  )
)

(define (count-leaves t)
 (accumulate + 0 (map (lambda (x) 
					   (cond ((null? x) 0)
							 ((not (pair? x)) 1)
							 (else (count-leaves x)))) t)))

(define x (list 1 (list 2 (list 3 4 (list 5 6 (list 7 8 (list 10 9 11 32)))))))

(newline)
(display (count-leaves x))
(newline)
