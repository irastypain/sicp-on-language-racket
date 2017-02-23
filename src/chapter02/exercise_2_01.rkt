#lang racket

(require "../lib/base.rkt")

; Улучшенная версия процедуры `make-rat`
(define (make-rat n d)
  (let ((g (* (gcd (abs n) (abs d))
              (if (< d 0)
                  -1
                  1))))
    (cons (/ n g) (/ d g))))

; Экспорт процедуры
(provide make-rat)