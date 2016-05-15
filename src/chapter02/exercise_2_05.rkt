#lang racket

(require "../lib/base.rkt"
         "../lib/fast-expt.rkt")

; Набор процедур для представления пары неотрицательных
; целых чисел как произведение 2^a * 3^b

; Конструктор неотрицательного целого числа
; Если один из аргументов отрицателен, процедура
; возвращает -1
(define (cons a b)
  (if (or (< a 0) (< b 0))
      -1
      (* (fast-expt 2 a) (fast-expt 3 b))))

(define (car pair)
  (decomposition 2 pair))

(define (cdr pair)
  (decomposition 3 pair))

; Процедура разложения аргумента на простые множители
; При неположительном значении value порождается ошибка
(define (decomposition base value)
  (define (decomp-iter value counter)
    (if (= (remainder value base) 0)
        (decomp-iter (/ value base) (+ counter 1))
        counter))
  (if (<= value 0)
      (display "Error! Value is not positive.")
      (decomp-iter value 0)))

; Экспорт процедур
(provide cons car cdr)