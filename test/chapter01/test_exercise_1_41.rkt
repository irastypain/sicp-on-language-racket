#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_41.rkt")

(check-equal? (((double (double double)) inc) 5) 21 (printf "test#1 1.41 passed\n"))
(check-equal? ((double square) 5) 625 (printf "test#2 1.41 passed\n"))