#lang racket

; Рекурсивный процесс
(define (fn n)
  (if (< n 3)
      n
      (+ (fn (- n 1))
         (fn (- n 2))
         (fn (- n 3)))))

; Экспорт процедуры
(provide fn)
