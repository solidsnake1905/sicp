(define (square x) (* x x))
(define (accumulate op initial sequence)
 (if (null? sequence)
	 initial
	 (op (car sequence) 
		 (accumulate op initial (cdr sequence)))))

(define (map-custom p sequence)
 (accumulate (lambda (x y) (cons (p x) y)) () sequence))

(define (append-custom seq1 seq2)
 (accumulate cons seq2 seq1))

(define (length-custom sequence)
 (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(display (map-custom square (list 1 2 3 4)))
(newline)

(display (append-custom (list 1 2 3 4) (list 5 6 7 8)))
(newline)

(display (length-custom (list 1 2 3 4 5 6 7 8 9 10)))
(newline)
