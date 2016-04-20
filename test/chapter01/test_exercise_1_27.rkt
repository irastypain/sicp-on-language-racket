#lang racket

(require rackunit "../../src/chapter01/exercise_1_27.rkt")

(check-true (test-k-all 561) (printf "test#1 1.27 passed\n"))
(check-true (test-k-all 1105) (printf "test#2 1.27 passed\n"))
(check-true (test-k-all 1729) (printf "test#3 1.27 passed\n"))
(check-true (test-k-all 2465) (printf "test#4 1.27 passed\n"))
(check-true (test-k-all 2821) (printf "test#5 1.27 passed\n"))
(check-true (test-k-all 6601) (printf "test#6 1.27 passed\n"))