#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_08.rkt")

(define tests
  (test-suite
    "Cube root of number"
    (test-case
      "When smallest number"
      (check-= 0.3 (cbrt 0.027) 0.00001))
    (test-case
      "When biggest number"
      (check-= 32 (cbrt 32768) 0.00001))))

(run-tests tests 'verbose)
