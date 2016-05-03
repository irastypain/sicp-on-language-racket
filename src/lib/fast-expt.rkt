#lang racket

(require "../lib/base.rkt")

; Быстрое возведение в степень
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

; Экспорт процедуры
(provide fast-expt)