#lang racket

(require racket/gui/base
         "../lib/vectors.rkt"
         "../lib/segments.rkt"
         (only-in "../lib/graphics.rkt"
                  make-frame
                  frame-coord-map
                  polyline
                  polygon
                  up-split
                  right-split
                  beside
                  below
                  square-of-four
                  flip-horiz
                  flip-vert
                  rotate90
                  rotate180
                  rotate270))

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
                           (make-vect 1 0.65)))
           (polyline (list (make-vect 0.45 0.25)
                           (make-vect 0.5 0.27)
                           (make-vect 0.55 0.25))))))

; Процедура дублирует painter, располагая сверху,
; дублирует, располагая справа и выполняет рекурсивный вызов
; для отрисовки в правом верхнем углу
(define (corner-split painter n)
  (if (= n 0)
      painter
      (let ((up (up-split painter (- n 1)))
            (right (right-split painter (- n 1))))
        (let ((corner (corner-split painter (- n 1))))
          (beside (below painter up)
                  (below right corner))))))

; Процедура располагает 4 результата процедуры corner-split
(define (square-limit painter n)
  (let ((combine4 (square-of-four flip-vert rotate180
                                  identity flip-horiz)))
    (combine4 (corner-split painter n))))

;(wave frame)
;((corner-split wave 4) frame)
((square-limit wave 4) frame)

(send target save-file "/tmp/image.png" 'png)