#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_14.rkt")

(define tests
  (test-suite
    "Count change of amount"

    (check-equal? 4 (count-change 11))
    (check-equal? 31 (count-change 41))
    (check-equal? 292 (count-change 104))))

(run-tests tests 'verbose)
