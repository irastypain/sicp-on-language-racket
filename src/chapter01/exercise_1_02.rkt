#lang racket

(define expression
  (/ (+ 5 4 (- 2
             (- 3
                ( + 6
                    (/ 4 5)))))
     (* 3
        (- 6 2)
        (- 2 7))))

(provide expression)
