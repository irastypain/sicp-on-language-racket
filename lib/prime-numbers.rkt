#lang racket

(require (only-in "base.rkt"
                  divides?
                  square))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (smallest-divisor n)
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))
  (define (next divisor)
    (if (= divisor 2)
      3
      (+ divisor 2)))
  (find-divisor n 2))

(provide prime?
         smallest-divisor)
