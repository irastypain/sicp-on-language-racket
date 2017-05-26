#lang racket

; Процедура, принимающая список целых чисел
; и возвращающая список чисел, чётность которых
; совпадает с чётностью первого числа в переданном
; списке
(define (same-parity x . xs)
  (define (equal-parity? item)
    (equal? (odd? x) (odd? item)))
  (define (iter items)
    (cond ((null? items) (list))
          ((equal-parity? (car items)) (cons (car items)
                                             (iter (cdr items))))
          (else (iter (cdr items)))))
    
  (cons x (iter xs)))

; Экспорт процедурыы
(provide same-parity)