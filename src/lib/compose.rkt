#lang racket

; Процедура, реализующая композицию -
; применение одной процедуры к другой
(define (compose f g)
  (lambda (x) (f (g x))))

; Экспорт процедуры
(provide compose)