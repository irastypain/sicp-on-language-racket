#lang racket

(require "../lib/lists.rkt")

; Процедура размена суммы денег,
; использующая список номиналов монет
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination coin-values))
            (cc (- amount
                   (first-denomination coin-values))
                coin-values)))))

(define (first-denomination coin-values)
  (car coin-values))

(define (except-first-denomination coin-values)
  (cdr coin-values))

(define (no-more? list)
  (= (length list) 0))

; Экспорт процедуры
(provide cc)