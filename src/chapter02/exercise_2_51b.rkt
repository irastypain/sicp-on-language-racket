#lang racket

(require (only-in "../lib/graphics.rkt"
                 transform-painter
                 rotate90
                 rotate270
                 beside))

; Процедура добавляет painter2 к painter1 снизу
; (вариант с использованием beside, rotate90 и rotate270)
(define (below painter1 painter2)
  (rotate270 (beside (rotate90 painter1)
                     (rotate90 painter2))))

; Можно и так скомбинировать
;(define (below painter1 painter2)
;  (rotate90 (beside (rotate270 painter2)
;                    (rotate270 painter1))))