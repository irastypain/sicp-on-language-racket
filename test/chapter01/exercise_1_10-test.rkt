#lang racket

(require rackunit
         rackunit/text-ui
         "../../src/ch_1/ex_1_10.rkt")

(define tests
  (test-suite
    "Akkerman's function"

    (check-equal? 1024 (A 1 10))
    (check-equal? 65536 (A 2 4))
    (check-equal? 65536 (A 3 3))

    (test-case
      "When f(n) = A(0,n)"
      (define (f n) (A 0 n))

      (check-equal? 2 (f 1))
      (check-equal? 4 (f 2))
      (check-equal? 6 (f 3))
      (check-equal? 8 (f 4))
      (check-equal? 10 (f 5)))

    (test-case
      "When g(n) = A(1,n)"
      (define (g n) (A 1 n))

      (check-equal? 2 (g 1))
      (check-equal? 4 (g 2))
      (check-equal? 8 (g 3))
      (check-equal? 16 (g 4))
      (check-equal? 32 (g 5)))

    (test-case
      "When h(n) = A(2,n)"
      (define (h n) (A 2 n))

      (check-equal? 2 (h 1))
      (check-equal? 4 (h 2))
      (check-equal? 16 (h 3))
      (check-equal? 65536 (h 4)))

    (test-case
      "When k(n) = 5 * n * n"
      (define (k n) (* 5 n n))

      (check-equal? 5 (k 1))
      (check-equal? 20 (k 2))
      (check-equal? 45 (k 3))
      (check-equal? 80 (k 4))
      (check-equal? 125 (k 5)))))

(run-tests tests 'verbose)
