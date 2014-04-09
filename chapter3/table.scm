(newline)

(define (lookup key table)
 (let ((record (assoc key (cdr table))))
  (if record
	  (cdr record)
	  #f)))

(define (insert! key value table)
 (let ((record (assoc key (cdr table))))
  (if record
      (set-cdr! record value)
	  (set-cdr! table
				(cons (cons key value) (cdr table)))))
 'ok)

(define (make-table) (list '*table*))

(define tab (make-table))

(insert! 'a 1 tab)
(display tab)
(newline)
(display (lookup 'b tab))
(newline)
(insert! 'b 2 tab)
(display tab)
(newline)
(display (lookup 'b tab))
(newline)
