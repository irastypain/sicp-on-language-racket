#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_40.rkt")

(check-equal? (prime-sum-pairs 6)
              (list
               (list 2 1 3)
               (list 3 2 5)
               (list 4 1 5)
               (list 4 3 7)
               (list 5 2 7)
               (list 6 1 7)
               (list 6 5 11))
              (printf "test#1 2.40 passed\n"))