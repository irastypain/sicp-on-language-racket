#lang racket

(define (abs x)
  (if (< x 0) (- x) x))

(define (average x y)
  (/ (+ x y) 2))

(define (cube x)
  (* x x x))

(define (even? x)
  (= (remainder x 2) 0))

(define (square x) (* x x))

(provide abs
         average
         cube
         even?
         square)
