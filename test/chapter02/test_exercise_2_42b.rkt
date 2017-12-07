#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_42b.rkt")

(check-equal? (queens 4)
              '((3 1 4 2) (2 4 1 3))
              (printf "test#1 2.42b passed\n"))

(check-equal? (length (queens 8)) 92 (printf "test#2 2.42b passed\n"))
