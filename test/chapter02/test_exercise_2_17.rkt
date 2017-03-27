#lang racket

(require rackunit "../../src/chapter02/exercise_2_17.rkt")

(check-equal? (last-pair (list 1 2 3 4)) (list 4) (printf "test#1 2.17 passed\n"))
(check-equal? (last-pair (list 14 24 34 44)) (list 44) (printf "test#2 2.17 passed\n"))
(check-equal? (last-pair (list 23 72 149 34)) (list 34) (printf "test#3 2.17 passed\n"))