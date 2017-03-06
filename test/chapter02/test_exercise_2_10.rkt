#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_10.rkt"
         (except-in "../../src/lib/interval-arithmetic.rkt"
                    div-interval))

(define ab (make-interval 1 3))
(define cd (make-interval 2 5))

(check-equal? (div-interval ab cd) (make-interval 0.2 1.5) (printf "test#1 2.10 passed\n"))

(define ef (make-interval 1 3))
(define gh (make-interval -2 5))

(check-exn exn:fail? (lambda () (div-interval ef gh)) (printf "test#2 2.10 passed\n"))
