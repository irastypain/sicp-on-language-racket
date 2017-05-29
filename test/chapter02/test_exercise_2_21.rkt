#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_21.rkt")

(check-equal? (square-list (list 1 2 3 4)) (list 1 4 9 16) (printf "test#1 2.21 passed\n"))
(check-equal? (square-list (list 5 3 5 6 7)) (list 25 9 25 36 49) (printf "test#2 2.21 passed\n"))
