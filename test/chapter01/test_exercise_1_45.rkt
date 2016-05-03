#lang racket

(require rackunit
         "../../src/chapter01/exercise_1_45.rkt")

(check-= (root-n 16 4) 2.0 0.00001 (printf "test#1 1.45 passed\n"))
(check-= (root-n 1024 2) 32.0 0.00001 (printf "test#2 1.45 passed\n"))
(check-= (root-n 1024 10) 2.0 0.00001 (printf "test#3 1.45 passed\n"))