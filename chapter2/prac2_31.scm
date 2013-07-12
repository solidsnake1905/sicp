(define (square x) (* x x))
(define (tree-map f x)
 (cond ((null? x) ())
	   ((not (pair? x)) (f x))
	   (else (map (lambda (x)(tree-map f x)) x))))

(define (square-tree tree) (tree-map square tree))

(define x (list 1 (list 2 (list 3 4) (list 5))))

(display (square-tree x))
(newline)
