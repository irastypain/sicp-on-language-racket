#lang racket

(require rackunit
         "../../src/lib/const.rkt"
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_29.rkt")

(check-= (simpson cube 0 1 100.0) 0.249999 tolerance (printf "test#1 1.29 passed\n"))
(check-= (simpson cube 0 1 1000.0) 0.250000 tolerance (printf "test#2 1.29 passed\n"))
