#lang racket

; Процедура возведения в квадрат
; элементов списка (вариант 1)
;(define (square-list items)
;  (if (null? items)
;      null
;      (cons ((lambda (x) (* x x)) (car items))
;            (square-list (cdr items)))))

; Процедура возведения в квадрат
; элементов списка (вариант 2)
(define (square-list items)
  (map (lambda (x) (* x x)) items))

; Экспорт процедуры
(provide square-list)