#lang racket

(require rackunit
         "../../src/chapter01/exercise_1_37r.rkt"
         "../../src/lib/count-iterations.rkt")

(define goldenRatio
  (lambda (k) (/ 1 (cont-frac (lambda (i) 1.0)
                              (lambda (i) 1.0)
                              k))))

(define iterations
  (count-iterations goldenRatio 1.61803 0.00001))

(check-= (goldenRatio iterations) 1.61803 0.00001 (printf "test#1 1.37r passed\n"))