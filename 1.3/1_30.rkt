#lang racket/base

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (+ result (term a)))))
  (iter a 0)
)


;Usage example
(sum (lambda (x) (* x x)) 1 (lambda(x) (+ x 1)) 8)