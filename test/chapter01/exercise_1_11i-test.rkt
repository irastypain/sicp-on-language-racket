#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_11i.rkt")

(define tests
  (test-suite
    "Function f(n) [Iterative process]"

    (test-case
      "When n is less than 3"

      (check-equal? -1 (fn -1))
      (check-equal? 0 (fn 0))
      (check-equal? 1 (fn 1))
      (check-equal? 2 (fn 2)))

    (test-case
      "When n is greater than or equal to 3"

      (check-equal? 3 (fn 3))
      (check-equal? 6 (fn 4))
      (check-equal? 11 (fn 5))
      (check-equal? 20 (fn 6)))))

(run-tests tests 'verbose)
