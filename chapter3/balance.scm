(define balance 100)

(define (withdraw x)
 (if (>= balance x)
	 (begin (set! balance (- balance x))
			balance)
	 "Insufficient funds"))

(newline)
(display (withdraw 10))
(newline)
(display (withdraw 30))
(newline)
(display (withdraw 40))
(newline)
(display (withdraw 30))
(newline)

(define new-withdraw
 (let ((balance 100))
  (lambda (amount)
   (if (>= balance amount)
	   (begin (set! balance (- balance amount))
			  balance)
	   "Insufficient funds"))))

(newline)
(display (new-withdraw 20))
(newline)
(display (new-withdraw 30))
(newline)
(display (new-withdraw 60))
(newline)

(define (make-withdraw balance)
 (lambda (amount)
  (if (>= balance amount)
	  (begin (set! balance (- balance amount))
			 balance)
	  "Insufficient funds")))
(define W1 (make-withdraw 100))
(define W2 (make-withdraw 100))
(newline)
(display (W1 50))
(newline)
(display (W1 20))
(newline)
(display (W1 40))
(newline)
(newline)
(display (W2 30))
(newline)
(display (W2 30))
(newline)
(display (W2 41))
