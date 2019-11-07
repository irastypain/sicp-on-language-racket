#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_16.rkt")

(define tests
  (test-suite
    "Fast exponentiation"

    (check-equal? 1024 (fast-expt 2 10))
    (check-equal? 6561 (fast-expt 3 8))
    (check-equal? 1220703125 (fast-expt 5 13))))

(run-tests tests 'verbose)
