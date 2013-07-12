(define (subsets s)
 (if (null? s)
	 (list ())
	 (let ((rest (subsets (cdr s))))
		  (append rest (map (lambda (x) (cons (car s) x)) rest)))))

(define x (list 1 2 3 4 5))

(display (subsets x))

(newline)
