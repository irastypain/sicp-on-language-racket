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

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))

(define (halve x) (/ x 2))

(define (identity x) x)

(define (inc x) (+ x 1))

(define (odd? x) (not (even? x)))

(define (square x) (* x x))

(provide abs
         average
         cube
         divides?
         double
         even?
         gcd
         halve
         identity
         inc
         odd?
         square)
