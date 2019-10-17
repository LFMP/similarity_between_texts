#lang racket
(require rackunit)
(require rackunit/text-ui)
(provide lcs)

(define (longest xlist1 xlist2)
  (if (> (length xlist1) (length xlist2))
      xlist1 xlist2))
 
(define memo (make-hash))

(define (lookup xlist1 xlist2)
  (hash-ref memo (cons xlist1 xlist2) #f))
(define (store xlist1 xlist2 r)
  (hash-set! memo (cons xlist1 xlist2) r)
  r)
 
(define (lcs-list list1 list2)
  (or (lookup list1 list2)
    (store list1 list2
      (match* (list1 list2)
        [((cons x xlist1) (cons y xlist2))
        (if (equal? x y)
          (cons x (lcs-list xlist1 xlist2))
          (longest (lcs-list list1 xlist2) (lcs-list xlist1 list2)))]
        [(_ _) '()]))))

(define (lcs text1 text2)
  (exact->inexact 
    (/ 
      (length (lcs-list (string->list text1) (string->list text2)))
      (max 
        (length (string->list text1))
        (length (string->list text1))
      )
    )
  )
)