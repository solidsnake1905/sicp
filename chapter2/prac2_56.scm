(define (variable? e) (symbol? e))
(define (same-variable? v1 v2) (and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (sum? e) (and (pair? e) (eq? '+ (car e))))
(define (addend e) (car (cdr e)))
(define (augend e) (cadr (cdr e)))
(define (make-sum a1 a2) 
 (cond  ((eq? a1 '0) a2)
		((eq? a2 '0) a1)
		(else (list '+ a1 a2))))

(define (product? e) (and (pair? e) (eq? '* (car e))))
(define (multiplier e) (car (cdr e)))
(define (multiplicand e) (cadr (cdr e)))
(define (make-product a1 a2)
 (cond  ((or (eq? a1 '0) (eq? a2 '0)) 0)
		((eq? a1 '1) a2)
		((eq? a2 '1) a1)
		((and (number? a1) (number? a2)) (* a1 a2))
		(else (list '* a1 a2))))

(define (exponentiation? e)
 (and (pair? e) (eq? (car e) '**)))
(define (base e) (cadr e))
(define (exponent e) (caddr e))
(define (make-exponentiation base exponent)
 (cond	((eq? base '1) 1)
		((eq? exponent '0) 0)
		(else (list '** base exponent))))

(define (deriv expr var)
 (cond ((number? expr) 0)
	   ((variable? expr)
		(if (same-variable? expr var) 1 0))
	   ((sum? expr)
		(make-sum (deriv (addend expr) var)
				  (deriv (augend expr) var)))
	   ((product? expr)
		(make-sum 
		 (make-product (multiplier expr) (deriv (multiplicand expr) var))
		 (make-product (deriv (multiplier expr) var) (multiplicand expr))))
	   ((exponentiation? expr)
		(make-product (exponent expr) (make-product (make-exponentiation (base expr) (list '- (exponent expr) 1)) (deriv (base expr) var))))
	   (else (error "unknown expression type -- DERIV" expr))
	   ))

(display (deriv '(+ x 1) 'x))
(newline)
(display (deriv '(* (* x y) (+ x 3)) 'x))
(newline)
(display (deriv '(** (* x 2) 5) 'x))
(newline)

;(display (sum? '(+ 1 2)))
;(newline)
;(display (addend '(+ 1 2)))
;(newline)
;(display (augend '(+ 1 2)))
;(newline)
;(display (make-sum 'x 'y))
;(newline)
;
;(display (product? '(* 1 2)))
;(newline)
;(display (multiplier '(* 1 2)))
;(newline)
;(display (multiplicand '(* 1 2)))
;(newline)
;(display (make-product 'x 'y))
;(newline)

