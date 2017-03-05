#lang racket

(require rackunit
         "../../src/lib/interval-arifmetic.rkt")

(define ab (make-interval 1 3))
(define cd (make-interval 2 5))

(define radius-ab (radius-interval ab))
(define radius-cd (radius-interval cd))

(check-equal? (radius-interval (add-interval ab cd))
              (+ (radius-interval ab)
                 (radius-interval cd))
              (printf "test#1 2.09 passed\n"))

(check-equal? (radius-interval (sub-interval ab cd))
              (+ (radius-interval ab)
                 (radius-interval cd))
              (printf "test#2 2.09 passed\n"))
