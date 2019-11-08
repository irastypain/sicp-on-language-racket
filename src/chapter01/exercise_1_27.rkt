#lang racket

(require (only-in "../../lib/base.rkt"
                  even?
                  square))

(define (test-k-all n)
  (test-all-from n 1))

(define (test-all-from n start)
  (if (< start n)
    (if (test-k start n)
      (test-all-from n (+ start 1))
      false)
    true))

(define (test-k a n)
  (= (expmod a n n) a))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
          (remainder (* base (expmod base (- exp 1) m))
                     m))))

(provide test-k-all)
