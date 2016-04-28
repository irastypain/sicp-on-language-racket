#lang racket

(require "../lib/base.rkt")

; Итеративный процесс
(define (accumulate combiner null-value term a next b)
  (define (iter a acc)
    (if (> a b)
        acc
        (iter (next a) (combiner (term a) acc))))
  (iter a null-value))

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