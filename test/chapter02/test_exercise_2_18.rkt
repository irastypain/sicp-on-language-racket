#lang racket

(require rackunit "../../src/chapter02/exercise_2_18.rkt")

(check-equal? (reverse (list 1 2 3 4)) (list 4 3 2 1) (printf "test#1 2.18 passed\n"))
(check-equal? (reverse (list 1 4 9 16 25)) (list 25 16 9 4 1) (printf "test#2 2.18 passed\n"))
(check-equal? (reverse (list 1 (list 2 3) 4)) (list 4 (list 3 2) 1) (printf "test#3 2.18 passed\n"))