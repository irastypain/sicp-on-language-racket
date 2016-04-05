#lang racket

(require rackunit "../../src/chapter01/exercise_1_10.rkt")

; Тесты для функции Аккермана
(check-equal? (A 1 10) 1024 (printf "test#1 1.10 passed\n"))
(check-equal? (A 2 4) 65536 (printf "test#2 1.10 passed\n"))
(check-equal? (A 3 3) 65536 (printf "test#3 1.10 passed\n"))

; Тесты для функции `f`
(check-equal? (f 1) 2 (printf "test-f#1 1.10 passed\n"))
(check-equal? (f 2) 4 (printf "test-f#2 1.10 passed\n"))
(check-equal? (f 3) 6 (printf "test-f#3 1.10 passed\n"))
(check-equal? (f 4) 8 (printf "test-f#4 1.10 passed\n"))
(check-equal? (f 5) 10 (printf "test-f#5 1.10 passed\n"))

; Тесты для функции `g`
(check-equal? (g 1) 2 (printf "test-g#1 1.10 passed\n"))
(check-equal? (g 2) 4 (printf "test-g#2 1.10 passed\n"))
(check-equal? (g 3) 8 (printf "test-g#3 1.10 passed\n"))
(check-equal? (g 4) 16 (printf "test-g#4 1.10 passed\n"))
(check-equal? (g 5) 32 (printf "test-g#5 1.10 passed\n"))

; Тесты для функции `h`
(check-equal? (h 1) 2 (printf "test-h#1 1.10 passed\n"))
(check-equal? (h 2) 4 (printf "test-h#2 1.10 passed\n"))
(check-equal? (h 3) 16 (printf "test-h#3 1.10 passed\n"))
(check-equal? (h 4) 65536 (printf "test-h#4 1.10 passed\n"))