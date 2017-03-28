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
       (rtg-math:v! (plus-c:c-ref ,var %chip:cp-vect :x)
		    (plus-c:c-ref ,var %chip:cp-vect :y)))))


(defmacro lisp->cp-vect (c-vect vect)
  (let ((cvar (gensym))
	(lvar (gensym)))
    `(let ((,cvar ,c-vect)
	   (,lvar ,vect))
       (setf (plus-c:c-ref ,cvar %chip:cp-vect :x) (coerce (elt ,lvar 0) 'double-float)
	     (plus-c:c-ref ,cvar %chip:cp-vect :y) (coerce (elt ,lvar 1) 'double-float))
       ,lvar)))
	

(defmacro with-vect ((name) &body body)
  `(plus-c:c-with ((,name %chipmunk:cp-vect))
     ,@body))


(defmacro with-returned-vect ((name) &body body)
  `(plus-c:c-with ((,name %chipmunk:cp-vect))
     ,@body
     (cp-vect->lisp ,name)))
