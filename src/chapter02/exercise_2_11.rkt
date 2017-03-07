#lang racket

(require "../lib/interval-arithmetic.rkt")

; Умножение интервалов, учитывающее
; знаки концов интервалов

; Версия "в лоб"
(define (mul-interval-v1 x y)
  (define (cross-compare pred1 pred2)
    (or (and pred1 (not pred2))
        (and (not pred1) pred2)))
  (let ((lx (lower-bound x))
        (ly (lower-bound y))
        (ux (upper-bound x))
        (uy (upper-bound y)))
    (let ((n-lx (< lx 0))
          (n-ly (< ly 0))
          (n-ux (< ux 0))
          (n-uy (< uy 0))
          (p1 (* lx ly))
          (p2 (* lx uy))
          (p3 (* ux ly))
          (p4 (* ux uy)))
      (cond ((and n-lx n-ux n-ly n-uy)
             (make-interval p4 p1))
            ((and n-lx n-ux (cross-compare n-ly n-uy))
             (make-interval p2 p1))
            ((and n-lx n-ux (not n-ly) (not n-uy))
             (make-interval p2 p3))
            ((and (cross-compare n-lx n-ux) n-ly n-uy)
             (make-interval p3 p1))
            ((and (cross-compare n-lx n-ux)
                  (cross-compare n-ly n-uy))
             (make-interval (min p1 p2 p3 p4)
                            (max p1 p2 p3 p4)))
            ((and (cross-compare n-lx n-ux) (not n-ly) (not n-uy))
             (make-interval p2 p4))
            ((and (not n-lx) (not n-ux) n-ly n-uy)
             (make-interval p3 p2))
            ((and (not n-lx) (not n-ux) (cross-compare n-ly n-uy))
             (make-interval p3 p4))
            ((and (not n-lx) (not n-ux) (not n-ly) (not n-uy))
             (make-interval p1 p4))))))

; Версия "определение положения
; интервала относительно нуля"
(define (mul-interval-v2 x y)
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

; Экспорт процедур
(provide mul-interval-v1 mul-interval-v2)
