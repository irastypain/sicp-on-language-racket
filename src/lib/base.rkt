#lang racket

; Процедура возводит число 'x' в квадрат
(define (square x) (* x x))
; Экспорт процедуры
(provide square)

; Процедура возводит число 'x' в куб
(define (cube x) (* x x x))
; Экспорт процедуры
(provide cube)

; Процедура вычисляет сумму квадратов чисел 'x' и 'y'
(define (sum-of-squares x y)
  (+ (square x)
     (square y)))
; Экспорт процедуры
(provide sum-of-squares)
