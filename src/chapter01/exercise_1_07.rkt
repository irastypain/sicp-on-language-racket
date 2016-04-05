#lang racket

(require "../lib/base.rkt")

; Набор процедур для вычисления квадратного корня методом Ньютона
(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; Экспорт процедуры
(provide sqrt)

; Набор процедур для улучшенного вычисления квадратного корня методом Ньютона
(define (better-good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess)
             prev-guess))
     0.0000001))

(define (better-sqrt-iter guess prev-guess x)
  (if (better-good-enough? guess prev-guess)
      guess
      (better-sqrt-iter (improve guess x)
                        guess
                        x)))

(define (better-sqrt x)
  (better-sqrt-iter 1.0 0.5 x))

; Экспорт процедуры
(provide better-sqrt)
