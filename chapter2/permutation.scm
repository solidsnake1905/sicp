(define (accumulate op initial sequence)
 (cond ((null? sequence) initial)
	   ((not (pair? sequence)) sequence)
	   (else (op (car sequence)
				 (accumulate op initial (cdr sequence))))
  )
)

(define (flatmap proc seq)
 (accumulate append () (map proc seq)))

(define (remove-custom item seq)
 (filter (lambda (x) (not (= item x))) seq))

(define (permutation s)
 (if(null? s)
  (list ())
  (flatmap (lambda (x)(map (lambda(p) (cons x p)) (permutation (remove-custom x s)))) s)))

(newline)
(display (permutation (list 1 2 3)))
(newline)
