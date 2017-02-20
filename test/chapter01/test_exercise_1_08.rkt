#lang racket

(require rackunit
         "../../src/lib/const.rkt"
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_08.rkt")

(check-= (cbrt 8) 2.0 ext-tolerance (printf "test#1 1.8 passed\n"))
(check-= (cbrt 27) 3.0 ext-tolerance (printf "test#2 1.8 passed\n"))
(check-= (cbrt 64) 4.0 ext-tolerance (printf "test#3 1.8 passed\n"))
(check-= (cbrt 125) 5.0 ext-tolerance (printf "test#4 1.8 passed\n"))
