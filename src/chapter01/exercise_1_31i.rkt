#lang racket

(require (only-in "../../lib/base.rkt"
                  identity
                  inc
                  square))

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))))
  (iter a 1))

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
