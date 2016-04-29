#lang racket

(require "../lib/base.rkt"
         "../lib/cont-frac.rkt")

; Процедура вычисления приближённого значения
; тангенса угла в радианах для `k` итераций
(define (tan-cf x k)
  (cont-frac (lambda (i) (if (= i 1)
                             x
                             (- (square x))))
             (lambda (i) (- (* 2 i) 1))
             k))

; Экспорт процедуры
(provide tan-cf)
