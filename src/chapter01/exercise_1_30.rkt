#lang racket

(require "../lib/base.rkt")

; Общая абстракция функции сложения (итеративный процесс)
(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ (term a) result))))
    (iter a 0))

; Экспорт процедуры
(provide sum)
