#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_47a.rkt")

(define f1 (make-frame 1 2 3))
(define f2 (make-frame 4 5 6))

(check-equal? (origin-frame f1) 1 (printf "test#1 2.47a passed\n"))
(check-equal? (edge1-frame f2) 5 (printf "test#2 2.47a passed\n"))
(check-equal? (edge2-frame f1) 3 (printf "test#3 2.47a passed\n"))