#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_36.rkt"
         (only-in "../../lib/base.rkt"
                  average)
         (only-in "../../lib/functions.rkt"
                  tolerance))

(define tests
  (test-suite
    "Solution of `x^x = 1000`"

    (test-case
      "Without average damping"
      (check-= (fixed-point  (lambda (x) (/ (log 1000) (log x))) 2.0)
               4.55554
               tolerance))
    (test-case
      "With average damping"
      (check-= (fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0)
               4.55554
               tolerance))))

(run-tests tests 'verbose)
