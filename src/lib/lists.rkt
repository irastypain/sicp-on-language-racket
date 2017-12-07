#lang racket

; Процедура получения n-ного элемента списка
(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

; Процедура вычисления длины списка
; (итеративная версия)
(define (length items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ count 1))))
  (length-iter items 0))

; Процедура присоединения списка list2 к списку list1
(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

; Процедура получения количества листьев в дереве
(define (count-leaves tree)
  (cond ((null? tree) 0)
        ((not (pair? tree)) 1)
        (else (+ (count-leaves (car tree))
                 (count-leaves (cdr tree))))))

; Процедура накопления результата применения
; некоторой операции к последовательности
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

; Процедура отображения передаваемой функции на последовательность,
; которая возвращает список значений для каждого элемента 
(define (flatmap proc seq)
  (accumulate append null (map proc seq)))

; Процедура генерации последовательности целых чисел
; в заданном диапазоне
(define (enumerate-interval low high)
  (if (> low high)
      null
      (cons low (enumerate-interval (+ low 1) high))))

; Процедура удаления элемента из списка
(define (remove item sequence)
  (filter (lambda (x) (not (= x item)))
          sequence))

; Экспорт процедур
(provide list-ref
         length
         append
         count-leaves
         accumulate
         flatmap
         enumerate-interval
         remove)