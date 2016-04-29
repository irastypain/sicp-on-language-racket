#lang racket

; Рекурсивный процесс
(define (cont-frac n d k)
  (define (iter i)
    (/ (n i)
       (+ (d i)
          (if (< i k)
              (iter (+ i 1))
              0))))
  (iter 1))

; Процедура вычисления количества итераций
; функции для получения значения, которое
; не больше `value`, чем на `tolerance`
(define (count-iterations func value tolerance)
  (define (try k)
    (define (close-enough? a b)
      (< (abs (- a b)) tolerance))
    (cond ((close-enough? (func k) value)
           (display "Iterations: ")
           (display k)
           (newline)
           (func k))
          (else (try (+ k 1)))))
  (try 1))

; Экспорт процедур
(provide cont-frac count-iterations)





