#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_29.rkt"
         (only-in "../../lib/base.rkt"
                  cube))

(define tolerance 0.00001)

(define tests
  (test-suite
    "Simpson rule"

    (check-= 0.24999 (simpson cube 0 1 100.0) tolerance)
    (check-= 0.25000 (simpson cube 0 1 1000.0) tolerance)))

(run-tests tests 'verbose)
