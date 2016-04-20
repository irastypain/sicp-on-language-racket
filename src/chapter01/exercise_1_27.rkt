#lang racket

(require "../lib/expmod.rkt")

; Набор процедур для проверки чисел Кармайкла на простоту
(define (test-k a n)
  (= (expmod a n n) a))

(define (test-k-all n)
  (test-all-from n 1))

(define (test-all-from n start)
  (if (< start n)
      (if (test-k start n)
          (test-all-from n (+ start 1))
          false)
      true))

; Экспорт процедуры
(provide test-k-all)