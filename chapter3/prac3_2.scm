(define (make-monitored f)
 (define mf 
  (let ((call-count 0))
   (lambda (m)
	(cond ((equal? m 'how-many-calls) call-count)
		  ((equal? m 'reset-count) (set! call-count 0) call-count)
		  (else (set! call-count (+ 1 call-count)) (f m))))))
 mf)

(define s (make-monitored sqrt))

(newline)
(display (s 100))
(newline)
(display (s 'how-many-calls))
(newline)
(display (s 30))
(newline)
(display (s 'how-many-calls))
(newline)
(display (s 'reset-count))
(newline)
(display (s 'how-many-calls))
(newline)
