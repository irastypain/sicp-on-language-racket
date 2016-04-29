#lang racket

(require "../lib/cont-frac.rkt")

; Процедура, вычисляющая приближённое значение `e`
; для k итераций
(define (e k)
  (+ 2 (cont-frac (lambda (i) 1.0)
                  (lambda (i) (if (= (remainder i 3) 2)
                                  (* 2 (/ (+ i 1) 3))
                                  1))
                  k)))

; Экспорт процедуры
(provide e)