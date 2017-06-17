#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_38.rkt")

(check-equal? (fold-left + 0 (list 1 2 3 4 5 6))
              21
              (printf "test#1 2.38 passed\n"))

(check-equal? (fold-right + 0 (list 1 2 3 4 5 6))
              21
              (printf "test#2 2.38 passed\n"))

(check-equal? (fold-left list null (list 1 2 3 4 5 6))
              (list (list (list (list (list (list (list) 1) 2) 3) 4) 5) 6)
              (printf "test#3 2.38 passed\n"))

(check-equal? (fold-right list null (list 1 2 3 4 5 6))
              (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 (list)))))))
              (printf "test#4 2.38 passed\n"))

(check-not-equal? (fold-left - 0 (list 1 2 3 4 5 6))
                  (fold-right - 0 (list 1 2 3 4 5 6))
                  (printf "test#5 2.38 passed\n"))

(check-not-equal? (fold-left (lambda (x y) (abs (- x y))) 0 (list 1 2 3 4 5 6))
                  (fold-right (lambda (x y) (abs (- x y))) 0 (list 1 2 3 4 5 6))
                  (printf "test#6 2.38 passed\n"))