(define (entry tree) (car tree))
(define (left-branch tree) (cadr tree))
(define (right-branch tree) (caddr tree))
(define (make-tree entry left right)
 (list entry left right))
(define (element-of-set? x set)
 (cond ((null? set) #f)
	   ((= x (entry set)) #t)
	   ((< x (entry set)) (element-of-set? x (left-branch set)))
	   ((> x (entry set)) (element-of-set? x (right-branch set)))
 )
 )

(define (adjoin-set x set)
 (cond ((null? set) (make-tree x () ()))
	   ((< x (entry set)) (list (entry set) (adjoin-set x (left-branch set)) (right-branch set)))
	   ((> x (entry set)) (list (entry set) (left-branch set) (adjoin-set x (right-branch set))))
	   ((= x (entry set)) (entry set))))

(define x (make-tree 3 (make-tree 2 (make-tree 1 () ()) ()) (make-tree 5 (make-tree 4 () ()) (make-tree 6 () ()))))

(newline)
(display (entry x))
(newline)
(display (left-branch x))
(newline)
(display (right-branch x))
(newline)
(display (element-of-set? 1 x))
(newline)
(display (element-of-set? 2 x))
(newline)
(display (element-of-set? 4 x))
(newline)
(display (element-of-set? 7 x))
(newline)
(display (adjoin-set 7 x))
(newline)
(display (adjoin-set 0 x))
(newline)
(display (adjoin-set 2 x))
(newline)

