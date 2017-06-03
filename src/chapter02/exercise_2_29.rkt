#lang racket

; Набор процедур для работы с бинарными мобилями

; Конструкторы
(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

; Селекторы
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cadr branch))

; Вес ветви мобиля
(define (branch-weight branch)
  (let ((structure (branch-structure branch)))
    (if (pair? structure)
        (total-weight structure)
        structure)))

; Суммарный вес мобиля
(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

; Момент вращения ветви мобиля
(define (torque-branch branch)
  (* (branch-length branch)
     (branch-weight branch)))

; Проверка баланса ветви мобиля
(define (branch-balanced? branch)
  (if (pair? (branch-structure branch))
      (balanced? (branch-structure branch))
       true))

; Проверка баланса всего мобиля
(define (balanced? mobile)
  (let ((left (left-branch mobile))
        (right (right-branch mobile)))
    (and (branch-balanced? left)
         (branch-balanced? right)
         (= (torque-branch left)
            (torque-branch right)))))

; Экспорт процедуры
(provide make-branch
         make-mobile
         left-branch
         right-branch
         branch-length
         branch-structure
         total-weight
         balanced?)