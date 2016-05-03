#lang racket

(require "../lib/repeated.rkt")

; Процедура сглаживания
(define (smooth func dx)
  (lambda (x) (/ (+ (func (- x dx)) (func x) (func (+ x dx))) 3)))

; Процедура `n`-кратного сглаживания
(define (smooth-n func dx n)
  ((repeated (lambda (g) (smooth g dx)) n) func))

; Экспорт прцедур
(provide smooth smooth-n)