#lang racket

(require rackunit "../../src/chapter01/exercise_1_32r.rkt")

(check-equal? (sum-of 1 5) 15 (printf "test#1 1.32 passed\n"))
(check-equal? (sum-of 15 100) 4945 (printf "test#2 1.32 passed\n"))

(check-equal? (product-of 1 5) 120 (printf "test#3 1.32 passed\n"))
(check-equal? (product-of 10 20) 6704425728000 (printf "test#4 1.32 passed\n"))