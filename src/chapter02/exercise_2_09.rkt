#lang racket

(require "../chapter02/exercise_2_07.rkt")

; Получение радиуса интервала
(define (radius-interval interval)
  (/ (- (upper-bound interval)
        (lower-bound interval))
     2))

; Экспорт процедуры
(provide radius-interval)
