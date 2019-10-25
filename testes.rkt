;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Testes Dice's Coefficient
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(equal? (dice "CONSERVATIONALISTS" "CONVERSATIONALISTS") 0.7647058823529411)
(equal? (dice "WHIRLED" "WORLD") 0.2)
(equal? (dice "COMPLEMENT" "COMPLIMENT") 0.7777777777777778)
(equal? (dice "BAZAAR" "BIZARRE") 0.36363636363636365)
(equal? (dice "ACCESSARY" "ACCESSORY") 0.75)
(equal? (dice "ALGORITHMS ARE FUN" "LOGARITHMS ARE TO") 0.6060606060606061)
(equal? (dice "ASSISTANCE" "ASSISTANTS") 0.7777777777777778)
(equal? (dice "ALL TOGETHER" "ALTOGETHER") 0.8)
(equal? (dice "IDENTICAL STRINGS" "IDENTICAL STRINGS") 1.0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Testes LCS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(equal? (lcs "CONSERVATIONALISTS" "CONVERSATIONALISTS") 0.8888888888888888)
(equal? (lcs "WHIRLED" "WORLD") 0.57142857142857140)
(equal? (lcs "COMPLEMENT" "COMPLIMENT") 0.9)
(equal? (lcs "BAZAAR" "BIZARRE") 0.5714285714285714)
(equal? (lcs "ACCESSARY" "ACCESSORY") 0.8888888888888888)
(equal? (lcs "ALGORITHMS ARE FUN" "LOGARITHMS ARE TO") 0.7222222222222222)
(equal? (lcs "ASSISTANCE" "ASSISTANTS") 0.8)
(equal? (lcs "ALL TOGETHER" "ALTOGETHER") 0.8333333333333334)
(equal? (lcs "IDENTICAL STRINGS" "IDENTICAL STRINGS") 1.0)