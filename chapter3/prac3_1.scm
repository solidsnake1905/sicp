(define (accumulator-custom sum)
 (lambda (amount)
   (
	begin (set! sum (+ sum amount))
		  sum)))

(define A (accumulator-custom 10))

(newline)
(display (A 5))
(newline)
(display (A 10))
(newline)
