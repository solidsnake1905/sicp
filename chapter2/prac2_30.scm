(define (square-tree tree)

 (cond  ((null? tree) ())
		((not (pair? tree))(* tree tree))
		(else (cons (square-tree (car tree)) (square-tree (cdr tree))))))

(define (square-tree2 tree)
 (cond	((null? tree) ())
		((not (pair? tree))(* tree tree))
		(else (map square-tree2 tree))))

(define x (list 1 (list 2 (list 3 4) 5)))
(define y (list 1 2 3 4 5))

(display x)
(newline)
(display (square-tree x))
(newline)
(display (map (lambda(x)(* x x)) y))
(newline)
(display (square-tree2 x))
(newline)
