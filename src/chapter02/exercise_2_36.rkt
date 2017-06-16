#lang racket

(require "../lib/lists.rkt")

; Процедура накопления применения переданной процедуры
; ко всем элементам всех последовательностей в соответствующих
; позициях (ко всем первым элементам, ко всем вторым и т.д.)
(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      null
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))

; Экспорт процедуры
(provide accumulate-n)
