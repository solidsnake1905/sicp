(define (same-parity x . y)
 (define (same-list x y)
  (if (null? y)
   ()
   (if (= (remainder x 2)
		(remainder (car y) 2))
	(cons (car y) (same-list x (cdr y)))
	(same-list x (cdr y)))))
 (same-list x y)
 )

	(display (same-parity 2 4 6 8 10 12))
	(newline)
	(display (same-parity 1 2 3 4 5 6 7))
(newline)
