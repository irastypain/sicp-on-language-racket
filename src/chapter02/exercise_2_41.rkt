#lang racket

(require (only-in "../lib/lists.rkt"
                  accumulate
                  flatmap
                  enumerate-interval))

; Процедура генерации троек (i, j, k)
; таких, что 1 <= k < j < i <= n
(define (unique-triples n)
  (flatmap (lambda (i)
             (flatmap (lambda (j)
                        (map (lambda (k) (list i j k))
                             (enumerate-interval 1 (- j 1))))
                      (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))

; Процедура поиска таких троек упорядоченных целых
; положительных чисел, сумма элементов которой
; равна переданному числу
(define (triples-with-sum sum n)
  (filter (lambda (t) (= (accumulate + 0 t) sum))
          (unique-triples n)))

; Экспорт процедуры
(provide triples-with-sum)