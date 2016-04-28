#lang racket

(require rackunit "../../src/chapter01/exercise_1_33.rkt")

(check-equal? (sum-prime-squares 3 9) 83 (printf "test#1 1.33 passed\n"))
(check-equal? (sum-prime-squares 15 100) 65419 (printf "test#2 1.33 passed\n"))

(check-equal? (product-prime-n 5) 24 (printf "test#3 1.33 passed\n"))
(check-equal? (product-prime-n 20) 8729721 (printf "test#4 1.33 passed\n"))