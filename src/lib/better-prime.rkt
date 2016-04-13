#lang racket

(require "better-smallest-divisor.rkt")

; Процедура проверки числа на простоту
; с использованием улучшенной версии процедуры `smallest-divisor`
(define (prime? n)
    (= n (smallest-divisor n)))

; Экспорт процедуры
(provide prime?)
