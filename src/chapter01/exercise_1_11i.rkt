#lang racket

; Итеративный процесс
(define (iter-fn a b c count)
  (if (= count 0)
      c
      (iter-fn (+ a b c) a b (- count 1))))

(define (fn n)
  (iter-fn 2 1 0 n))

; Экспорт процедуры
(provide fn)