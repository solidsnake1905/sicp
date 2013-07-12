(define x (list (list 1 2) (list 3 4 (list 5 6))))
(define (deep-reverse tree)
 (if (not (pair? tree))
	 tree
	 (append (deep-reverse (cdr tree)) (list (deep-reverse (car tree))))))
(display x)
(newline)

(display (reverse x))
(newline)

(display (deep-reverse x))
(newline)
