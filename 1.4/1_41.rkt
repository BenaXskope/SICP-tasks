#lang racket/base

(define (twice f)
  (λ (x) (f (f x)))
)

(define (inc x)
  (+ x 1)
)

(((twice (twice twice)) inc) 5)

