#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_41.rkt")

(check-equal? (triples-with-sum 5 5)
              (list)
              (printf "test#1 2.41 passed\n"))

(check-equal? (triples-with-sum 6 5)
              (list (list 3 2 1))
              (printf "test#2 2.41 passed\n"))

(check-equal? (triples-with-sum 8 5)
              (list (list 4 3 1) (list 5 2 1))
              (printf "test#3 2.41 passed\n"))