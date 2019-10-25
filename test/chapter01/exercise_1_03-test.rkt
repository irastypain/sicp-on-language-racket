#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_03.rkt")

(define tests
  (test-suite
    "Sum of squares of the greatest two numbers"

    (test-case
      "When first and second numbers are greatest"
      (check-equal? 13 (sum-of-squares-of-greatest-two-numbers 2 3 1))
      (check-equal? 13 (sum-of-squares-of-greatest-two-numbers 3 2 1)))

    (test-case
      "When second and third numbers are greatest"
      (check-equal? 13 (sum-of-squares-of-greatest-two-numbers 1 2 3))
      (check-equal? 13 (sum-of-squares-of-greatest-two-numbers 1 3 2)))

    (test-case
      "When two numbers equality"
      (check-equal? 13 (sum-of-squares-of-greatest-two-numbers 2 2 3))
      (check-equal? 13 (sum-of-squares-of-greatest-two-numbers 2 3 2))
      (check-equal? 13 (sum-of-squares-of-greatest-two-numbers 3 2 2)))))

(run-tests tests 'verbose)
