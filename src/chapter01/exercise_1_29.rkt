#lang racket

(require "../lib/base.rkt")

; Общая абстракция функции суммирования
; для элементов последовательности
(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

; Процедура для реализации функции вычисления
; интеграла по правилу Симпсона
(define (simpson f a b n)
    (define h (/ (- b a) n))
    (define (y k)
        (f (+ a (* k h))))
    (define (term k)
        (* (cond ((or (= k 0) (= k n)) 1)
                 ((even? k) 2)
                 ((odd? k) 4))
           (y k)))
    (/ (* h (sum term 0 inc n)) 3))

; Экспорт процедуры
(provide simpson)
