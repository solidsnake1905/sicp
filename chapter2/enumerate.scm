(define (enumerate-interval low high)
 (if (> low high)
	 ()
	 (cons low (enumerate-interval (+ low 1) high))))

(display (enumerate-interval 2 7))
(newline)

(define (enumerate-tree tree)
 (cond ((null? tree) ())
	   ((not (pair? tree)) (list tree))
	   (else (append (enumerate-tree (car tree)) (enumerate-tree (cdr tree))))))

(define (accumulate op initial sequence)
 (if (null? sequence)
	 initial
	 (op (car sequence) 
		 (accumulate op initial (cdr sequence)))))
(define (filter predicate sequence)
 (cond ((null? sequence) ())
	   (else (cond((predicate (car sequence)) (cons (car sequence) (filter predicate (cdr sequence))))
				  (else (filter predicate (cdr sequence)))))
  )
)

(define (square x) (* x x))
(define (sum-odd-square-tree tree)
 (accumulate + 0 
  (map square (filter odd? (enumerate-tree tree)))))
(define x (list 1 (list 2 (list 3 (list 4 5) (list 6 7 8 9)))))

(display (filter odd? (enumerate-tree x)))
(newline)
(display (sum-odd-square-tree x))
(newline)
