#lang racket

(require rackunit "../../src/chapter01/exercise_1_15.rkt")

(check-equal? (sine 1) 0.8415945650055845 (printf "test#1 1.15 passed\n"))
(check-equal? (sine 2) 0.9085328851396501 (printf "test#2 1.15 passed\n"))
(check-equal? (sine 4) -0.7578653335073415 (printf "test#3 1.15 passed\n"))