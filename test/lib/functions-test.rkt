#lang racket

(require rackunit
         rackunit/text-ui
         "../../lib/functions.rkt"
         (only-in "../../lib/base.rkt"
                  average))

(define tests
  (test-suite
    "Functions"

    (test-suite
      "Find fixed point"
      (let ((sqrt-from-4 (lambda (y) (average y (/ 4.0 y)))))
        (check-= 2 (fixed-point sqrt-from-4 1.0) tolerance)))))

(run-tests tests 'verbose)
