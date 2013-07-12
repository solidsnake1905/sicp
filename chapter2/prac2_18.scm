(define squares (list 1 4 9 16 25))
(define one-through-four (list 1 2 3 4))

(define (reverse-custom items)
 (if (= (length items) 1)
	 items
	 (append (reverse-custom (cdr items)) (list (car items)))))
(display (reverse-custom squares))
(newline)
