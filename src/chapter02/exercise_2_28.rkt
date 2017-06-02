#lang racket

; Процедура, которая приводит дерево к виду списка
(define (fringe tree)
  (if (null? tree)
      `()
      (if (pair? tree)
          (append (fringe (car tree)) (fringe (cdr tree)))
          (list tree))))

(provide fringe)