#lang racket

(require rackunit
         "../../src/lib/vectors.rkt"
         "../../src/lib/segments.rkt")

(define v1 (make-vect 1 2))
(define v2 (make-vect 3 4))
(define v3 (make-vect 5 6))
(define v4 (make-vect 7 8))

(define s1 (make-segment v1 v3))
(define s2 (make-segment v2 v4))

(check-equal? (start-segment s1) v1 (printf "test#1 lib/segments passed\n"))
(check-equal? (end-segment s2) v4 (printf "test#2 lib/segments passed\n"))