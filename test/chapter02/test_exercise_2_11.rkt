#lang racket

(require rackunit
         "../../src/lib/interval-arithmetic.rkt"
         "../../src/chapter02/exercise_2_11.rkt")

(define ab-nn (make-interval -2 -1))
(define ab-nz (make-interval -1 0))
(define ab-zz (make-interval 0 0))
(define ab-zp (make-interval 0 2))
(define ab-pp (make-interval 1 2))
(define ab-np (make-interval -1 2))

(define cd-nn (make-interval -4 -3))
(define cd-nz (make-interval -3 0))
(define cd-zz (make-interval 0 0))
(define cd-zp (make-interval 0 4))
(define cd-pp (make-interval 3 4))
(define cd-np (make-interval -3 4))

(check-equal? (mul-interval-v1 ab-np cd-np) (make-interval -6 8) (printf "test#1 2.11 passed\n"))
(check-equal? (mul-interval-v1 ab-np cd-nz) (make-interval -6 3) (printf "test#2 2.11 passed\n"))
(check-equal? (mul-interval-v1 ab-zp cd-zz) (make-interval 0 0) (printf "test#3 2.11 passed\n"))
(check-equal? (mul-interval-v1 ab-np cd-zp) (make-interval -4 8) (printf "test#4 2.11 passed\n"))
(check-equal? (mul-interval-v1 ab-nn cd-pp) (make-interval -8 -3) (printf "test#5 2.11 passed\n"))
(check-equal? (mul-interval-v1 ab-pp cd-zp) (make-interval 0 8) (printf "test#6 2.11 passed\n"))
(check-equal? (mul-interval-v1 ab-nz cd-np) (make-interval -4 3) (printf "test#7 2.11 passed\n"))
(check-equal? (mul-interval-v1 ab-zp cd-nn) (make-interval -8 0) (printf "test#8 2.11 passed\n"))
(check-equal? (mul-interval-v1 ab-zz cd-nn) (make-interval 0 0) (printf "test#9 2.11 passed\n"))

(check-equal? (mul-interval-v2 ab-np cd-np) (make-interval -6 8) (printf "test#11 2.11 passed\n"))
(check-equal? (mul-interval-v2 ab-np cd-nz) (make-interval -6 3) (printf "test#11 2.11 passed\n"))
(check-equal? (mul-interval-v2 ab-zp cd-zz) (make-interval 0 0) (printf "test#12 2.11 passed\n"))
(check-equal? (mul-interval-v2 ab-np cd-zp) (make-interval -4 8) (printf "test#13 2.11 passed\n"))
(check-equal? (mul-interval-v2 ab-nn cd-pp) (make-interval -8 -3) (printf "test#14 2.11 passed\n"))
(check-equal? (mul-interval-v2 ab-pp cd-zp) (make-interval 0 8) (printf "test#15 2.11 passed\n"))
(check-equal? (mul-interval-v2 ab-nz cd-np) (make-interval -4 3) (printf "test#16 2.11 passed\n"))
(check-equal? (mul-interval-v2 ab-zp cd-nn) (make-interval -8 0) (printf "test#17 2.11 passed\n"))
(check-equal? (mul-interval-v2 ab-zz cd-nn) (make-interval 0 0) (printf "test#18 2.11 passed\n"))
