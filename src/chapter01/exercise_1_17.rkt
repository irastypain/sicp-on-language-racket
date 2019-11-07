#lang racket

(require (only-in "../../lib/base.rkt"
                  double
                  even?
                  halve))

(define (fast-multiplication a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (double (fast-multiplication a (halve b))))
        (else (+ a (fast-multiplication a (- b 1))))))

(provide fast-multiplication)
