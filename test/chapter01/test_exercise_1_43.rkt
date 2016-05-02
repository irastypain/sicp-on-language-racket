#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_43.rkt")

(check-equal? ((repeated inc 2) 5) 7 (printf "test#1 1.43 passed\n"))
(check-equal? ((repeated (repeated inc 1) 2) 5) 7 (printf "test#2 1.43 passed\n"))

(check-equal? ((repeated square 2) 5) 625 (printf "test#3 1.43 passed\n"))
(check-equal? ((repeated (repeated square 1) 2) 5) 625 (printf "test#4 1.43 passed\n"))
(check-equal? ((repeated (repeated square 2) 2) 2) 65536 (printf "test#5 1.43 passed\n"))