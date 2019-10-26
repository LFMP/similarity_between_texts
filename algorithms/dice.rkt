#lang racket
(provide dice)

(define (bigrams text lista indice)
  (cond
    [(> (+ indice 2) (string-length text)) lista]
    [else 
      (bigrams 
        text
        (append lista (list (substring text indice (+ indice 2))))
        (add1 indice)
      )
    ]
  )
)

(define (dice-match list1 list2 i j contador)
  (cond
    [(>= i (length list1)) contador]
    [(>= j (length list2)) (dice-match list1 list2 (add1 i) 0 contador)]
    [(string=? (list-ref list1 i) (list-ref list2 j)) 
      (dice-match
        list1
        (remove (list-ref list2 j) list2)
        i
        (add1 j)
        (add1 contador)
      )
    ]
    [else 
      (dice-match
        list1
        list2
        i
        (add1 j)
        contador
      )
    ]
  )
)

;;; O algoritmo Dice’s coefficient é definido como
;;; o dobro do número de termos comuns nas cadeias comparadas
;;; dividido pelo número total de termos nas duas cadeias.

(define (dice text1 text2)
  (define bigram1 (bigrams text1 (list) 0))
  (define bigram2 (bigrams text2 (list) 0))
  (exact->inexact
    (/ 
      (* 2 (dice-match bigram1 bigram2 0 0 0))
      (+ 
        (length bigram1)
        (length bigram2)
      )
    )
  )
)