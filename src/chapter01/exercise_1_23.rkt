#lang racket

(require "../lib/better-prime.rkt")

; Набор процедур для проверки числа на простоту.
; В случае, если число простое, выводится время работы процедуры
; Импортируем улучшенную версию проверки числа на простоту `prime?`
(define (timed-prime-test number)
  (start-prime-test number (current-inexact-milliseconds)))

(define (start-prime-test number start-time)
  (if (prime? number)
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
