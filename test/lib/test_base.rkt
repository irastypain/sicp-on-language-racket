#lang racket

(require rackunit
         "../../src/lib/base.rkt")

(display "\ntest square\n")
(check-equal? (square 4) 16 (printf "test#1 square passed\n"))
(check-equal? (square (- 3)) 9 (printf "test#2 square passed\n"))
(check-equal? (square 0) 0 (printf "test#3 square passed\n"))
(check-= (square 0.2) 0.04 0.001 (printf "test#4 square passed\n"))

(display "\ntest cube\n")
(check-equal? (cube 4) 64 (printf "test#1 cube passed\n"))
(check-equal? (cube (- 3)) -27 (printf "test#2 cube passed\n"))
(check-equal? (cube 0) 0 (printf "test#3 cube passed\n"))
(check-= (cube 0.2) 0.008 0.0001 (printf "test#4 cube passed\n"))

(display "\ntest sum-of-squares\n")
(check-equal? (sum-of-squares 4 5) 41 (printf "test#1 sum-of-squares passed\n"))
(check-equal? (sum-of-squares (- 3) 4) 25 (printf "test#2 sum-of-squares passed\n"))
(check-equal? (sum-of-squares 0 0) 0 (printf "test#3 sum-of-squares passed\n"))
(check-= (sum-of-squares 0.2 (- 0.5)) 0.29 0.001 (printf "test#4 sum-of-squares passed\n"))

(display "\ntest divides?\n")
(check-false (divides? 4 5) (printf "test#1 divides? passed\n"))
(check-true (divides? (- 3) (- 3)) (printf "test#2 divides? passed\n"))
(check-true (divides? 4 (- 4)) (printf "test#3 divides? passed\n"))
