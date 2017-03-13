#lang racket

(require (except-in "../lib/interval-arithmetic.rkt"))

; Вычисление сопротивления
; для параллельных резисторов (способ 1)
(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))

; Вычисление сопротивления
; для параллельных резисторов (способ 2)
(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval one
                  (add-interval (div-interval one r1)
                                (div-interval one r2)))))

(define a (make-center-percent 100 1))
(define b (make-center-percent 100 5))
(define aa (make-center-percent 10000 1))
(define bb (make-center-percent 10000 5))

(newline)
(par1 a a)
(par2 a a)

(newline)
(par1 a b)
(par2 a b)

(newline)
(par1 a aa)
(par2 a aa)

(newline)
(par1 a bb)
(par2 a bb)

(newline)
(percent (div-interval a a))
(percent (div-interval a b))
(percent (div-interval bb a))
(percent (div-interval bb bb))
