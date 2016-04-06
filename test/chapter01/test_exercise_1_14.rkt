#lang racket

(require rackunit "../../src/chapter01/exercise_1_14.rkt")

(check-equal? (count-change 11) 4 (printf "test#1 1.14 passed\n"))
(check-equal? (count-change 41) 31 (printf "test#2 1.14 passed\n"))
(check-equal? (count-change 104) 292 (printf "test#3 1.14 passed\n"))
