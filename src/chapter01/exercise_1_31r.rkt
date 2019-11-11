#lang racket

(require (only-in "../../lib/base.rkt"
                  identity
                  inc
                  square))

(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))

(define (factorial n)
  (product identity 1 inc n))

(define (pi n)
  (define (pi-term k)
    (/ (* (- k 1) (+ k 1))
       (square k)))
  (define (pi-next k) (+ k 2))
  (* 4.0 (product pi-term 3 pi-next n)))

(provide factorial
         pi
         product)
