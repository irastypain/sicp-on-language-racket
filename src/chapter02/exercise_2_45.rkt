#lang racket

; Процедура разделения painter'а, которая принимает
; первичную и вторичную процедуры размещения разделённых
; painter'ов
(define (split primary-op secondary-op)
  (define (split-iter painter n)
    (if (= n 0)
        painter
        (let ((smaller (split-iter painter (- n 1))))
          (primary-op painter (secondary-op smaller smaller)))))
  split-iter)