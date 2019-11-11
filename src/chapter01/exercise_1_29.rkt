#lang racket

(require (only-in "../../lib/base.rkt"
                  even?
                  inc
                  odd?))

(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k) (f (+ a (* k h))))
  (define (term k)
    (* (cond ((or (= k 0) (= k n)) 1)
             ((even? k) 2)
             ((odd? k) 4))
       (y k)))

  (/ (* h (sum term 0 inc n)) 3))

(provide simpson)
