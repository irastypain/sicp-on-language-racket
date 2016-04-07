#lang racket

(require rackunit "../../src/chapter01/exercise_1_21.rkt")

(check-equal? (smallest-divisor 199) 199 (printf "test#1 1.21 passed\n"))
(check-equal? (smallest-divisor 1999) 1999 (printf "test#2 1.21 passed\n"))
(check-equal? (smallest-divisor 19999) 7 (printf "test#3 1.21 passed\n"))