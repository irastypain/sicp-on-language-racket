#lang racket

(require "compose.rkt")

; Процедура, повторяющая передаваемую функцию `n` раз
(define (repeated func n)
  (if (> n 1)
      (lambda (x) ((compose (repeated func (- n 1)) func) x))
      func))

; Экспорт процедуры
(provide repeated)