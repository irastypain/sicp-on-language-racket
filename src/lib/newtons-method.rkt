#lang racket

(require "const.rkt"
         "fixed-point.rkt")

; Процедура получения производной функции `g(x)`
(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

; Набор процедур для реализации метода Ньютона
(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

; Экспорт процедуры
(provide newtons-method)
