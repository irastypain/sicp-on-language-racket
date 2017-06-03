#lang racket

; Процедура, которая порождает множество подмножеств
(define (subsets s)
  (if (null? s)
      (list null)
      (let ((rest (subsets (cdr s))))
        (append rest (map (lambda (ss) (cons (car s) ss)) rest)))))

; Экспорт процедуры
(provide subsets)
