#lang racket

; Процедура возведения в квадрат
; элементов дерева (вариант 1)
(define (square-tree tree)
  (if (null? tree)
      null
      (cons ((lambda (sub-tree)
               (if (pair? sub-tree)
                   (square-tree sub-tree)
                   (* sub-tree sub-tree)))
             (car tree))
            (square-tree (cdr tree)))))

; Процедура возведения в квадрат
; элементов дерева (вариант 2)
;(define (square-tree tree)
;  (map (lambda (sub-tree)
;         (if (pair? sub-tree)
;             (square-tree sub-tree)
;             (* sub-tree sub-tree)))
;       tree))

; Экспорт процедуры
(provide square-tree)