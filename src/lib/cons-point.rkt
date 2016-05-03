#lang racket

; Конструктор точки и селекторы для получения
; координат точки
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

; Экспорт процедур
(provide make-point x-point y-point)