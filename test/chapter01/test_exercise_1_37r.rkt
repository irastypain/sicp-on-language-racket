#lang racket

(require rackunit "../../src/chapter01/exercise_1_37r.rkt")

(check-= (count-iterations (lambda (k) (/ 1
                                 (cont-frac (lambda (i) 1.0)
                                            (lambda (i) 1.0)
                                            k)))
                           1.618033988749895
                           0.00001)
         1.618033988749895
         0.00001
         (printf "test#1 1.37 passed\n"))
