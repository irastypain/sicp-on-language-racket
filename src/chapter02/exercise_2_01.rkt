#lang racket

(require "../lib/base.rkt")

; Определение знака
(define (sign x)
  (cond ((< x 0) -1)
        ((> x 0) 1)
        (else 0)))

; Улучшенная версия процедуры `make-rat`
(define (make-rat n d)
  (let ((g (* (gcd (abs n)
                   (abs d))
              (sign d))))
    (cons (/ n g) (/ d g))))