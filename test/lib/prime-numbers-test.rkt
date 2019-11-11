#lang racket

(require rackunit
         rackunit/text-ui
         "../../lib/prime-numbers.rkt")

(define tests
  (test-suite
    "Prime numbers: useful functions"

    (test-suite
      "Checking number for simplicity"
      (check-true (prime? 3))
      (check-true (prime? 10301))
      (check-false (prime? 8)))

    (test-suite
      "Find smallest divisor"
      (check-equal? 5 (smallest-divisor 25))
      (check-equal? 29 (smallest-divisor 29)))))

(run-tests tests 'verbose)
