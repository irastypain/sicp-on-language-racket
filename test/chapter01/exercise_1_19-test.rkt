#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_19.rkt")

(define tests
  (test-suite
    "Fibonacci number [Iterative process]"

    (check-equal? 3 (fib 4))
    (check-equal? 34 (fib 9))
    (check-equal? 610 (fib 15))))

(run-tests tests 'verbose)
