#lang racket

(require "../lib/base.rkt"
         "../lib/const.rkt")

; Модифицированная версия процедуры поиска
; неподвижных точек функции
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess stage)
    (display stage) ; Номер шага
    (display ": ")
    (display guess) ; Приближение
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next (+ stage 1)))))
  (try first-guess 1))

; Экспорт процедуры
(provide fixed-point)
