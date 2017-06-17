#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_39.rkt")

(check-equal? (reverse-l (list 1 2 3 4 5 6))
              (list 6 5 4 3 2 1)
              (printf "test#1 2.39 passed\n"))

(check-equal? (reverse-l (list 1 (list 2 3) 4 (list 5 (list 6))))
              (list (list (list 6) 5) 4 (list 3 2) 1)
              (printf "test#2 2.39 passed\n"))

(check-equal? (reverse-r (list 1 2 3 4 5 6))
              (list 6 5 4 3 2 1)
              (printf "test#3 2.39 passed\n"))

(check-equal? (reverse-r (list 1 (list 2 3) 4 (list 5 (list 6))))
              (list (list (list 6) 5) 4 (list 3 2) 1)
              (printf "test#4 2.39 passed\n"))
