#lang racket

(require (only-in "../../lib/base.rkt"
                  double
                  even?
                  halve))

(define (fast-multiplication a b)
  (fast-multiplication-iter a b 0))

(define (fast-multiplication-iter a counter product)
  (cond ((= counter 0) product)
        ((even? counter) (fast-multiplication-iter (double a) (halve counter) product))
        (else (fast-multiplication-iter a (- counter 1) (+ a product)))))

(provide fast-multiplication)
