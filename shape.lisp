(in-package :cl-chipmunk)

(defun cp-segment-shape-new (body a b radius)
  (plus-c:c-with ((aa %chipmunk:cp-vect)
		  (bb %chipmunk:cp-vect))
    (lisp->cp-vect aa a)
    (lisp->cp-vect bb b)
    (%chip:cp-segment-shape-new body aa bb (coerce radius 'double-float))))

(defun cp-shape-free (shape)
  (%chip:cp-shape-free shape))

(defun cp-shape-set-friction (shape friction)
  (%chip:cp-shape-set-friction shape (df friction)))

(defun cp-shape-get-friction (shape)
  (%chip:cp-shape-get-friction shape))

(defun cp-Moment-For-Circle (m r1 r2 &optional (offset (rtg-math:v! 0 0)))
  (with-vect (v)
    (lisp->cp-vect v offset)
    (%chip:cp-moment-for-circle (df m)
				(df r1)
				(df r2)
				v)))

(defun cp-circle-shape-new (body radius &optional offset)
  (unless offset 
    (setf offset (rtg-math:v! 0 0)))
  (with-set-vect (v offset)
    (%chip:cp-circle-shape-new body (df radius) v)))
