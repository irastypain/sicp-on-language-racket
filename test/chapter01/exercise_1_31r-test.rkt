#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_31r.rkt"
         (only-in "../../lib/base.rkt"
                  cube
                  inc
                  square))

(define tolerance 0.00001)

(define tests
  (test-suite
    "Product of sequence [Recursive process]"

    (test-suite
      "Implementation product of sequence"
      (check-equal? 14400 (product square 1 inc 5))
      (check-equal? 1728000 (product cube 1 inc 5)))

    (test-suite
      "Implementation factorial via product of sequence"
      (check-equal? 120 (factorial 5))
      (check-equal? 3628800 (factorial 10)))

    (test-suite
      "Approximate Pi value computing"
      (check-= 3.14316 (pi 1000) tolerance)
      (check-= 3.14174 (pi 10000) tolerance))))

(run-tests tests 'verbose)
