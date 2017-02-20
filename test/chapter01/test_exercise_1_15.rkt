#lang racket

(require rackunit
         "../../src/lib/const.rkt"
         "../../src/chapter01/exercise_1_15.rkt")

(check-= (sine 1) 0.84159 tolerance (printf "test#1 1.15 passed\n"))
(check-= (sine 2) 0.90853 tolerance (printf "test#2 1.15 passed\n"))
(check-= (sine 4) -0.75786 tolerance (printf "test#3 1.15 passed\n"))
