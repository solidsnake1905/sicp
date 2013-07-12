(define (accumulate op initial sequence)
 (cond ((null? sequence) initial)
	   ((not (pair? sequence)) sequence)
	   (else (op (car sequence)
				 (accumulate op initial (cdr sequence))))
  )
)

(define (accumulate-n op init seqs)
	(if (null? (car seqs))
		()
		(cons (accumulate op init (map (lambda (x) (car x)) seqs))
			  (accumulate-n op init (map (lambda (x) (cdr x)) seqs)))
	 )
 )

(define (dot-product v w)
 (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
 (map (lambda (x) (dot-product x v)) m))

(define (transpose mat)
 (accumulate-n cons () mat))

(define (matrix-*-matrix m n)
 (let ((cols (transpose n)))
	  (map (lambda (x) (matrix-*-vector cols x)) m)))

(define mat1 (list (list 1 2 3 4) (list 5 6 7 8) (list 9 10 11 12)))
(define mat2 (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
(newline)
(display (matrix-*-matrix mat1 mat2))
(newline)
