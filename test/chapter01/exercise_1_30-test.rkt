#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_30.rkt"
         (only-in "../../lib/base.rkt"
                  cube
                  inc
                  square))

(define tests
  (test-suite
    "Sum of sequence [Iterative process]"

    (check-equal? 36 (sum cube 0 inc 3))
    (check-equal? 784 (sum cube 0 inc 7))
    (check-equal? 8280 (sum cube 2 inc 13))
    (check-equal? 14 (sum square 0 inc 3))
    (check-equal? 4168 (sum cube 2 square 35))))

(run-tests tests 'verbose)
