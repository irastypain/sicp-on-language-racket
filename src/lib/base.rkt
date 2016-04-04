#lang racket

; Функция возводит число 'x' в квадрат
(define (square x) (* x x))
; Экспорт функции
(provide square)

; Функция вычисляет сумму квадратов чисел 'x' и 'y'
(define (sum-of-squares x y)
  (+ (square x)
     (square y)))
; Экспорт функции
(provide sum-of-squares)
