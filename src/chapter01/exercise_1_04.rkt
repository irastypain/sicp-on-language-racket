#lang racket

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(provide a-plus-abs-b)