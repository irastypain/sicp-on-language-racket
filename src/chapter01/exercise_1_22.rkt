#lang racket

(require "../lib/prime.rkt")

; Набор процедур для проверки числа на простоту.
; В случае, если число простое, выводится время работы процедуры
(define (timed-prime-test number)
  (start-prime-test number (current-inexact-milliseconds)))

(define (start-prime-test number start-time)
  (if (prime? number)
      (report-prime (- (current-inexact-milliseconds) start-time) number)
      false))

(define (report-prime elapsed-time number)
  (display "Number ")
  (display number)
  (display " is simple. Time compute: ")
  (display elapsed-time)
  (display "ms.")
  (newline))

; Экспорт процедуры
(provide timed-prime-test)

; Процедура поиска `n` простых чисел после заданного числа
(define (search-for-primes number prime-count)
  (cond ((> prime-count 0)
         (cond ((timed-prime-test number)
                (search-for-primes (+ number 1) (- prime-count 1)))
               (else (search-for-primes (+ number 1) prime-count))))))

; Экспорт процедуры
(provide search-for-primes)
