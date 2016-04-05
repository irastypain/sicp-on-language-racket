#lang racket

; Процедура возвращает значение элемента (i, j) треугольника Паскаля
(define (pascal-triangle-item i j)
  (if (or (= j 1) (= j i)) 1
      (+ (pascal-triangle-item (- i 1) (- j 1))
         (pascal-triangle-item (- i 1) j))))

; Экспорт процедуры
(provide pascal-triangle-item)