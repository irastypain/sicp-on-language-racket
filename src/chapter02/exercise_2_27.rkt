#lang racket

; Процедура переворачивания списка списков
(define (deep-reverse list)
  (define (deep-reverse-iter items result)
    (define (rev-it elems)
      (if (pair? elems)
          (deep-reverse elems)
          elems))
    (if (null? items)
        result
        (deep-reverse-iter (cdr items)
                           (cons (rev-it (car items)) result))))
  (deep-reverse-iter list null))

; Экспорт процедуры
(provide deep-reverse)
