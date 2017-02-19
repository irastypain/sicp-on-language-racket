#lang racket

(require  "../lib/const.rkt"
          "../lib/repeated.rkt")

; Процедура сглаживания
(define (smooth func)
  (lambda (x) (/ (+ (func (- x dx))
                    (func x)
                    (func (+ x dx)))
                 3)))

; Процедура `n`-кратного сглаживания
(define (smooth-n func n)
  ((repeated (lambda (g) (smooth g)) n) func))

; Экспорт прцедур
(provide smooth smooth-n)