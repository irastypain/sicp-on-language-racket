#lang racket

; Библиотека для работы с векторами

; Конструктор вектора
(define make-vect cons)

; Селектор координаты X
(define xcor-vect car)

; Селектор координаты Y
(define ycor-vect cdr)

; Сумма векторов
(define (add-vect v1 v2)
  (make-vect (+ (xcor-vect v1) (xcor-vect v2))
             (+ (ycor-vect v1) (ycor-vect v2))))

; Разность векторов
(define (sub-vect v1 v2)
  (make-vect (- (xcor-vect v1) (xcor-vect v2))
             (- (ycor-vect v1) (ycor-vect v2))))

; Умножение скаляра на вектор
(define (scale-vect s v)
  (make-vect (* s (xcor-vect v))
             (* s (ycor-vect v))))

; Экспорт процедур
(provide make-vect
         xcor-vect
         ycor-vect
         add-vect
         sub-vect
         scale-vect)