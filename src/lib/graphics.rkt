#lang racket

(require "vectors.rkt")
(require "segments.rkt")

; Библиотека 'Язык описания изображения'

; Конструктор рамки
(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))

; Селектор вектора начальной точки
(define (origin-frame frame)
  (car frame))

; Селектор вектора правого края
(define (edge1-frame frame)
  (cadr frame))

; Селектор вектора левого края
(define (edge2-frame frame)
  (caddr frame))

; Процедура возвращает процедуру для трансформации
; единичного квадрата таким образом, чтобы он
; умещался в рамку
(define (frame-coord-map frame)
  (lambda (v)
    (add-vect
     (origin-frame frame)
     (add-vect (scale-vect (xcor-vect v)
                           (edge1-frame frame))
               (scale-vect (ycor-vect v)
                           (edge2-frame frame))))))


; Процедура добавляет painter2 к painter1 справа
(define (beside painter1 painter2)
  (identity))

; Процедура добавляет painter2 к painter1 снизу
(define (below painter1 painter2)
  (identity))

; Процедура отображает painter зеркально вертикально
(define (flip-vert painter)
  (identity))

; Процедура отображает painter зеркально горизонтально
(define (flip-horiz painter)
  (identity))

; Процедура поворачивает painter на 180 градусов
(define (rotate180 painter)
  (compose flip-vert flip-horiz))

; Процедура комбинирования painter'ов, к которым применены
; одноаргументные операции tl, tr, bl, br, соответственно
(define (square-of-four tl tr bl br)
  (lambda (painter)
    (let ((top (beside (tl painter) (tr painter)))
          (bottom (beside (bl painter) (br painter))))
      (below bottom top))))

; Процедура разделения painter'а, которая принимает
; первичную и вторичную процедуры размещения разделённых
; painter'ов
(define (split primary-op secondary-op)
  (define (split-iter painter n)
    (if (= n 0)
        painter
        (let ((smaller (split-iter painter (- n 1))))
          (primary-op painter (secondary-op smaller smaller)))))
  split-iter)

; Процедура добавляет painter справа, отобразив зеркально
; относительно горизонтали; затем полученный результат дублирует
; и добавляет снизу
(define (flipped-pairs painter)
  (square-of-four identity flip-vert identity flip-vert))

; Процедура разделяет painter надвое, добавляя справа
(define right-split (split beside below))

; Процедура разделяет painter надвое, добавляя сверху
(define up-split (split below beside))

; Процедура разделяет painter надвое, располагая сверху,
; надвое, располагая справа и выполняет рекурсивный вызов
; для отрисовки в правом верхнем углу
(define (corner-split painter n)
  (if (= n 0)
      painter
      (let ((up (up-split painter (- n 1)))
            (right (right-split painter (- n 1))))
        (let ((top-left (beside up up))
              (bottom-right (below right right))
              (corner (corner-split painter (- n 1))))
          (beside (below painter top-left)
                  (below bottom-right corner))))))

; Процедура располагает 4 результата процедуры corner-split
(define (square-limit painter n)
  (let ((combine4 (square-of-four flip-horiz identity
                                  rotate180 flip-vert)))
    (combine4 (corner-split painter n))))

; Процедура отрисовки отрезка прямой
(define (draw-line start-vect end-vect)
  (draw-line (xcor-vect start-vect)
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

; Процедура отрисовки ломаной линии из списка векторов
(define (polyline vectors)
  (if (empty? (cdr vectors))
      (list)
      (append (list (make-segment (car vectors)
                                  (cadr vectors)))
              (polyline (cdr vectors)))))

; Процедура отрисовки многоугольника
(define (polygon vectors)
  (if (empty? vectors)
      (list)
      (polyline (append vectors (list (car vectors))))))

; Экспорт процедур
(provide beside
         below
         flip-vert
         flip-horiz
         flipped-pairs
         rotate180
         split
         up-split
         right-split
         corner-split
         square-of-four
         square-limit
         frame-coord-map
         segments->painter
         draw-line
         make-frame
         polyline
         polygon)