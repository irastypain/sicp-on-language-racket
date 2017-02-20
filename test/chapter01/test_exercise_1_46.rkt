#lang racket

(require rackunit
         "../../src/lib/const.rkt"
         "../../src/chapter01/exercise_1_46.rkt")

(check-= (improve-sqrt 4) 2.0 tolerance (printf "test#1 1.46 passed\n"))
(check-= (improve-sqrt 9.0) 3.0 tolerance (printf "test#2 1.46 passed\n"))
(check-= (improve-sqrt 0.04) 0.2 tolerance (printf "test#3 1.46 passed\n"))

(check-= (improve-fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0) 1.618039 tolerance (printf "test#4 1.46 passed\n"))