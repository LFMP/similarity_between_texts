#lang racket
(require "algorithms/dice.rkt")
(require "algorithms/lcs.rkt")

(define text1 (file->string "texts/text1.txt"))
(define text2 (file->string "texts/text2.txt"))

(display "Similaridade por LCS: ")
(println (lcs text1 text2))
(display "Similaridade por Dice's Coefficient: ")
(println (dice text1 text2))

(define text3 (file->string "texts/text3.txt"))
(define text4 (file->string "texts/text4.txt"))

(display "Similaridade por LCS: ")
(println (lcs text3 text4))
(display "Similaridade por Dice's Coefficient: ")
(println (dice text3 text4))

(define text5 (file->string "texts/text5.txt"))
(define text6 (file->string "texts/text6.txt"))

(display "Similaridade por LCS: ")
(println (lcs text5 text6))
(display "Similaridade por Dice's Coefficient: ")
(println (dice text5 text6))

(define text7 (file->string "texts/text7.txt"))
(define text8 (file->string "texts/text8.txt"))

(display "Similaridade por LCS: ")
(println (lcs text7 text8))
(display "Similaridade por Dice's Coefficient: ")
(println (dice text7 text8))
