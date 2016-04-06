#lang racket

(require "../lib/base.rkt")

; Набор процедур для вычисления синуса угла (в радианах)
(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

; Экспорт процедуры
(provide sine)