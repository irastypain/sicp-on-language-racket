#lang racket

(require rackunit "../../src/chapter01/exercise_1_39.rkt")

(check-= (tan-cf 1.0 10) 1.557407724 0.000001 (printf "test#1 1.39 passed\n"))
(check-= (tan-cf 1.0 1000) 1.557407724 0.0000001 (printf "test#2 1.39 passed\n"))