#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_04.rkt")

(define tests
  (test-suite
    "An operator is a compound expression"

    (test-case
      "When the second number is positive"
      (check-equal? 5 (a-plus-abs-b 2 3)))

    (test-case
      "When the second number is zero"
      (check-equal? 2 (a-plus-abs-b 2 0)))

    (test-case
      "When the second number is negative"
      (check-equal? 5 (a-plus-abs-b 3 -2)))))

(run-tests tests)
