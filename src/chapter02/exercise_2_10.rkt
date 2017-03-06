#lang racket

(require (except-in "../lib/interval-arithmetic.rkt"
                    div-interval))

; Деление интервалов, исключающее деление
; на интервал, пересекающий 0
(define (div-interval x y)
  (let ((upper (upper-bound y))
        (lower (lower-bound y)))
    (if (> (* upper lower) 0)
        (mul-interval x (make-interval (/ 1.0 upper) (/ 1.0 lower)))
        (error "Интервал, на который производится деление, пересекает 0:" y))))

; Экспорт процедуры
(provide div-interval)