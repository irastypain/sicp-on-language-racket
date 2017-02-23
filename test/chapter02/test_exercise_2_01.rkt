#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_01.rkt")

(define a (make-rat -3 9))
(define b (make-rat -3 -9))
(define c (make-rat 3 -9))
(define d (make-rat 3 9))

(check-equal? (car a) -1 (printf "test#1 2.02 passed\n"))
(check-equal? (cdr a) 3 (printf "test#2 2.02 passed\n"))

(check-equal? (car b) 1 (printf "test#3 2.02 passed\n"))
(check-equal? (cdr b) 3 (printf "test#4 2.02 passed\n"))

(check-equal? (car c) -1 (printf "test#5 2.02 passed\n"))
(check-equal? (cdr c) 3 (printf "test#6 2.02 passed\n"))

(check-equal? (car d) 1 (printf "test#7 2.02 passed\n"))
(check-equal? (cdr d) 3 (printf "test#8 2.02 passed\n"))