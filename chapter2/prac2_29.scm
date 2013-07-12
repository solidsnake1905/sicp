
(define (make-mobile left right)
 (list left right))

(define (make-branch _length structure)
 (list _length structure))

(define left (make-branch 4 3))

(define right (make-branch 3 4))

(define (left-branch x)
 (car x))

(define (right-branch x)
 (car (cdr x)))

(define (branch-length x)
 (car x))

(define (branch-structure x)
 (car (cdr x)))

	(define (total-weight mobile)
	 (cond ((not (pair? mobile)) mobile)
	  (else
	   (let ((left-structure (branch-structure (left-branch mobile)))
			 (right-structure (branch-structure (right-branch mobile))))
		(let ((left-weight (if(not (pair? left-structure)) left-structure (total-weight left-structure)))
			  (right-weight (if(not (pair? right-structure)) right-structure (total-weight right-structure))))
		 (+ left-weight right-weight))
	   ))
	 )
	)

	(define (balance? mobile)
	 (if (not (pair? mobile)) 
		#t 
	  (and (and (balance? (branch-structure (left-branch mobile)))
			(balance? (branch-structure (right-branch mobile))))
	   (=
		(* (branch-length (left-branch mobile)) (total-weight (branch-structure (left-branch mobile))))
		(* (branch-length (right-branch mobile)) (total-weight (branch-structure (right-branch mobile))))))))

	 (define x (make-mobile left right))
	 (display x)
	 (newline)
	 (display (left-branch x))
	 (newline)
	 (display (right-branch x))
	 (newline)
	 (display (total-weight x))
	 (newline)
	 (display (balance? x))
	 (newline)
