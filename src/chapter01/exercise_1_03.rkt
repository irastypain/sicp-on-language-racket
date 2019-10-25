#lang racket

(require (only-in "../../lib/base.rkt"
                  square))

(define (sum-of-squares-of-greatest-two-numbers a b c)
  (if (= a (max a b))
      (sum-of-squares a (max b c))
      (sum-of-squares b (max a c))))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(provide sum-of-squares-of-greatest-two-numbers)
