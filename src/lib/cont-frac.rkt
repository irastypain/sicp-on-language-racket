#lang racket

; Процедура, вычисляющая значение k-элементной конечной
; цепной дроби (итеративный процесс)
(define (cont-frac n d k)
    (define (iter i acc)
      (let ((acc (/ (n i) (+ (d i) acc)))
            (i (- i 1)))
        (if (= i 0)
            acc
            (iter i acc))))
    (iter k 0))

; Экспорт процедуры
(provide cont-frac)