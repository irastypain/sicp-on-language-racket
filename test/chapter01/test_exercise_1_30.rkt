#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_30.rkt")

(check-equal? (sum cube 0 inc 3) 36 (printf "test#1 1.30 passed\n"))
(check-equal? (sum cube 0 inc 7) 784 (printf "test#2 1.30 passed\n"))
(check-equal? (sum cube 2 inc 13) 8280 (printf "test#3 1.30 passed\n"))
(check-equal? (sum square 0 inc 3) 14 (printf "test#4 1.30 passed\n"))
(check-equal? (sum cube 2 square 35) 4168 (printf "test#5 1.30 passed\n"))