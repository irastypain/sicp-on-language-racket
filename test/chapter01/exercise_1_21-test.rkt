#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_21.rkt")

(define tests
  (test-suite
    "Smallest divisors for 199, 1999 and 19999"

    (check-equal? 199 (smallest-divisor 199))
    (check-equal? 1999 (smallest-divisor 1999))
    (check-equal? 7 (smallest-divisor 19999))))

(run-tests tests 'verbose)
