#lang racket

(require rackunit
         "../../src/lib/const.rkt"
         "../../src/chapter01/exercise_1_37i.rkt"
         "../../src/lib/count-iterations.rkt")

(define goldenRatio
  (lambda (k) (/ 1 (cont-frac (lambda (i) 1.0)
                              (lambda (i) 1.0)
                              k))))

(define iterations
  (count-iterations goldenRatio 1.61803 tolerance))

(check-= (goldenRatio iterations) 1.61803 tolerance (printf "test#1 1.37i passed\n"))
