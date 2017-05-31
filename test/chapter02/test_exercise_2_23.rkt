#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/chapter02/exercise_2_23.rkt")

(check-true (for-each (lambda (x) (newline) (display x)) (list 1 2 3 4)) (printf "\ntest#1 2.23 passed\n"))
(check-true (for-each (lambda (x) (newline) (display (square x))) (list 8 3 5 6 7)) (printf "\ntest#2 2.23 passed\n"))
(check-true (for-each square (list 5 6 7)) (printf "\ntest#3 2.23 passed\n"))