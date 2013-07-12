(define one-through-four (list 1 2 3 4))
(define squares (list 1 4 9 16 25))
(define (list-ref-custom items n)
 (if (= n 0)
	 (car items)
	 (list-ref-custom (cdr items) (- n 1))))

(define (length-custom items)
 (if (null? items)
	 0
	 (+ 1 (length-custom (cdr items)))))

(define (length-custom2 items)
 (define (length-iter itm count)
  (if (null? itm)
	 count
	 (length-iter (cdr itm) (+ 1 count)))
  )
 (length-iter items 0)
 )

(define (append-custom list1 list2)
 (if (null? list1)
	 list2
	 (cons (car list1) (append-custom (cdr list1) list2))))

(display one-through-four)
(newline)

(display (car one-through-four))
(newline)

(display (cdr one-through-four))
(newline)

(display (cons 5 one-through-four))
(newline)

(display (list-ref-custom one-through-four 2))
(newline)

(display (length-custom one-through-four))
(newline)

(display (length-custom2 one-through-four))
(newline)

(display (append-custom squares one-through-four))
(newline)
