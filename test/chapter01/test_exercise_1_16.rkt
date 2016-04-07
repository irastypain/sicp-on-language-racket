#lang racket

(require rackunit "../../src/chapter01/exercise_1_16.rkt")

(check-equal? (fast-expt 2 10) 2048 (printf "test#1 1.16 passed\n"))
(check-equal? (fast-expt 3 8) 6561 (printf "test#2 1.16 passed\n"))
(check-equal? (fast-expt 5 13) 1220703125 (printf "test#3 1.16 passed\n"))
