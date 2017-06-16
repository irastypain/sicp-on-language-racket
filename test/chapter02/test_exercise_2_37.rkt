#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_37.rkt")

(check-equal? (matrix-*-vector (list (list 1 2 3) (list 4 5 6)) (list 7 8 9))
              (list 50 122)
              (printf "test#1 2.37 passed\n"))

(check-equal? (transpose (list (list 1 2 3) (list 4 5 6) (list 7 8 9)))
              (list (list 1 4 7) (list 2 5 8) (list 3 6 9))
              (printf "test#2 2.37 passed\n"))

(check-equal? (matrix-*-matrix (list (list 10 11) (list 12 13) (list 14 15))
                               (list (list 1 2 3) (list 4 5 6)))
              (list (list 54 75 96) (list 64 89 114) (list 74 103 132))
              (printf "test#3 2.37 passed\n"))