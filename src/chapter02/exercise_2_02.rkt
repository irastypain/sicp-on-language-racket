#lang racket

(require "../lib/base.rkt")

; Конструктор точки и селекторы для получения
; координат точки
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

; Печать координаты точки
(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ";")
  (display (y-point p))
  (display ")")
  (newline))

; Конструктор отрезка и селекторы для получения
; начальной и конечной точек отрезка
(define (make-segment a b) (cons a b))
(define (start-segment ab) (car ab))
(define (end-segment ab) (cdr ab))

; Процедура вычисления точки на отрезке, являющейся его серединой
(define (midpoint-segment ab)
  (let ((a (start-segment ab))
        (b (end-segment ab)))
    (let ((x1 (x-point a))
          (y1 (y-point a))
          (x2 (x-point b))
          (y2 (y-point b)))
      (make-point (average x1 x2)
                  (average y1 y2)))))

; Экспорт процедур
(provide make-point make-segment midpoint-segment)
