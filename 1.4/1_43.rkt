#lang racket/base

(define (compose f g)
  (λ (x) (f (g x)))
)

(define (repeated f n)
  (if (< n 1) 
      (λ (x) x)
      (compose f (repeated f (- n 1)))
  )
)

(define (square x)
  (* x x)
)

((repeated square 2) 5)