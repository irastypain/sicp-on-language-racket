#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_07.rkt"
         "../../src/chapter02/exercise_2_08.rkt")

(define ab (make-interval 1 3))
(define cd (make-interval 2 5))

(check-equal? (lower-bound (sub-interval ab cd)) -4 (printf "test#1 2.08 passed\n"))
(check-equal? (upper-bound (sub-interval ab cd)) 1 (printf "test#2 2.08 passed\n"))
