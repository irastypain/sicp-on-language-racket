#lang racket

(require "../lib/cons-point.rkt")

; Задание прямоугольника при помощи координат
; левой нижней точки и правой верхней точки
(define (make-rectangle left-bottom right-top)
  (cons left-bottom right-top))

; Получение левой нижней точки
(define (rectangle-left-bottom rectangle)
  (car rectangle))

; Получение правой верхней точки
(define (rectangle-right-top rectangle)
  (cdr rectangle))

; Вычисление длины прямоугольника
(define (rectangle-width rectangle)
  (abs (- (x-point (rectangle-left-bottom rectangle))
          (x-point (rectangle-right-top rectangle)))))

; Вычисление ширины прямоугольника
(define (rectangle-height rectangle)
  (abs (- (y-point (rectangle-left-bottom rectangle))
          (y-point (rectangle-right-top rectangle)))))

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
