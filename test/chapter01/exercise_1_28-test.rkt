#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_28.rkt")

(define tests
  (test-suite
    "Miller-Rabin test"

    (check-true (miller-rabin-test 5))
    (check-true (miller-rabin-test 17))
    (check-true (miller-rabin-test 10111))
    (check-false (miller-rabin-test 561))
    (check-false (miller-rabin-test 1105))
    (check-false (miller-rabin-test 1729))))

(run-tests tests 'verbose)
