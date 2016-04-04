#lang racket

(require rackunit "../../src/chapter01/exercise_1_03.rkt")

(check-equal? (sum-of-squares-of-top-two 2 3 3) 18 (printf "test#1 1.3 passed\n"))
(check-equal? (sum-of-squares-of-top-two 3 3 4) 25 (printf "test#2 1.3 passed\n"))
(check-equal? (sum-of-squares-of-top-two 3 7 4) 65 (printf "test#3 1.3 passed\n"))