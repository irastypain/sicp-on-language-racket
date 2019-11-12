#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_35.rkt"
         (only-in "../../lib/functions.rkt"
                  tolerance))

(define tests
  (test-suite
    "Approximate Golden Ratio value computing"
    (check-= (golden-ratio) 1.618039 tolerance)))

(run-tests tests 'verbose)
