#lang racket

; Рекурсивный процесс
(define (cont-frac n d k)
  (define (iter i)
    (/ (n i)
       (+ (d i)
          (if (< i k)
              (iter (+ i 1))
              0))))
  (iter 1))

; Ещё один вариант рекурсивного процесса
;(define (cont-frac n d k)
;  (if (= k 0)
;      (/ (n k) (d k))
;      (/ (n k) (+ (d k)
;                  (cont-frac n d (- k 1))))))

; Экспорт процедуры
(provide cont-frac)





