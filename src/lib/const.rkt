#lang racket

; Справочные величины

; Допустимое различие
(define tolerance 0.00001)
; Экспорт
(provide tolerance)

(define ext-tolerance 0.0000001)
; Экспорт
(provide ext-tolerance)

; Приращение функции
(define dx 0.00001)
; Экспорт
(provide dx)
