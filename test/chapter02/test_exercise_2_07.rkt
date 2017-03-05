#lang racket

(require rackunit "../../src/chapter02/exercise_2_07.rkt")

(define ab (make-interval 1 3))

(check-equal? (upper-bound ab) 3 (printf "test#1 2.07 passed\n"))
(check-equal? (lower-bound ab) 1 (printf "test#2 2.07 passed\n"))
