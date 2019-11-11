#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_33.rkt")

(define tests
  (test-suite
    "Filtered accumulate"

    (test-suite
      "Implementation sum of squares of prime numbers sequence via filtered accumulate"
      (check-equal? 83 (sum-prime-squares 3 9))
      (check-equal? 65419 (sum-prime-squares 15 100)))

    (test-suite
      "Implementation product of sequence positives ceil numbers via filtered accumulate"
      (check-equal? 24 (product-prime-n 5))
      (check-equal? 8729721 (product-prime-n 20)))))

(run-tests tests 'verbose)
