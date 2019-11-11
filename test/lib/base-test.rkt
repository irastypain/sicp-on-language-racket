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
      "Does first number divide second number without a remainder?"
      (test-case
        "With both negative numbers"
        (check-true (divides? -3 -3)))
      (check-true (divides? 2 4))
      (check-false (divides? 3 4)))

    (test-suite
      "Double of number"
      (test-case
        "With negative number"
        (check-equal? -2 (double -1)))
      (test-case
        "When number is zero"
        (check-equal? 0 (double 0)))
      (test-case
        "With positive number"
        (check-equal? 2 (double 1))))

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
      "Halve of number"
      (test-case
        "With negative number"
        (check-equal? -1 (halve -2)))
      (test-case
        "When number is zero"
        (check-equal? 0 (halve 0)))
      (test-case
        "With positive number"
        (check-equal? 1 (halve 2)))
      (test-case
        "When number is not even"
        (check-equal? 3/2 (halve 3))))

    (test-suite
      "Identity function"
      (check-equal? 3 (identity 3)))

    (test-suite
      "Increment number"
      (check-equal? 2 (inc 1))
      (check-equal? -1 (inc -2)))

    (test-suite
      "Is odd number?"
      (test-case
        "When number is odd"
        (check-true (odd? 1)))
      (test-case
        "When number is zero"
        (check-false (odd? 0)))
      (test-case
        "When number is not odd"
        (check-false (odd? 2))))

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
