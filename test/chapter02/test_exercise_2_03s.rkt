#lang racket

(require rackunit
         "../../src/lib/cons-point.rkt"
         "../../src/chapter02/exercise_2_03s.rkt")

(define A (make-point 4.0 2.0))
(define ABCD (make-rectangle A 3.0 5.0))

(check-equal? (rectangle-perimeter ABCD) 16.0  (printf "test#1 2.03s passed\n"))
(check-equal? (rectangle-area ABCD) 15.0  (printf "test#2 2.03s passed\n"))