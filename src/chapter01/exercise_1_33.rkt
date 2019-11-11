#lang racket

(require (only-in "../../lib/base.rkt"
                  identity
                  inc
                  square)
         (only-in "../../lib/prime-numbers.rkt"
                  prime?))

(define (filtered-accumulate filter? combiner null-value term a next b)
  (define (iter a acc)
    (if (> a b)
      acc
      (iter (next a) (combiner (if (filter? a)
                                 (term a)
                                 null-value)
                               acc))))
  (iter a null-value))

(define (sum-prime-squares a b)
  (filtered-accumulate prime? + 0 square a inc b))

(define (product-prime-n n)
  (define (prime-for-n? k)
    (= (gcd k n) 1))
  (filtered-accumulate prime-for-n? * 1 identity 1 inc n))

(provide product-prime-n
         sum-prime-squares)
