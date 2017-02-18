#lang racket

(require rackunit
         "../../src/chapter01/exercise_1_39.rkt"
         "../../src/lib/count-iterations.rkt")

(define tan1.0
  (lambda (k) (tan-cf 1.0 k)))

(define minIterations
  (count-iterations tan1.0 1.557407724 0.000001))

(check-= (tan1.0 minIterations) 1.557407724 0.000001 (printf "test#1 1.39 passed\n"))
(check-= (tan-cf 1.0 10) 1.557407724 0.000001 (printf "test#2 1.39 passed\n"))
(check-= (tan-cf 1.0 1000) 1.557407724 0.000000001 (printf "test#3 1.39 passed\n"))