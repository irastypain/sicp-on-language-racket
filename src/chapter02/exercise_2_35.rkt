#lang racket

(require (except-in "../lib/lists.rkt"
                    count-leaves))

; Процедура получения количества листьев в дереве
(define (count-leaves t)
  (accumulate + 0 (map (lambda (x) (if (not (pair? x))
                                       1
                                       (count-leaves x)))
                       t)))

; Экспорт процедурыы
(provide count-leaves)