#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_44.rkt")

(check-= ((smooth square 1.0) 2) 4.66666 0.00001 (printf "test#1 1.44 passed\n"))
(check-= ((smooth-n square 1.0 2) 2) 5.33333 0.00001 (printf "test#2 1.44 passed\n"))