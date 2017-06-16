#lang racket

(require "../lib/lists.rkt"
         "exercise_2_36.rkt")

; Процедура умножения вектора на вектор
(define (dot-product v w)
  (accumulate + 0 (map * v w)))

; Процедура умножения матрицы на вектор
(define (matrix-*-vector m v)
  (map (lambda (w) (dot-product v w)) m))

; Процедура транпонирования матрицы
(define (transpose mat)
  (accumulate-n cons null mat))

; Процедура умножения матрицы на матрицу
(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (row) (matrix-*-vector cols row)) m)))

; Экспорт процедур
(provide dot-product
         matrix-*-vector
         transpose
         matrix-*-matrix)
