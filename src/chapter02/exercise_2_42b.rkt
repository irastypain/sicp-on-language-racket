#lang racket

(require (only-in "../lib/lists.rkt"
                  flatmap
                  enumerate-interval))

; Вариант с представлением позиций ферзей как список
; значений типа 'номер_горизонтали'

(define empty-board (list))

; Процедура проверки безопасной позиции
; для последнего "поставленного" ферзя
(define (safe? k positions)
  (define (queen-safe? prev-col prev-rows)
    (define (position-safe? col row)
      (let ((queen-col k)
            (queen-row (car positions)))
        (and (not (= queen-row row))
             (not (= (abs (- queen-row row))
                     (abs (- queen-col col)))))))
    (cond ((empty? prev-rows) true)
          ((position-safe? prev-col (car prev-rows))
           (queen-safe? (- prev-col 1) (cdr prev-rows)))
          (else false)))
  (queen-safe? (- k 1) (cdr positions)))

; Процедура "постановки" ферзя
; Формируется последовательность позиций 'горизонталь'
(define (adjoin-position new-row k rest-of-queens)
  (cons new-row rest-of-queens))

; Процедура поиска всех возможных размещений k ферзей
; на доске размера k x k, таких, что ферзи не "бьют" друг друга
(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

; Экспорт процедуры
(provide queens)