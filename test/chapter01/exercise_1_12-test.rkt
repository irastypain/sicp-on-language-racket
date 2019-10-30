#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_12.rkt")

(define tests
  (test-suite
    "Pascal's triangle"

    (check-equal? 1 (pascal-triangle 1 1))
    (check-equal? 1 (pascal-triangle 2 1))
    (check-equal? 2 (pascal-triangle 3 2))
    (check-equal? 3 (pascal-triangle 4 2))
    (check-equal? 3 (pascal-triangle 4 3))
    (check-equal? 6 (pascal-triangle 5 3))))

(run-tests tests 'verbose)
