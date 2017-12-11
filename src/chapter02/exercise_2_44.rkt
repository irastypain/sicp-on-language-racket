#lang racket

; Процедура разделяет painter надвое, добавляя сверху,
; и выполняет рекурсивный вызов
(define (up-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (up-split painter (- n 1))))
        (below painter (beside smaller smaller)))))