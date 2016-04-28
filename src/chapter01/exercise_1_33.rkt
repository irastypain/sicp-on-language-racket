#lang racket

(require "../lib/base.rkt"
         "../lib/prime.rkt")

; Процедура фильтрования (итеративный процесс)
(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter a acc)
    (if (> a b)
        acc
        (if (filter a)
            (iter (next a) (combiner (term a) acc))
            (iter (next a) (combiner null-value acc)))))
  (iter a null-value))

; Процедура вычисления суммы квадратов
; простых чисел последовательности
(define (sum-prime-squares a b)
  (filtered-accumulate prime? + 0 square a inc b))

; Процедура вычисления произведения всех положительных чисел
; меньше `n`, которые просты по отношению к `n`
(define (product-prime-n n)
  (define (prime-for-n? k)
    (= (gcd k n) 1))
  (filtered-accumulate prime-for-n? * 1 identity 1 inc n))

; Экспорт процедур
(provide sum-prime-squares product-prime-n)