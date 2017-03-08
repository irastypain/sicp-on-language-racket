#lang racket

; Набор процедур для работы с интервальной арифметикой

; Конструктор интервала
(define (make-interval a b) (cons a b))

; Получение нижней границы интервала
(define (lower-bound ab)
  (min (car ab) (cdr ab)))

; Получение верхней границы интервала
(define (upper-bound ab)
  (max (car ab) (cdr ab)))

; Сложение интервалов
(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

; Вычитание интервалов
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

; Умножение интервалов
(define (mul-interval x y)
  (let ((lx (lower-bound x))
        (ly (lower-bound y))
        (ux (upper-bound x))
        (uy (upper-bound y)))
    (let ((p1 (* lx ly))
          (p2 (* lx uy))
          (p3 (* ux ly))
          (p4 (* ux uy)))
      (cond ((positive? lx)
             (cond ((positive? ly)
                    (make-interval p1 p4))
                   ((negative? uy)
                    (make-interval p3 p2))
                   (else
                    (make-interval p3 p4))))
            ((negative? ux)
             (cond ((positive? ly)
                    (make-interval p2 p3))
                   ((negative? uy)
                    (make-interval p4 p1))
                   (else
                    (make-interval p2 p1))))
            (else
             (cond ((positive? ly)
                    (make-interval p2 p4))
                   ((negative? uy)
                    (make-interval p3 p1))
                   (else
                    (make-interval (min p1 p2 p3 p4)
                                   (max p1 p2 p3 p4)))))))))

; Деление интервалов
(define (div-interval x y)
  (let ((upper (upper-bound y))
        (lower (lower-bound y)))
    (if (> (* upper lower) 0)
        (mul-interval x (make-interval (/ 1.0 upper) (/ 1.0 lower)))
        (error "Интервал, на который производится деление, пересекает 0:" y))))

; Радиус интервалов
(define (radius-interval interval)
  (/ (- (upper-bound interval)
        (lower-bound interval))
     2))

; Экспорт процедур
(provide make-interval
         lower-bound
         upper-bound
         add-interval
         sub-interval
         mul-interval
         div-interval
         radius-interval)
