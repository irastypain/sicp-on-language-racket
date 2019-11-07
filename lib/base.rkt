#lang racket

(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 2))

(define (cube x)
  (* x x x))

(define (divides? a b)
  (= (remainder b a) 0))

(define (double x) (* x 2))

(define (even? x)
  (= (remainder x 2) 0))

(define (halve x) (/ x 2))

(define (square x) (* x x))

(provide abs
         average
         cube
         divides?
         double
         even?
         halve
         square)
