#lang racket

(require rackunit
         "../../src/chapter02/exercise_2_46.rkt")

(define v1 (make-vect 1 2))
(define v2 (make-vect 3 4))

(check-equal? (xcor-vect v1) 1 (printf "test#1 2.46 passed\n"))
(check-equal? (ycor-vect v2) 4 (printf "test#2 2.46 passed\n"))

(check-equal? (add-vect v1 v2) (make-vect 4 6) (printf "test#3 2.46 passed\n"))
(check-equal? (sub-vect v2 v1) (make-vect 2 2) (printf "test#4 2.46 passed\n"))

(check-equal? (scale-vect 3 v1) (make-vect 3 6) (printf "test#5 2.46 passed\n"))