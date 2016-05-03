#lang racket

(require rackunit
         "../../src/chapter01/exercise_1_46.rkt")

(check-= (sqrt 4) 2.0 0.00001 (printf "test#1 1.46 passed\n"))
(check-= (sqrt 9.0) 3.0 0.00001 (printf "test#2 1.46 passed\n"))
(check-= (sqrt 0.04) 0.2 0.00001 (printf "test#3 1.46 passed\n"))