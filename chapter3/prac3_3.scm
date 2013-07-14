(define (make-account balance secret-password)
 (define (pass? password)
  (equal? secret-password password))
 (define (withdraw)
  (lambda (amount)
   (if (>= balance amount)
	(begin (set! balance (- balance amount))
	 balance)
	"Insufficient funds"))
 )

 (define (deposit)
  (lambda (amount)
   (begin (set! balance (+ balance amount))
	balance)))

 (define warn
  (lambda (m)
   "Incorrect password"))

 (define (dispatch password m)
  (if (pass? password)
   ((cond ((equal? m 'withdraw) withdraw)
	 ((equal? m 'deposit) deposit)
	 (else (error "Unknown request -- MAKE-ACCOUNT" m))))
   warn)
 ) 
 dispatch
 )

(define acc (make-account 100 'hello1234))
(newline)
(display ((acc 'hello1234 'withdraw) 50))
(newline)
(display ((acc 'hello123 'withdraw) 50))
(newline)
(display ((acc 'hello1234 'deposit) 30))