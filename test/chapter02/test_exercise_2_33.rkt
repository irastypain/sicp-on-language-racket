#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/chapter02/exercise_2_33.rkt")

(check-equal? (map square (list 1 2 3 4 5 6))
              (list 1 4 9 16 25 36)
              (printf "test#1 2.33 passed\n"))

(check-equal? (append (list 1 2 3) (list 4 5 6))
              (list 1 2 3 4 5 6)
              (printf "test#2 2.33 passed\n"))

(check-equal? (length (list 1 2 3 4 5 6))
              6
              (printf "test#3 2.33 passed\n"))
