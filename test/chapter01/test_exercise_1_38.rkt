#lang racket

(require rackunit "../../src/chapter01/exercise_1_38.rkt")

(check-= (e 10) 2.71828182846 0.000001 (printf "test#1 1.38 passed\n"))
(check-= (e 100) 2.71828182846 0.0000001 (printf "test#2 1.38 passed\n"))