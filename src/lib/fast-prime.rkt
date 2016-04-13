#lang racket

(require "fermat-test.rkt")

; Процедура прогоняет тест заданное число раз, как указано её параметром
(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

; Экспорт процедуры
(provide fast-prime?)