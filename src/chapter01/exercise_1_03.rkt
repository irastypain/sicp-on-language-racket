#lang racket

(require "../lib/base.rkt")

(define (sum-of-squares-of-greatest-two-numbers a b c)
  (if (= a (max a b))
      (sum-of-squares a (max b c))
      (sum-of-squares b (max a c))))

(provide sum-of-squares-of-greatest-two-numbers)
