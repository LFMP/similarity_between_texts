#lang racket
(require rackunit)
(require rackunit/text-ui)
(require memo)
(provide lcs)

(define/memoize (lcs-list list1 list2 indice1 indice2)
  (cond 
    [(or 
      (equal? indice1 0)
      (equal? indice2 0))
      0
    ]
    [(equal? 
      (list-ref list1 (- indice1 1))
      (list-ref list2 (- indice2 1)))
      (+
        1
        (lcs-list
          list1
          list2
          (- indice1 1)
          (- indice2 1)
        )
      )  
    ]
    [else
      (max
        (lcs-list
          list1
          list2
          indice1
          (- indice2 1)
        )
        (lcs-list
          list1
          list2
          (- indice1 1)
          indice2
        )
      )
    ]
  )
)

(define (lcs text1 text2)
  (exact->inexact 
    (/ 
      (lcs-list 
        (string->list text1)
        (string->list text2)
        (string-length text1)
        (string-length text2)
      )
      (max 
        (string-length text1)
        (string-length text2)
      )
    )
  )
)

(lcs "AGGTAB" "GXTXAYB")