#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_32.rkt")

(check-equal? (subsets (list 1 2 3))
              (list (list)
                    (list 3)
                    (list 2)
                    (list 2 3)
                    (list 1)
                    (list 1 3)
                    (list 1 2)
                    (list 1 2 3))
              (printf "test#1 2.32 passed\n"))
