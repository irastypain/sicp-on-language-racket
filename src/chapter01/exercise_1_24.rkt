#lang racket

(require "../lib/fast-prime.rkt")

; Набор процедур для проверки числа на простоту.
; В случае, если число простое, выводится время работы процедуры
; Улучшаем процедуру `timed-prime-test` заменой `prime?` на `fast-prime?`
(define (timed-prime-test number)
  (start-prime-test number (current-inexact-milliseconds)))

(define (start-prime-test number start-time)
  (if (fast-prime? number 10000)
      (report-prime (- (current-inexact-milliseconds) start-time) number)
      false))

(define (report-prime elapsed-time number)
  (display "Number ")
  (display number)
  (display " is simple. Time compute: ")
  (display elapsed-time)
  (display "ms.")
  (newline))

; Экспорт процедуры
(provide timed-prime-test)
