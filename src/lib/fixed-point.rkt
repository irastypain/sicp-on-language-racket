#lang racket

(require "const.rkt")

; Процедура  поиска неподвижных точек
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

; Экспорт процедуры
(provide fixed-point)
