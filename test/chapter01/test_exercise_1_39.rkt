#lang racket

(require rackunit
         "../../src/lib/const.rkt"
         "../../src/chapter01/exercise_1_39.rkt"
         "../../src/lib/count-iterations.rkt")

(define tan1.0
  (lambda (k) (tan-cf 1.0 k)))

(define minIterations
  (count-iterations tan1.0 1.55740 tolerance))

(check-= (tan1.0 minIterations) 1.55740 tolerance (printf "test#1 1.39 passed\n"))
(check-= (tan-cf 1.0 10) 1.55740 tolerance (printf "test#2 1.39 passed\n"))
(check-= (tan-cf 1.0 1000) 1.55740 tolerance (printf "test#3 1.39 passed\n"))
