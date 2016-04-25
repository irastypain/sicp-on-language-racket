#lang racket

(require rackunit "../../src/chapter01/exercise_1_28.rkt")

(check-true (miller-rabin-test 5) (printf "test#1 1.28 passed\n"))
(check-true (miller-rabin-test 17) (printf "test#2 1.28 passed\n"))
(check-true (miller-rabin-test 10111) (printf "test#3 1.28 passed\n"))
(check-false (miller-rabin-test 561) (printf "test#4 1.28 passed\n"))
(check-false (miller-rabin-test 1105) (printf "test#5 1.28 passed\n"))
(check-false (miller-rabin-test 1729) (printf "test#6 1.28 passed\n"))
