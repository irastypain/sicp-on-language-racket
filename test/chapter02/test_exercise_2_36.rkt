#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_36.rkt")

(check-equal? (accumulate-n + 0 (list (list) (list)))
              (list)
              (printf "test#1 2.36 passed\n"))

(check-equal? (accumulate-n + 0 (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
              (list 22 26 30)
              (printf "test#2 2.36 passed\n"))
