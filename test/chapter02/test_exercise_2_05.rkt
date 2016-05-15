#lang racket

(require rackunit "../../src/chapter02/exercise_2_05.rkt")

(check-equal? (car (cons 1 2)) 1 (printf "test#1 2.05 passed\n"))
(check-equal? (car (cons 4 3)) 4 (printf "test#2 2.05 passed\n"))
(check-equal? (cdr (cons 1 2)) 2 (printf "test#3 2.05 passed\n"))
(check-equal? (cdr (cons 4 3)) 3 (printf "test#4 2.05 passed\n"))