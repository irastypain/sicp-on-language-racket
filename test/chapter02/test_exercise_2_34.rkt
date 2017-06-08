#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_34.rkt")

(check-equal? (horner-eval 2 (list 1 3 0 5 0 1))
              79
              (printf "test#1 2.34 passed\n"))

(check-equal? (horner-eval 3 (list 0 2 1 0 4))
              339
              (printf "test#2 2.34 passed\n"))
