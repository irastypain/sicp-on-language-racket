#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/chapter01/exercise_1_17.rkt")

(define tests
  (test-suite
    "Fast multiplication"

    (check-equal? 24 (fast-multiplication 4 6))
    (check-equal? 27 (fast-multiplication 3 9))
    (check-equal? 195 (fast-multiplication 15 13))))

(run-tests tests 'verbose)
