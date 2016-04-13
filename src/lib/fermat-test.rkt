#lang racket

(require "expmod.rkt")

; Тест Ферма
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

; Экспорт процедуры
(provide fermat-test)