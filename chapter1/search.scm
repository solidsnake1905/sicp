(define (average a b)
 (/ (+ a b) 2))

(define (close-enough? a b)
 (< (abs (- a b)) 0.000001))

	(define (search f neg-point pos-point)
	 (let ((mid-point (average neg-point pos-point)))
	  (if (close-enough? neg-point pos-point)
		   mid-point
		   (let ((test-value (f mid-point)))
				(cond ((positive? test-value) (search f neg-point mid-point))
					  ((negative? test-value) (search f mid-point pos-point))
					  (else mid-point)))
	  )
	 )
	)


(print (search (lambda (x) (- x 1)) -2 2))


(define (half-interval-method f a b)
 (let ((a-value (f a))
	   (b-value (f b)))
	  (cond ((and (negative? a-value) (positive? b-value)) (search f a b))
			((and (positive? a-value) (negative? b-value)) (search f b a))
			(else (error "Values are not of apposite sign" a b)))))

(print (half-interval-method sin 2 4))
