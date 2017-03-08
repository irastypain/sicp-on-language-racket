#lang racket

(require (except-in "../lib/interval-arithmetic.rkt"
                    make-center-percent
                    percent))

; Конструктор интервала по серединному
; значению интервала и погрешностью в процентах
(define (make-center-percent c p)
  (let ((percent (/ p 100)))
    (make-center-width c (if (= c 0) percent
                             (* (abs c) percent)))))

; Получение погрешности в процентах
(define (percent i)
  (let ((c (center i))
        (w (* (width i) 100)))
    (cond ((= c 0) w)
          ((= w 0) 0)
          (else (abs (/ w c))))))

; Экспорт процедур
(provide make-center-percent percent)
