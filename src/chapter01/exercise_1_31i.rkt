#lang racket

(require "../lib/base.rkt")

; Обшая абстракция функции перемножения членов
; последовательности (итеративный процесс)
(define (product term a next b)
  (define (iter a acc)
    (if (> a b)
        acc
        (iter (next a) (* (term a) acc))))
  (iter a 1))

; Процедура вычисления факториала 
(define (factorial n)
  (product identity 1 inc n))

; Экспорт процедуры
(provide factorial)

; Процедура вычисления приближённого значения `pi`
(define (pi n)
  (define (pi-term k)
    (/ (* (- k 1) (+ k 1))
       (square k)))
  (define (pi-next k) (+ k 2))
  (* (product pi-term 3 pi-next n) 4.0))

; Экспорт процедуры
(provide pi)