#lang racket

(require (only-in "../../lib/base.rkt"
                  divides?
                  square))

(define (timed-prime-test number)
  (start-prime-test number (current-inexact-milliseconds)))

(define (start-prime-test number start-time)
  (if (prime? number)
    (report-prime (- (current-inexact-milliseconds) start-time) number)
    false))

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

(define (report-prime elapsed-time number)
  (display "Number ")
  (display number)
  (display " is simple. Time compute: ")
  (display elapsed-time)
  (display "ms.")
  (newline))

(provide timed-prime-test)
