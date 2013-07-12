(define (accumulate op initial sequence)
 (cond ((null? sequence) initial)
	   ((not (pair? sequence)) sequence)
	   (else (op (car sequence)
				 (accumulate op initial (cdr sequence))))
  )
)

(define (prime? a)
 (define (prime?-iter i)
  (if (> (* i i) a)
	  #t
	  (if (= (remainder a i) 0)
		  #f
		  (prime?-iter (+ i 1)))))
 (prime?-iter 2)
 )

(define (enumerate-interval i j)
 (if (> i j)
	 ()
	 (cons i (enumerate-interval (+ i 1) j))))

(define generate (lambda (i) (map (lambda (j) (list i j)) (enumerate-interval 1 (- i 1)))))

(define (flatmap proc seq)
 (accumulate append () (map proc seq)))

(define (uniq-pairs n)
 (flatmap generate (enumerate-interval 1 n)))

(define (make-pair-sum pair)
 (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (filter predicate seq)
 (cond ((null? seq) ())
	   (else (if (predicate (car seq))
				 (cons (car seq) (filter predicate (cdr seq)))
				 (filter predicate (cdr seq))))))

(define (prime-sum? pair)
 (prime? (+ (car pair) (cadr pair))))

(define (prime-sum-pairs n)
 (map make-pair-sum (filter prime-sum? (uniq-pairs n))))
(newline)
(display (filter prime? (list 1 2 3 4 5 6 7 8 9)))
(newline)
(display (flatmap generate (enumerate-interval 1 6)))
(newline)
(display (prime-sum-pairs 6))
(newline)
