#lang scribble/lp2

@(define-syntax-rule (chunk/define <> lhs rhs ...)
   (chunk <>
          (define hygiene "this shouldn't cause capture")
          (define lhs rhs ...)))

@(chunk <*> <a> <b>)

@(chunk/define <a> a 1)

@(chunk/define <b> b 2)
