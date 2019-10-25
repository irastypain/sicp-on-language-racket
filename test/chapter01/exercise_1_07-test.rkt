#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_07.rkt")

(define tests
  (test-suite
    "Improved `sqrt` procedure for biggest and smallest numbers"

    (test-case
      "When smallest number"
      (check-= 0.3 (improved-sqrt 0.09) 0.00001))

    (test-case
      "When biggest number"
      (check-= 1000.0 (improved-sqrt 1000000) 0.00001))))

(run-tests tests 'verbose)
