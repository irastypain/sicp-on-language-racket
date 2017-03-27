#lang racket

; Процедура получения последнего элемента списка
(define (last-pair items)
  (if (null? (cdr items))
      items
      (last-pair (cdr items))))

; Экспорт процедуры
(provide last-pair)