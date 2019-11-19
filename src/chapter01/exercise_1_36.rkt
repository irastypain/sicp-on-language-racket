#lang racket

(require (only-in "../../lib/functions.rkt"
                  tolerance))

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess stage)
    (display stage)
    (display ": ")
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
        next
        (try next (+ stage 1)))))
  (try first-guess 1))

(provide fixed-point)
