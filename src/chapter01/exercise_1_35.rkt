#lang racket

(require (only-in "../../lib/functions.rkt"
                  fixed-point))

(define (golden-ratio)
  (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0))

(provide golden-ratio)
