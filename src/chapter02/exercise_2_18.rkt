#lang racket

; Процедура переворачивания списка
; (переворачивает и вложенные списки)
(define (reverse list)
  (define (reverse-iter items acc)
    (if (null? items)
        acc
        (if (pair? (car items))
            (reverse-iter (cdr items)
                          (cons (reverse (car items)) acc))
            (reverse-iter (cdr items)
                          (cons (car items) acc)))))
  (reverse-iter list null))

; Экспорт процедуры
(provide reverse)