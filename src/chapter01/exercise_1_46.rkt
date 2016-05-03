#lang racket

(require "../lib/base.rkt"
         "../lib/const.rkt")

; Процедура улучшения (возвращает улучшенную процедуру,
; в случае, если текущение значение процедуры не удовлетворяет
; условию, иначе текущее значение)
(define (iterative-improve good-enough? improve)
  (define (iteration guess)
    (let ((next (improve guess)))
      (if (good-enough? guess next)
          next
          (iteration next))))
  iteration)

; Улучшенная версия процедуры `fixed-point`
(define (fixed-point f first-guess)
  ((iterative-improve (lambda (guess next)
                        (< (abs (- guess next))
                           tolerance))
                      f) first-guess))

; Улучшенная версия процедуры `sqrt`
(define (sqrt x)
  ((iterative-improve (lambda (guess next)
                        (< (abs (- (square guess) x))
                           tolerance))
                      (lambda (guess)
                        (average guess (/ x guess)))) 1.0))

; Экспорт процедуры
(provide sqrt)