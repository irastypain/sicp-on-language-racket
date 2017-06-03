#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_29.rkt")

; Построение мобиля
(define branch1 (make-branch 10 20))
(define branch2 (make-branch 10 10))
(define branch3 (make-branch 2 5))
(define branch4 (make-branch 2 5))

(define mobile34 (make-mobile branch3 branch4))
(define branch34 (make-branch 10 mobile34))
(define mobile234 (make-mobile branch2 branch34))
(define branch234 (make-branch 10 mobile234))
(define mobile1234 (make-mobile branch1 branch234))

; Построение мобиля
(define mobile12 (make-mobile branch1 branch2))
(define branch12 (make-branch 5 mobile12))
(define mobile123 (make-mobile branch12 branch3))

; Построение мобиля
(define b1 (make-branch 2 6))
(define b2 (make-branch 3 4))
(define b3 (make-branch 2 5))
(define b4 (make-branch 3 2))
(define b5 (make-branch 2 3))
(define b6 (make-branch 1 4))
(define b7 (make-branch 4 1))

(define m12 (make-mobile b1 b2))
(define b12 (make-branch 3 m12))
(define m45 (make-mobile b4 b5))
(define b45 (make-branch 2 m45))
(define m67 (make-mobile b6 b7))
(define b67 (make-branch 10 m67))
(define m345 (make-mobile b3 b45))
(define b345 (make-branch 5 m345))
(define m34567 (make-mobile b345 b67))
(define b34567 (make-branch 2 m34567))
(define m1234567 (make-mobile b12 b34567))


(check-equal? (left-branch mobile12) branch1 (printf "test#1 2.29 passed\n"))
(check-equal? (right-branch mobile12) branch2 (printf "test#2 2.29 passed\n"))
(check-equal? (branch-length branch12) 5 (printf "test#3 2.29 passed\n"))
(check-equal? (branch-structure branch34) mobile34 (printf "test#4 2.29 passed\n"))

(check-equal? (total-weight mobile12) 30 (printf "test#5 2.29 passed\n"))
(check-equal? (total-weight mobile1234) 40 (printf "test#5 2.29 passed\n"))

(check-true (balanced? mobile1234) (printf "test#6 2.29 passed\n"))
(check-false (balanced? mobile123) (printf "test#7 2.29 passed\n"))

(check-true (balanced? m1234567) (printf "test#8 2.29 passed\n"))
