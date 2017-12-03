#lang racket

(require (only-in "../lib/better-prime.rkt"
                  prime?)
         (only-in "../lib/lists.rkt"
                  accumulate
                  append
                  flatmap
                  enumerate-interval))

; Процедура получения последовательности уникальных пар
; значений (i, j) таких, что 1 <= j < i <= n
(define (unique-pairs n)
  (flatmap (lambda (i)
             (map (lambda (j) (list i j))
                  (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))

; Процедура проверки суммы значений пары на простоту
(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

; Процедура создания тройки (i, j, i + j)
(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

; Процедура получения последовательности всех упорядоченных пар
; положительных целых чисел i и j, где 1 <= j < i <= n, что
; i + j является простым
(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter prime-sum? (unique-pairs n))))

; Экспорт процедуры
(provide prime-sum-pairs)