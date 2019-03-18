#lang at-exp racket/base

(provide cross-phase-macro)

(require (only-in racket/string string-join)
         (only-in scribble/lp2 chunk)
         syntax/parse/define
         (for-syntax racket/base))

(define (func-not-exported)
  "This is the result of func-not-exported.")

(define-syntax-parser cross-phase-macro
  [(_ <>:id)
   @#`begin{@(func-not-exported)

    @chunk[<>
           (string-join
            '("string-join is not provided"
              "at runtime"
              "by #lang scribble/lp2"))]
    }])
