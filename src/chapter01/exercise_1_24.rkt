#lang racket

(require (only-in "../../lib/base.rkt"
                  even?
                  square))

(define (timed-prime-test number)
  (start-prime-test number (current-inexact-milliseconds)))

(define (start-prime-test number start-time)
  (if (fast-prime? number 10000)
    (report-prime (- (current-inexact-milliseconds) start-time) number)
    false))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
          (remainder (* base (expmod base (- exp 1) m))
                     m))))

(define (report-prime elapsed-time number)
  (display "Number ")
  (display number)
  (display " is simple. Time compute: ")
  (display elapsed-time)
  (display "ms.")
  (newline))

(provide timed-prime-test)
