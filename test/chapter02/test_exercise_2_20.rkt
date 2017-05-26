#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_20.rkt")

(check-equal? (same-parity 1 2 3 4 5 6 7) (list 1 3 5 7) (printf "test#1 2.20 passed\n"))
(check-equal? (same-parity 2 3 4 5 6 7) (list 2 4 6) (printf "test#2 2.20 passed\n"))