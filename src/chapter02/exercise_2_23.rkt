#lang racket

; Процедура отображения переданной функции
; на список. Процедура всегда возвращает #t
(define (for-each func items)
  (cond ((null? items) #t)
        (else (func (car items))
              (for-each func (cdr items)))))

; Экспорт процедуры
(provide for-each)