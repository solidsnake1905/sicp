(define (accumulate op initial sequence)
 (cond ((null? sequence) initial)
	   ((not (pair? sequence)) sequence)
	   (else (op (car sequence)
				 (accumulate op initial (cdr sequence))))
  )
)

(define (horner-eval x coefficient-sequence)
 (accumulate (lambda (this-coeff higher-terms) (+ this-coeff  (* x higher-terms)))
			 0
			 coefficient-sequence))

(newline)
(display (horner-eval 2 (list 1 3 0 5 0 1)))
(newline)
