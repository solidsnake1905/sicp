(define (normalize x)
 (if (< (* (car x) (cdr x)) 0)
	 (cons (- (abs (car x))) (abs (cdr x)))
	 (cons (abs (car x)) (abs (cdr x)))))
(define (make-rat n d)
		(let ((g (gcd n d)))
			 (normalize (cons (/ n g) (/ d g)))))

(define (numer x) (car x))
(define (denom x) (cdr x))

(define (add-rat x y)
 (make-rat (+ (* (numer x) (denom y)) (* (numer y) (denom x)))
		   (* (denom x) (denom y))))

(define (sub-rat x y)
 (make-rat (- (* (numer x) (denom y)) (* (numer y) (denom x)))
		   (* (denom x) (denom y))))

(define (mul-rat x y)
 (make-rat (* (numer x) (numer y))
		   (* (denom x) (denom y))))

(define (div-rat x y)
 (mul-rat x (make-rat (denom y) (numer x))))

(define (equal-rat? x y)
 (= (* (numer x) (denom y)) (* (denom x) (numer y))))

(define (print-rat x) 
  (display (numer x))
  (display "/")
  (display (denom x))
  (newline)
  )

(define a (make-rat 2 -6))
(define b (make-rat 1 5))

(print-rat (add-rat a b))
(print-rat (sub-rat a b))
(print-rat (mul-rat a b))
(print-rat (div-rat a b))
(print (equal-rat? a b))

