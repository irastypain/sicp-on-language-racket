#lang racket

(require rackunit "../../src/chapter01/exercise_1_12.rkt")

(check-equal? (pascal-triangle-item 1 1) 1 (printf "test#1 1.12 passed\n"))
(check-equal? (pascal-triangle-item 3 2) 2 (printf "test#2 1.12 passed\n"))
(check-equal? (pascal-triangle-item 4 2) 3 (printf "test#3 1.12 passed\n"))
(check-equal? (pascal-triangle-item 5 3) 6 (printf "test#4 1.12 passed\n"))
(check-equal? (pascal-triangle-item 10 6) 126 (printf "test#5 1.12 passed\n"))