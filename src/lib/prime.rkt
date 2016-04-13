#lang racket

(require "smallest-divisor.rkt")

; Процедура проверки числа на простоту
(define (prime? n)
    (= n (smallest-divisor n)))

; Экспорт процедуры
(provide prime?)