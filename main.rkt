#lang racket
(require "algorithms/dice.rkt")
(require "algorithms/lcs.rkt")

(define text1 (read-line (current-input-port) 'any))
(define text2 (read-line (current-input-port) 'any))

(display "Similaridade por LCS: ")
(println (lcs text1 text2))
(display "Similaridade por Dice's Coefficient: ")
(println (dice text1 text2))
