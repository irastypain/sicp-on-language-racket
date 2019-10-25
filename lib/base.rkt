#lang racket

(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(provide abs
         average
         square)
