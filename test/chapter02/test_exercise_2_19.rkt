#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_19.rkt"
         "../../src/lib/lists.rkt")

(define us-coins (list 50 25 10 5 1))
(define us-coins-rev (reverse us-coins))
(define us-coins-mix (list 5 50 25 1 10))

(check-equal? (cc 100 us-coins) 292 (printf "test#1 2.19 passed\n"))
(check-equal? (cc 100 us-coins-rev) 292 (printf "test#2 2.19 passed\n"))
(check-equal? (cc 100 us-coins-mix) 292 (printf "test#3 2.19 passed\n"))