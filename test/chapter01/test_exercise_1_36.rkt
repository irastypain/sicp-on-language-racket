#lang racket

(require rackunit
         "../../src/lib/const.rkt"
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_36.rkt")

; Поиск решения уравнения `x^x = 1000` без использования торможения усреднением
(check-= (fixed-point  (lambda (x) (/ (log 1000) (log x))) 2.0) 4.55553 tolerance (printf "test#1 1.36 passed\n"))

; Поиск решения уравнения `x^x = 1000` с использованием торможения усреднением
(check-= (fixed-point  (lambda (x) (average x (/ (log 1000) (log x)))) 2.0) 4.55553 tolerance (printf "test#2 1.36 passed\n"))
