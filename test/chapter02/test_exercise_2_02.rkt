#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_02.rkt")

; Определяем отрезки
(define A (make-point 0.0 0.0))
(define B (make-point 4.0 2.0))
(define AB (make-segment A B))

(define C (make-point -2.0 0.0))
(define D (make-point 3.0 1.0))
(define CD (make-segment C D))

; Искомые точки
(define midpoint-AB (make-point 2.0 1.0))
(define midpoint-CD (make-point 0.5 0.5))

(check-equal? (midpoint-segment AB) midpoint-AB  (printf "test#1 2.02 passed\n"))
(check-equal? (midpoint-segment CD) midpoint-CD  (printf "test#2 2.02 passed\n"))