(define (element-in? set item)
 (cond ((null? set) #f)
	   ((eq? item (car set)) #t)
	   (else (element-in? (cdr set) item))))

(define (make-list q)
 (define (dispatch m item)
  (cond ((eq? m 'push) (set! q (append q (list item))) q)
		((eq? m 'contains?) (element-in? q item))
		(else (error "UNDEFINED COMMAND -- MAKE-LIST" m))))
 dispatch
 )



(define (count-pairs x)
 (define Q (make-list ()))
 (define (count-pairs-iter x)
  (cond ((not (pair? x)) 0)
 	    ((not (Q 'contains? x)) (Q 'push x) (+ (count-pairs-iter (car x))
										 (count-pairs-iter (cdr x))
										 1))
	    (else (+ (count-pairs-iter (car x))
				 (count-pairs-iter (cdr x))))
	  ))
 (count-pairs-iter x)
 )
(define c (cons 2 ()))
(define b (cons 1 c))
(define a (cons b b))
(define x (cons c c))
(define y (cons x x))

(newline)
(display (count-pairs a))
(newline)
(display (count-pairs b))
(newline)
(display (count-pairs c))
(newline)
(display (count-pairs x))
(newline)
(display (count-pairs y))
(newline)
