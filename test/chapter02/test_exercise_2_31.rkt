#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_31.rkt")

(check-equal? (square-tree (list (list 1 2) (list 3 4)))
              (list (list 1 4) (list 9 16))
              (printf "test#1 2.31 passed\n"))

(check-equal? (square-tree (list (list (list 1 4) 9) (list 16) 25))
              (list (list (list 1 16) 81) (list 256) 625)
              (printf "test#2 2.31 passed\n"))
