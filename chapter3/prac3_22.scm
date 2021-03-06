(define (make-queue)
 (let ((front-ptr '())
	   (rear-ptr '()))
  (define (set-front-ptr! item)
   (set! front-ptr item))
  (define (set-rear-ptr! item)
   (set! rear-ptr item))
  (define (empty-queue?)
   (null? front-ptr))
  (define (insert-queue! item)
   (let ((new-pair (cons item ())))
	(cond ((empty-queue?)
		   (set-front-ptr! new-pair)
		   (set-rear-ptr! new-pair)
		   front-ptr)
		  (else
		   (set-cdr! rear-ptr new-pair)
		   (set-rear-ptr! new-pair)
		   front-ptr))))
  (define (delete-queue!)
   (cond ((empty-queue?)
		  (error "DELETE! called with an empty queue" front-ptr))
		 (else (set-front-ptr! (cdr front-ptr))
		  front-ptr)))
  (define (dispatch m)
   (cond ((eq? m 'front-ptr)
		  front-ptr)
		 ((eq? m 'rear-ptr)
		  rear-ptr)
		 ((eq? m 'set-front-ptr!)
		  set-front-ptr!)
		 ((eq? m 'set-rear-ptr!)
		  set-rear-ptr!)
		 ((eq? m 'insert-queue!)
		  insert-queue!)
		 ((eq? m 'delete-queue!)
		  delete-queue!)
		 ((eq? m 'getqueue)
		  front-ptr)))
  dispatch))

(define q (make-queue))
(newline)
(display (q 'getqueue))
(newline)
(display ((q 'insert-queue!) 1))
(newline)
(display ((q 'insert-queue!) 2))
(newline)
(display ((q 'insert-queue!) 3))
(newline)
(display ((q 'insert-queue!) 4))
(newline)
(display ((q 'insert-queue!) 5))
(newline)
(display ((q 'delete-queue!)))
(newline)
(display ((q 'delete-queue!)))
(newline)
(display ((q 'delete-queue!)))
(newline)
(display ((q 'delete-queue!)))
(newline)
(display ((q 'delete-queue!)))
(newline)
(display ((q 'delete-queue!)))
(newline)
