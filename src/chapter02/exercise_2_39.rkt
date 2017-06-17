#lang racket

(require "../lib/lists.rkt"
         "exercise_2_38.rkt")

; Процедура, переворачивающая список, использующая
; правую свёртку (переворачивает и вложенные списки)
(define (reverse-r sequence)
  (fold-right (lambda (x y) (if (list? x)
                                (append y (list (reverse-r x)))
                                (append y (list x))))
              null
              sequence))

; Процедура, переворачивающая список, использующая
; левую свёртку (перворачивает и вложенные списки)
(define (reverse-l sequence)
  (fold-left (lambda (x y) (if (list? y)
                               (cons (reverse-l y) x)
                               (cons y x)))
             null
             sequence))

; Экспорт процедур
(provide reverse-l
         reverse-r)
