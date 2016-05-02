#lang racket

;============================================
;Первый вариант - с использованием функций высшего порядка

;(define (repfunc func rfunc)
;  (lambda (x) (func (rfunc x))))

;(define (repeated func n)
;  (if (= n 1)
;      func
;      (repfunc func (repeated func (- n 1)))))

;============================================
; Второй вариант - с использованием композиции

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated func n)
  (if (> n 1)
      (lambda (x) ((compose (repeated func (- n 1)) func) x))
      func))

;============================================

; Экспорт процедуры
(provide repeated)