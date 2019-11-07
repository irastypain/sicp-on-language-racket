#lang racket

(require rackunit
         rackunit/text-ui
         "../../lib/base.rkt")

(define tests
  (test-suite
    "Base library"

    (test-suite
      "Absolute value of number"
      (test-case
        "When number is zero"
        (check-equal? 0 (abs 0))))
      (test-case
        "When negative number"
        (check-equal? 1 (abs (- 1))))
      (test-case
        "When positive number"
        (check-equal? 1 (abs 1)))

    (test-suite
      "Average of two numbers"
      (check-equal? 6 (average 4 8)))

    (test-suite
      "Cube of number"
      (check-equal? 27 (cube 3)))

    (test-suite
      "Is even number?"
      (test-case
        "When number is even"
        (check-true (even? 2)))
      (test-case
        "When number is zero"
        (check-true (even? 0)))
      (test-case
        "When number is not even"
        (check-false (even? 1))))

    (test-suite
      "Square of number"
      (test-case
        "When number is zero"
        (check-equal? 0 (square 0)))
      (test-case
        "With negative number"
        (check-equal? 4 (square -2)))
      (test-case
        "With positive number"
        (check-equal? 4 (square 2))))))

(run-tests tests 'verbose)
