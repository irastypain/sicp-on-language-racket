#lang racket

(require "../lib/base.rkt"
         "../lib/const.rkt")

; Процедура улучшения (возвращает улучшенную процедуру,
; в случае, если текущение значение процедуры не удовлетворяет
; условию, иначе текущее значение)
(define (iterative-improve good-enough? improve)
  (lambda (guess)
    (if (good-enough? guess)
        guess
        ((iterative-improve good-enough? improve) (improve guess)))))

; Улучшенная версия процедуры `fixed-point`
(define (improve-fixed-point f first-guess)
  ((iterative-improve (lambda (guess)
                        (< (abs (- guess (f guess)))
                           tolerance))
                      f) first-guess))

; Улучшенная версия процедуры `sqrt`
(define (improve-sqrt x)
  ((iterative-improve (lambda (guess)
                        (< (abs (- (square guess) x))
                           tolerance))
                      (lambda (guess)
                        (average guess (/ x guess)))) 1.0))

; Экспорт процедур
(provide improve-sqrt improve-fixed-point)
