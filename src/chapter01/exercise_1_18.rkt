#lang racket

; Набор процедур для вычисления произведения двух чисел
; на основе повторяющегося сложения (итеративный процесс)
(define (double x) (+ x x))
(define (halve y) (/ y 2))

(define (fast-multiplication a b)
    (fast-multiplication-iter a b 0))

(define (fast-multiplication-iter a counter product)
    (cond ((= counter 0) product)
          ((even? counter) (fast-multiplication-iter (double a) (halve counter) product))
          (else (fast-multiplication-iter a (- counter 1) (+ a product)))))

; Экспорт процедуры
(provide fast-multiplication)
