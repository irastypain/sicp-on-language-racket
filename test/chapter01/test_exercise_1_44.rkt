#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/lib/const.rkt"
         "../../src/chapter01/exercise_1_44.rkt")

(check-= ((smooth square) 2) 4.0000 tolerance (printf "test#1 1.44 passed\n"))
(check-= ((smooth-n square 10) 5) 25.0000 tolerance (printf "test#2 1.44 passed\n"))
