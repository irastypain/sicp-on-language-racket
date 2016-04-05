#lang racket

; Рекурсивный процесс
(define (fn n)
  (if (and (>= n 0) (< n 3)) n
      (+ (fn (- n 1))
         (fn (- n 2))
         (fn (- n 3)))))

; Экспорт процедуры
(provide fn)