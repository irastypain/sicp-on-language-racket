#lang racket

(require rackunit
         "../../src/lib/const.rkt"
         "../../src/chapter01/exercise_1_35.rkt")

; Проверка приближённого значения `Золотого сечения`
(check-= (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0) 1.618039 tolerance (printf "test#1 1.35 passed\n"))
