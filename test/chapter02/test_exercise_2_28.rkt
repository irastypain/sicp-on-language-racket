#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_28.rkt")

(check-equal? (fringe (list (list 1 2) (list 3 4)))
              (list 1 2 3 4)
              (printf "test#1 2.28 passed\n"))

(check-equal? (fringe (list (list (list 1 4) 9) (list 16) 25))
              (list 1 4 9 16 25)
              (printf "test#2 2.28 passed\n"))

(check-equal? (fringe (list 1 (list 2 3) 4))
              (list 1 2 3 4)
              (printf "test#3 2.28 passed\n"))
