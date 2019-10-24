#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_02.rkt")

(define tests
  (test-suite
    "Expression in prefix form"

    (test-case
      "Evaluation of expression"
      (check-equal? -37/150 expression))))

(run-tests tests 'verbose)
