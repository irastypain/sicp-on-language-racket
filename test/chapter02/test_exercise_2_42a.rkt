#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_42a.rkt")

(check-equal? (queens 4)
              '(((3 4) (1 3) (4 2) (2 1)) ((2 4) (4 3) (1 2) (3 1)))
              (printf "test#1 2.42a passed\n"))

(check-equal? (length (queens 8)) 92 (printf "test#2 2.42a passed\n"))
