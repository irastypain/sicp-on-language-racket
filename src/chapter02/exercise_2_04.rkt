#lang racket

; Набор процедур для представления пар
(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

; Экспорт процедур
(provide cons car cdr)

