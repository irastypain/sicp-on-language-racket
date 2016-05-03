#lang racket

(require rackunit
         "../../src/lib/cons-point.rkt"
         "../../src/chapter02/exercise_2_03f.rkt")

(define A (make-point 4.0 2.0))
(define C (make-point 3.0 0.0))
(define ABCD (make-rectangle A C))

(check-equal? (rectangle-perimeter ABCD) 6.0  (printf "test#1 2.03f passed\n"))
(check-equal? (rectangle-area ABCD) 2.0  (printf "test#2 2.03f passed\n"))