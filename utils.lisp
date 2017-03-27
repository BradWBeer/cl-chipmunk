(in-package :cl-chipmunk)


(defmacro with-float-traps-masked (&body body)
  (let ((masking #+sbcl '(sb-int:with-float-traps-masked (:overflow
							  :underflow
							  :inexact
							  :invalid
							  :divide-by-zero))
		 #-sbcl '(progn)))
    `(,@masking
      ,@body)))


(defmacro cp-vect->lisp (x)
  (let ((var (gensym)))
    `(let ((,var ,x))
       (rtg-math:v! (plus-c:c-ref ,var %chipmunk:cp-vect :x)
	   (plus-c:c-ref ,var %chipmunk:cp-vect :y)))))

(defmacro with-returned-vect ((name) &body body)
  `(plus-c:c-with ((,name %chipmunk:cp-vect))
     ,@body
     (cp-vect->lisp ,name)))
