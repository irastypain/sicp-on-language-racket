#lang racket

; Процедура вычисления количества итераций
; функции для получения значения, которое
; не больше `value`, чем на `tolerance`
(define (count-iterations func value tolerance)
  (define (try k)
    (define (close-enough? a b)
      (< (abs (- a b)) tolerance))
    (if (close-enough? (func k) value)
        k
        (try (+ k 1))))
  (try 1))

; Экспорт процедуры
(provide count-iterations)