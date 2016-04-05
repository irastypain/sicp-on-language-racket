#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_08.rkt")

; Проверяем с точностью до 0.0000001
(check-= (cbrt 8) 2.0 0.0000001 (printf "test#1 1.8 passed\n"))
(check-= (cbrt 27) 3.0 0.0000001 (printf "test#2 1.8 passed\n"))
(check-= (cbrt 64) 4.0 0.0000001 (printf "test#3 1.8 passed\n"))
(check-= (cbrt 125) 5.0 0.0000001 (printf "test#3 1.8 passed\n"))
