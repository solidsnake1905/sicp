(define tree1 (list 1 3 (list 5 7) 9))
(display tree1)
(newline)
(display (car (cdr (car (cdr (cdr tree1))))))
(newline)

(define tree2 (list (list 7)))
(display tree2)
(newline)
(display (car (car tree2)))
(newline)

(define tree3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))
(display tree3)
(newline)
(display (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr tree3)))))))))))))
(newline)
