#lang racket

(require "../lib/base.rkt")

; Процедура, которая вычисляет степень числа по модулю другого числа
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

; Экспорт процедуры
(provide expmod)
