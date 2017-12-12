#lang racket

(require racket/gui/base
         "../lib/vectors.rkt"
         "../lib/segments.rkt"
         (only-in "../lib/graphics.rkt"
                  make-frame
                  frame-coord-map
                  polyline
                  polygon))

(define width 512)
(define height 512)

(define target (make-screen-bitmap width height))
(define dc (new bitmap-dc% [bitmap target]))

(define frame
  (make-frame (make-vect 0 0)
              (make-vect width 0)
              (make-vect 0 height)))

; Процедура отрисовки отрезка прямой
(define (draw-line start-vect end-vect)
  (send dc draw-line
        (xcor-vect start-vect)
        (ycor-vect start-vect)
        (xcor-vect end-vect)
        (ycor-vect end-vect)))

; Процедура отрисовки отрезков внутри переданной рамки
(define (segments->painter segment-list)
  (lambda (frame)
    (for-each
     (lambda (segment)
       (draw-line
        ((frame-coord-map frame) (start-segment segment))
        ((frame-coord-map frame) (end-segment segment))))
     segment-list)))

; Процедура отрисовки границ рамки
(define outline-painter
  (segments->painter
   (polygon (list (make-vect 0 0)
                  (make-vect 0 1)
                  (make-vect 1 1)
                  (make-vect 1 0)))))

; Процедура, которая рисует 'X', соединяя
; противоположные углы рамки
(define x-painter
  (segments->painter
   (append (polyline (list (make-vect 0 0)
                           (make-vect 1 1)))
           (polyline (list (make-vect 1 0)
                           (make-vect 0 1))))))

; Процедура, которая рисует ромб, соединяя
; между собой середины сторон рамки
(define rhombus-painter
  (segments->painter
   (polygon (list (make-vect 0 0.5)
                  (make-vect 0.5 1)
                  (make-vect 1 0.5)
                  (make-vect 0.5 0)))))

; Реализация рисовалки 'wave'
(define wave
  (segments->painter
   (append (polyline (list (make-vect 0 0.15)
                           (make-vect 0.15 0.4)
                           (make-vect 0.3 0.35)
                           (make-vect 0.4 0.35)
                           (make-vect 0.35 0.15)
                           (make-vect 0.4 0)))
           (polyline (list (make-vect 0 0.35)
                           (make-vect 0.15 0.6)
                           (make-vect 0.3 0.4)
                           (make-vect 0.35 0.5)
                           (make-vect 0.25 1)))
           (polyline (list (make-vect 0.4 1)
                           (make-vect 0.5 0.7)
                           (make-vect 0.6 1)))
           (polyline (list (make-vect 0.75 1)
                           (make-vect 0.6 0.5)
                           (make-vect 1 0.85)))
           (polyline (list (make-vect 0.6 0)
                           (make-vect 0.65 0.15)
                           (make-vect 0.6 0.35)
                           (make-vect 0.75 0.35)
                           (make-vect 1 0.65))))))

;(outline-painter frame)
;(x-painter frame)
;(rhombus-painter frame)
(wave frame)

(send target save-file "/tmp/image.png" 'png)