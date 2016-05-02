#lang racket

(require "../lib/base.rkt"
         "../lib/const.rkt"
         "../lib/newtons-method.rkt")

; Определение функции
(define (cubic a b c)
  (lambda (x) (+ (cube x) (* a (square x)) (* b x) c)))

; Процедура вычисления корня кубического уравнения
(define (roots-of-cube a b c)
  (newtons-method (cubic a b c) 1))

; Экспорт процедуры 
(provide roots-of-cube)