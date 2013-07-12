(define (for-each-custom f items)
	(cond ((not (null? items)) (f (car items)) (for-each-custom f (cdr items)))
		  )
 )

(for-each-custom (lambda (x) (display x) (newline)) (list 57 321 88))
