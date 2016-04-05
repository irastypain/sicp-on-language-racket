#lang racket

; Функция Аккермана
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

; Экспорт функции
(provide A)

; Функции, использующие функцию Аккермана
(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))

;Экспорт функций
(provide f g h)