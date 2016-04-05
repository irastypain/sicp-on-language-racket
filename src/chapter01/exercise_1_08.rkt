#lang racket

(require "../lib/base.rkt")

; Набор процедур для вычисления кубического корня
(define (cbrt x)
  (define (cbrt-iter guess)
    (if (good-enough? guess)
        guess
        (cbrt-iter (improve guess))))

  (define (improve guess)
    (/ (+ (/ x (square guess))
          (* 2 guess))
       3))

  (define (good-enough? guess)
    (< (abs (- (cube guess) x))
       0.0000001))

  (cbrt-iter 1.0))

; Экспорт процедуры
(provide cbrt)
