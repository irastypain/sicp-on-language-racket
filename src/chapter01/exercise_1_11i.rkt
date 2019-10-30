#lang racket

(define (fn n)
  (if (< n 3)
    n
    (fn-iter 2 1 0 n)))

(define (fn-iter a b c count)
  (if (= count 0)
    c
    (fn-iter (+ a b c) a b (- count 1))))

(provide fn)
