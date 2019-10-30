#lang racket

(require (only-in "../../lib/base.rkt"
                  abs
                  cube))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
    angle
    (p (sine (/ angle 3.0)))))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(provide sine)
