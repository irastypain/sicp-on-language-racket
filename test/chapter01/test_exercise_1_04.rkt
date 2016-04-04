#lang racket

(require rackunit "../../src/chapter01/exercise_1_04.rkt")

(check-equal? (a-plus-abs-b 2 3) 5 (printf "test#1 1.4 passed\n"))
(check-equal? (a-plus-abs-b 4 -3) 7 (printf "test#2 1.4 passed\n"))
(check-equal? (a-plus-abs-b -3 0) -3 (printf "test#3 1.4 passed\n"))
(check-equal? (a-plus-abs-b -3 4) 1 (printf "test#4 1.4 passed\n"))