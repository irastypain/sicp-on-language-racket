#lang racket

(require "base.rkt")

; Набор процедур для вычисления наименьшего делителя
(define (smallest-divisor n)
    (find-divisor n 2))

(define (divides? a b)
    (= (remainder b a) 0))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n ( + test-divisor 1)))))

; Экспорт процедуры
(provide smallest-divisor)