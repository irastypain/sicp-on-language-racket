#lang racket

(require "../lib/base.rkt"
         "../lib/const.rkt"
         "../lib/fast-expt.rkt"
         "../lib/fixed-point.rkt"
         "../lib/repeated.rkt")

; Вычисление неподвижной точки для трансформации функции
(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

; Процедура вычисления корней `n`-ой степени
(define (root-n x n)
  (fixed-point-of-transform (lambda (y) (/ x (fast-expt y (- n 1))))
                            (repeated average-damp (floor (log2 n)))
                            1.0))
; Экспорт процедуры
(provide root-n)
