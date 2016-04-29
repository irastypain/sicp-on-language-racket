#lang racket

(require rackunit "../../src/chapter01/exercise_1_35.rkt")

; Проверка приближённого значения `Золотого сечения`
(check-= (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0) 1.618039 0.00001 (printf "test#1 1.35 passed\n"))