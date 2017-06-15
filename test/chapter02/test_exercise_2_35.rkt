#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_35.rkt")

(check-equal? (count-leaves (list))
              0
              (printf "test#1 2.35 passed\n"))

(check-equal? (count-leaves (list 1 2 (list 3 4) (list 3 (list 4))))
              6
              (printf "test#2 2.35 passed\n"))

(check-equal? (count-leaves (list 0 (list 2 1) (list 3 2 1) 0 (list (list 4))))
              8
              (printf "test#3 2.35 passed\n"))