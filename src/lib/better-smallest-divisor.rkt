#lang racket

(require "base.rkt")

; Набор процедур для вычисления наименьшего делителя (улучшенная версия)
(define (next divisor)
  (if (= divisor 2)
      3
      (+ divisor 2)))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))

(define (smallest-divisor n)
    (find-divisor n 2))

; Экспорт процедуры
(provide smallest-divisor)
