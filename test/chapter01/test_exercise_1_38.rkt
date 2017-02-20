#lang racket

(require rackunit
         "../../src/lib/const.rkt"
         "../../src/chapter01/exercise_1_38.rkt")

(check-= (e 10) 2.71828 tolerance (printf "test#1 1.38 passed\n"))
(check-= (e 100) 2.71828 tolerance (printf "test#2 1.38 passed\n"))
