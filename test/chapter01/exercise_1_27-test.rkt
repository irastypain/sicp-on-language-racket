#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_27.rkt")

(define tests
  (test-suite
    "Carmichael numbers test"

    (check-true (test-k-all 561))
    (check-true (test-k-all 1105))
    (check-true (test-k-all 1729))
    (check-true (test-k-all 2465))
    (check-true (test-k-all 2821))
    (check-true (test-k-all 6601))))

(run-tests tests 'verbose)
