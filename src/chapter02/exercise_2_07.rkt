#lang racket

; Конструктор интервала
(define (make-interval a b) (cons a b))

; Получение нижней границы интервала
(define (lower-bound ab)
  (min (car ab) (cdr ab)))

; Получение верхней границы интервала
(define (upper-bound ab)
  (max (car ab) (cdr ab)))

; Экспорт процедур
(provide make-interval lower-bound upper-bound)
