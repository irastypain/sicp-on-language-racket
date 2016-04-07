#lang racket

(require "../lib/base.rkt")

; Набор процедур для последовательного возведения числа в квадрат
(define (fast-expt b n)
    (fast-expt-iter b n 1))

(define (fast-expt-iter b counter a)
    (cond ((= counter 0) a)
          ((even? counter) (fast-expt-iter (square b) (/ counter 2) a))
          (else (fast-expt-iter b (- counter 1) (* a b)))))

; Экспорт процедуры
(provide fast-expt)
