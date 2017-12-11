#lang racket

; Реализация рамки на основе пар
; Конструктор рамки
(define (make-frame origin edge1 edge2)
  (cons origin (cons edge1 edge2)))

; Селектор вектора начальной точки
(define (origin-frame frame)
  (car frame))

; Селектор вектора правого края
(define (edge1-frame frame)
  (cadr frame))

; Селектор вектора левого края
(define (edge2-frame frame)
  (cddr frame))

; Экспорт процедур
(provide make-frame
         origin-frame
         edge1-frame
         edge2-frame)