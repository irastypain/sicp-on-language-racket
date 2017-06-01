#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_27.rkt")

(check-equal? (deep-reverse (list (list 1 2) (list 3 4)))
              (list (list 4 3) (list 2 1))
              (printf "test#1 2.27 passed\n"))

(check-equal? (deep-reverse (list (list (list 1 4) 9)(list 16) 25))
              (list 25 (list 16) (list 9 (list 4 1)))
              (printf "test#2 2.27 passed\n"))

(check-equal? (deep-reverse (list 1 (list 2 3) 4))
              (list 4 (list 3 2) 1)
              (printf "test#3 2.27 passed\n"))
