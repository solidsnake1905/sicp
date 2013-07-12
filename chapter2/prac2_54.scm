(define (equal-custom? list1 list2)
 (cond ((not (= (length list1) (length list2))) #f)
	   ((and (null? list1) (null? list2)) #t)
	   (else (and (eq? (car list1) (car list2)) (equal-custom? (cdr list1) (cdr list2)))))
 )

(display (equal-custom? '(a b c) '(a b c)))
(newline)
