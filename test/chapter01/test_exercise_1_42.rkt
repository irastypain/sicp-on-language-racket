#lang racket

(require rackunit
         "../../src/lib/base.rkt"
         "../../src/chapter01/exercise_1_42.rkt")

(check-equal? ((compose square inc) 6) 49 (printf "test#1 1.42 passed\n"))
(check-equal? ((compose (compose inc square) inc) 6) 50 (printf "test#2 1.42 passed\n"))
(check-equal? ((compose (compose square inc) square) 5) 676 (printf "test#3 1.42 passed\n"))
