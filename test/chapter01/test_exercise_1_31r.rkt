#lang racket

(require rackunit
         "../../src/lib/const.rkt"
         "../../src/chapter01/exercise_1_31r.rkt")

(check-equal? (factorial 5) 120 (printf "test#1 1.31r passed\n"))
(check-equal? (factorial 10) 3628800 (printf "test#2 1.31r passed\n"))

(check-= (pi 1000) 3.14316 tolerance (printf "test#3 1.31r passed\n"))
(check-= (pi 10000) 3.14174 tolerance (printf "test#4 1.31r passed\n"))
