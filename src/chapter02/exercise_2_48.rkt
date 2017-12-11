#lang racket

; Конструктор отрезка по двум векторам
(define (make-segment v1 v2) (cons v1 v2))

; Селектор начала отрезка
(define (start-segment s) (car s))

; Селектор конца отрезка
(define (end-segment s) (cdr s))

; Экспорт процедур
(provide make-segment
         start-segment
         end-segment)