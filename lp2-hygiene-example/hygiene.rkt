#lang racket

(define-syntax-rule (module+/define mod lhs rhs ...)
  (module+ mod
    (define hygiene "this shouldn't cause capture")
    (define lhs rhs ...)))

(module+/define main a 1)

(module+/define main b 2)
