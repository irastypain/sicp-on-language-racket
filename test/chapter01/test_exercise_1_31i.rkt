#lang racket

(require rackunit "../../src/chapter01/exercise_1_31i.rkt")

(check-equal? (factorial 5) 120 (printf "test#1 1.31 passed\n"))
(check-equal? (factorial 10) 3628800 (printf "test#2 1.31 passed\n"))

(check-equal? (pi 1000) 3.143163842419198 (printf "test#3 1.31 passed\n"))
(check-equal? (pi 10000) 3.1417497371492673 (printf "test#4 1.31 passed\n"))