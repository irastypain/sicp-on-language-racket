#lang racket

; Набор процедур для вычисления произведения двух чисел
; на основе повторяющегося сложения
(define (double x) (+ x x))
(define (halve y) (/ y 2))

(define (fast-multiplication a b)
    (cond ((= b 0) 0)
          ((= b 1) a)
          ((even? b) (double (fast-multiplication a (halve b))))
          (else (+ a (fast-multiplication a (- b 1))))))

; Экспорт процедуры
(provide fast-multiplication)
