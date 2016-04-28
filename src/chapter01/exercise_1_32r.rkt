#lang racket

(require "../lib/base.rkt")

; Рекурсивный процесс
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

; Модифицированные общие абстракции суммы и произведения
; элементов последовательности
(define (sum term a next b)
    (accumulate + 0 term a next b))

(define (product term a next b)
    (accumulate * 1 term a next b))

; Процедуры суммы и произведения элементов последовательности
(define (sum-of a b)
    (sum identity a inc b))

(define (product-of a b)
    (product identity a inc b))

; Экспорт процедур
(provide sum-of product-of)

