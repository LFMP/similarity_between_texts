#lang racket
(require rackunit)
(require rackunit/text-ui)
(provide dice)

(define (dice-match text1 text2 indice)
  (cond
    [(empty? text1) 0]
    [(empty? text2) 0]
    [(< (string-length text1) 2) 0]
    [(< (string-length text2) 2) 0]
    [(cond 
      [(and 
        (< (- (string-length text1) indice) 2)
        (< (- (string-length text2) indice) 2))
        0
      ]
      [(equal? 
        (substring text1 indice (+ indice 2))
        (substring text2 indice (+ indice 2)))
        (+ 2 (dice-match text1 text2 (+ indice 1)))
      ]
      [else (dice-match text1 text2 (+ indice 1))]
    )]
  )
)

(define (dice text1 text2)
  (if (equal? text1 text2)
    1
    (exact->inexact
      (/ 
        (dice-match text1 text2 0)
        (+ 
          (- (string-length text1) 1)
          (- (string-length text2) 1)
        )
      )
    )
  )
)