#lang racket

; Задание прямоугольника при помощи координат одной
; вершины, длины и ширины
(define (make-rectangle point width height)
  (cons point (cons width height)))

; Получение точки
(define (point rectangle)
  (car rectangle))

; Получение длины
(define (rectangle-width rectangle)
  (car (cdr rectangle)))

; Получение ширины
(define (rectangle-height rectangle)
  (cdr (cdr rectangle)))

; Экспорт процедуры
(provide make-rectangle)

;--------------------------------------------

; Периметр прямоугольника
(define (rectangle-perimeter rectangle)
  (* 2 (+ (rectangle-width rectangle)
          (rectangle-height rectangle))))

; Площадь прямоугольника
(define (rectangle-area rectangle)
  (* (rectangle-width rectangle)
     (rectangle-height rectangle)))

; Экспорт процедур
(provide rectangle-perimeter rectangle-area)
