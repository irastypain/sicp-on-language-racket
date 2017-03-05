#lang racket

(require "../chapter02/exercise_2_07.rkt")

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

; Экспорт процедуры
(provide sub-interval)
