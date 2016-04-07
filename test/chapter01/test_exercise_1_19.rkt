#lang racket

(require rackunit "../../src/chapter01/exercise_1_19.rkt")

(check-equal? (fib 4) 3 (printf "test#1 1.19 passed\n"))
(check-equal? (fib 9) 34 (printf "test#2 1.19 passed\n"))
(check-equal? (fib 15) 610 (printf "test#3 1.19 passed\n"))