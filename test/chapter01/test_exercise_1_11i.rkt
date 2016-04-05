#lang racket

(require rackunit "../../src/chapter01/exercise_1_11i.rkt")

(check-equal? (fn 1) 1 (printf "test#1 1.11 passed\n"))
(check-equal? (fn 2) 2 (printf "test#2 1.11 passed\n"))
(check-equal? (fn 3) 3 (printf "test#3 1.11 passed\n"))
(check-equal? (fn 4) 6 (printf "test#4 1.11 passed\n"))
(check-equal? (fn 5) 11 (printf "test#5 1.11 passed\n"))
(check-equal? (fn 6) 20 (printf "test#6 1.11 passed\n"))
(check-equal? (fn 7) 37 (printf "test#7 1.11 passed\n"))