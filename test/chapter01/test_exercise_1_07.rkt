#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_07.rkt")

; Тесты для примеров из книги
(check-equal? (sqrt 9) 3.00009155413138 (printf "test-from-book#1 1.7 passed\n"))
(check-equal? (sqrt (+ 100 37)) 11.704699917758145 (printf "test-from-book#2 1.7 passed\n"))
(check-equal? (sqrt (+ (sqrt 2) (sqrt 3))) 1.7739279023207892 (printf "test-from-book#3 1.7 passed\n"))
(check-equal? (square (sqrt 1000)) 1000.000369924366 (printf "test-from-book#4 1.7 passed\n"))

; Тесты для улучшенной процедуры
(check-equal? (better-sqrt 9) 3.0 (printf "test#1 1.7 passed\n"))
(check-equal? (better-sqrt 0.09) 0.3 (printf "test#2 1.7 passed\n"))
(check-equal? (square (better-sqrt 1000)) 1000.0 (printf "test#3 1.7 passed\n"))
(check-equal? (better-sqrt (+ (better-sqrt 9) (better-sqrt 4))) 2.23606797749979 (printf "test#4 1.7 passed\n"))
