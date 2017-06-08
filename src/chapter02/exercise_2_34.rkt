#lang racket

(require (only-in "../lib/lists.rkt"
                  accumulate))

; Процедура вычисления значения многочлена по схеме Горнера
(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms) (+ this-coeff (* x higher-terms)))
              0
              coefficient-sequence))

; Экспорт процедуры
(provide horner-eval)