#lang racket
(require "algorithms/dice.rkt")
(require "algorithms/lcs.rkt")
(require rackunit/text-ui)
(require rackunit)

(define dice-test
  (test-suite
    "Testes para Dice's Coefficient"
    (check-equal? (dice "CONSERVATIONALISTS" "CONVERSATIONALISTS") 0.7647058823529411)
    (check-equal? (dice "WHIRLED" "WORLD") 0.2)
    (check-equal? (dice "COMPLEMENT" "COMPLIMENT") 0.7777777777777778)
    (check-equal? (dice "BAZAAR" "BIZARRE") 0.36363636363636365)
    (check-equal? (dice "ACCESSARY" "ACCESSORY") 0.75)
    (check-equal? (dice "ALGORITHMS ARE FUN" "LOGARITHMS ARE TO") 0.6060606060606061)
    (check-equal? (dice "ASSISTANCE" "ASSISTANTS") 0.7777777777777778)
    (check-equal? (dice "ALL TOGETHER" "ALTOGETHER") 0.8)
    (check-equal? (dice "IDENTICAL STRINGS" "IDENTICAL STRINGS") 1.0)
  )
)

(define lcs-test
  (test-suite
    "Testes para LCS"
    (check-equal? (lcs "CONSERVATIONALISTS" "CONVERSATIONALISTS") 0.8888888888888888)
    (check-equal? (lcs "WHIRLED" "WORLD") 0.57142857142857140)
    (check-equal? (lcs "COMPLEMENT" "COMPLIMENT") 0.9)
    (check-equal? (lcs "BAZAAR" "BIZARRE") 0.5714285714285714)
    (check-equal? (lcs "ACCESSARY" "ACCESSORY") 0.8888888888888888)
    (check-equal? (lcs "ALGORITHMS ARE FUN" "LOGARITHMS ARE TO") 0.7222222222222222)
    (check-equal? (lcs "ASSISTANCE" "ASSISTANTS") 0.8)
    (check-equal? (lcs "ALL TOGETHER" "ALTOGETHER") 0.8333333333333334)
    (check-equal? (lcs "IDENTICAL STRINGS" "IDENTICAL STRINGS") 1.0)
  )
)

(run-tests dice-test 'verbose)
(run-tests lcs-test 'verbose)