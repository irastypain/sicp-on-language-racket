#lang racket

; Набор процедур для работы с интервальной арифметикой

; Конструктор интервала
(define (make-interval a b) (cons a b))

; Получение нижней границы интервала
(define (lower-bound ab)
  (min (car ab) (cdr ab)))

; Получение верхней границы интервала
(define (upper-bound ab)
  (max (car ab) (cdr ab)))

; Сложение интервалов
(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

; Вычитание интервалов
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

; Умножение интервалов
(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

; Деление интервалов
(define (div-interval x y)
  (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))

; Радиус интервалов
(define (radius-interval interval)
  (/ (- (upper-bound interval)
        (lower-bound interval))
     2))

; Экспорт процедур
(provide make-interval
         lower-bound
         upper-bound
         add-interval
         sub-interval
         mul-interval
         div-interval
         radius-interval)