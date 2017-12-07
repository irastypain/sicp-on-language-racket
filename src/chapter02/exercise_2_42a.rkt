#lang racket

(require (only-in "../lib/lists.rkt"
                  flatmap
                  enumerate-interval))

; Вариант с представлением позиций ферзей как список
; значений типа ('номер_горизонтали' 'номер_вертикали')

(define empty-board (list))

; Процедура проверки безопасной позиции
; для последнего "поставленного" ферзя
(define (safe? k positions)
  (define (queen-safe? queen-position prev-positions)
    (define (position-safe? position)
      (let ((queen-row (car queen-position))
            (queen-col (cadr queen-position))
            (row (car position))
            (col (cadr position)))
        (and (not (= queen-row row))
             (not (= (abs (- queen-row row))
                     (abs (- queen-col col)))))))
    (cond ((empty? prev-positions) true)
          ((position-safe? (car prev-positions))
           (queen-safe? queen-position (cdr prev-positions)))
          (else false)))
  (queen-safe? (car positions) (cdr positions)))

; Процедура "постановки" ферзя
; Формируется последовательность позиций '(горизонталь вертикаль)
(define (adjoin-position new-row k rest-of-queens)
  (cons (list new-row k) rest-of-queens))

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