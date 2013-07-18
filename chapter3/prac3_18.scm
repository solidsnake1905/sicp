(define (element-in? set item)
 (cond ((null? set) #f)
	   ((eq? (car set) item) #t)
	   (else (element-in? (cdr set) item))))

(define (last-pair x)
 (if (not (pair? (cdr x)))
	 x
	 (last-pair (cdr x))))

(define (make-cycle x)
 (set-cdr! (last-pair x) x))

(define (make-list q)
 (define (dispatch m item)
  (cond ((eq? 'push m) (set! q (append q (list item))))
		((eq? 'contains? m) (element-in? q item))
		(else (error "UNDEFINED COMMAND -- MAKE-LIST" m))))
 dispatch
 )

(define (loop? x)
 (define Q (make-list ()))
 (define (loop-iter x)
  (cond ((null? x) #f)
		((Q 'contains? (car x)) #t)
		(else (Q 'push (car x)) (loop-iter (cdr x)))))
 (loop-iter x)
 )

(define cycle-list (list 1 2 3))
(newline)
(display (loop? cycle-list))
(make-cycle cycle-list)
(newline)
(display (loop? cycle-list))
(newline)

