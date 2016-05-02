#lang racket

(require rackunit "../../src/chapter01/exercise_1_40.rkt")

(check-= (roots-of-cube 0 0 -8) 2.0 0.00001 (printf "test#1 1.40 passed\n"))
(check-= (roots-of-cube 3 -32 -132) 6.0 0.00001 (printf "test#2 1.40 passed\n"))