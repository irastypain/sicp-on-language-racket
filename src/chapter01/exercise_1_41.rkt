#lang racket

; Процедура, удваивающая применение передаваемой процедуры к `x`
(define (double func)
  (lambda (x) (func (func x))))

; Экспорт процедуры
(provide double)