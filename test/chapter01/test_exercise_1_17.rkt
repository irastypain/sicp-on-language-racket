#lang racket

(require rackunit "../../src/chapter01/exercise_1_17.rkt")

(check-equal? (fast-multiplication 4 6) 24 (printf "test#1 1.17 passed\n"))
(check-equal? (fast-multiplication 3 9) 27 (printf "test#2 1.17 passed\n"))
(check-equal? (fast-multiplication 15 13) 195 (printf "test#3 1.17 passed\n"))