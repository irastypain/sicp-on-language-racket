#lang racket

(require (only-in "../lib/lists.rkt"
                  accumulate))

; Отображение последовательности
(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) `() sequence))

; Объединение последовательностей
(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

; Длина последовательности
(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

; Экспорт процедур
(provide map append length)