#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_12.rkt"
         (except-in "../../src/lib/interval-arithmetic.rkt"
                    make-center-percent
                    percent))

(define ab (make-center-percent -10 10))
(define cd (make-center-percent 0 6))
(define ef (make-center-percent 35 7))

(check-equal? (percent ab) 10 (printf "test#1 2.12 passed\n"))
(check-equal? (percent cd) 6 (printf "test#2 2.12 passed\n"))
(check-equal? (percent ef) 7 (printf "test#3 2.12 passed\n"))
