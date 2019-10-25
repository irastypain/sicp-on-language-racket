#lang racket

(require (only-in "../../lib/base.rkt"
                  abs
                  average
                  square))

(define (improved-sqrt x)
  (improved-sqrt-iter 1.0 0.5 x))

(define (improved-sqrt-iter guess prev-guess x)
  (if (improved-good-enough? guess prev-guess x)
    guess
    (improved-sqrt-iter (improve guess x)
               guess
               x)))

(define (improved-good-enough? guess prev-guess x)
  (< (abs (/ (- guess prev-guess)
                prev-guess))
          0.00001))

(define (improve guess x)
  (average guess (/ x guess)))

(provide improved-sqrt)
