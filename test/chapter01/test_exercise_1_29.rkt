#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_29.rkt")

; Проверяем с точностью до 0.0000001
(check-equal? (simpson cube 0 1 100.0) 0.24999999999999992 (printf "test#1 1.29 passed\n"))
(check-equal? (simpson cube 0 1 1000.0) 0.2500000000000003 (printf "test#2 1.29 passed\n"))