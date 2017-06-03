#lang racket

(require "../lib/base.rkt")

; Процедура применения переданной процедуры
; к каждому элементу дерева
(define (tree-map proc tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map proc sub-tree)
             (proc sub-tree)))
       tree))

; Процедура возведения в квадрат
; элементов дерева
(define (square-tree tree) (tree-map square tree))

; Экспорт процедуры
(provide square-tree)