#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_15.rkt")

(define tolerance 0.00001)

(define tests
  (test-suite
    "Function sin(x) [in radians]"

    (check-= (sine 1) 0.84159 tolerance)
    (check-= (sine 2) 0.90853 tolerance)
    (check-= (sine 4) -0.75786 tolerance)))

(run-tests tests 'verbose)
