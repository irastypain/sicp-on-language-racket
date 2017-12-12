#lang racket

(require "../lib/vectors.rkt"
         (only-in "../lib/graphics.rkt"
                  transform-painter))

; Процедура добавляет painter2 к painter1 снизу
; (вариант аналогичен определению beside)
(define (below painter1 painter2)
  (let ((split-point (make-vect 0.0 0.5)))
    (let ((paint-top
           (transform-painter painter2
                              (make-vect 0.0 0.0)
                              (make-vect 1.0 0.0)
                              split-point))
          (paint-bottom
           (transform-painter painter1
                              split-point
                              (make-vect 1.0 0.5)
                              (make-vect 0.0 1.0))))
      (lambda (frame)
        (paint-top frame)
        (paint-bottom frame)))))