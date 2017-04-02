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

(defmacro df (x)
  `(coerce ,x 'double-float))

(defmacro cp-vect->lisp (x)
  (let ((var (gensym)))
    `(let ((,var ,x))
       (rtg-math:v! (%chip:cp-vect.x ,var)
		    (%chip:cp-vect.y ,var)))))


(defmacro lisp->cp-vect (c-vect vect)
  (let ((cvar (gensym))
	(lvar (gensym)))
    `(let ((,cvar ,c-vect)
	   (,lvar ,vect))
       (setf (%chip:cp-vect.x ,cvar) (df (elt ,lvar 0))
	     (%chip:cp-vect.y ,cvar) (df (elt ,lvar 1)))
       ,lvar)))
	

(defmacro with-vect ((name) &body body)
  `(plus-c:c-with ((,name %chipmunk:cp-vect))
     ,@body))

(defmacro with-set-vect ((name value) &body body)
  `(with-vect (,name)
     (lisp->cp-vect ,name ,value)
     ,@body))

(defmacro with-returned-vect ((name) &body body)
  `(plus-c:c-with ((,name %chipmunk:cp-vect))
     ,@body
     (cp-vect->lisp ,name)))
