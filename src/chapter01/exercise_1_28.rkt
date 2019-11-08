#lang racket

(require (only-in "../../lib/base.rkt"
                  even?
                  square))

(define (miller-rabin-test n)
  (define (miller-rabin-iteration a t n)
    (define (try-it a)
      (= (expmod a (- n 1) n) 1))
    (if (= a n)
        (> t (/ n 2))
        (if (try-it a)
          (miller-rabin-iteration (+ a 1) (+ t 1) n)
          (miller-rabin-iteration (+ a 1) t n))))
  (miller-rabin-iteration 1 0 n))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder-or-trivial (expmod base (/ exp 2) m) m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (remainder-or-trivial k m)
  (apply-trivial-check k m (remainder (square k) m)))

(define (apply-trivial-check k m r)
  (if (and (not (= k 1))
           (not (= k (- m 1)))
           (= r 1))
      0
      r))

(provide miller-rabin-test)
