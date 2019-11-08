#lang racket

(require (only-in "../../lib/base.rkt"
                  divides?
                  square))

(define (search-for-primes number prime-count)
  (cond ((> prime-count 0)
         (cond ((timed-prime-test number)
                (search-for-primes (+ number 1) (- prime-count 1)))
               (else (search-for-primes (+ number 1) prime-count))))))

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
          (else (find-divisor n (+ test-divisor 1)))))
  (find-divisor n 2))

(define (report-prime elapsed-time number)
  (display "Number ")
  (display number)
  (display " is simple. Time compute: ")
  (display elapsed-time)
  (display "ms.")
  (newline))

(provide search-for-primes)
