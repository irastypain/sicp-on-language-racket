#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_32i.rkt"
         (only-in "../../lib/base.rkt"
                  identity
                  inc
                  square))

(define tests
  (test-suite
    "Accumulate [Iterative process]"

    (test-suite
      "Implementation sum of sequence via accumulate"
      (check-equal? 15 (sum identity 1 inc 5))
      (check-equal? 55 (sum square 1 inc 5)))

    (test-suite
      "Implementation product of sequence via accumulate"
      (check-equal? 120 (product identity 1 inc 5))
      (check-equal? 14400 (product square 1 inc 5)))))

(run-tests tests 'verbose)
