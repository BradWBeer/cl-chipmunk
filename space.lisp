(in-package :cl-chipmunk)


(defun cp-space-new ()
  (with-float-traps-masked
    (%chip:cp-space-new)))



(defun cp-space-get-gravity (space)
  (with-returned-vect (ret) 
    (%chipmunk:cp-space-get-gravity ret space)))

(defun cp-space-set-gravity (space v)
  (with-vect (g) 
    (lisp->cp-vect g v)
    (%chip:cp-space-set-gravity space g))
  space)
    
(defun cp-space-get-collision-slop (space)
  (%chip:cp-space-get-collision-slop space))

(defun cp-space-set-collision-slop (space slop)
  (%chip:cp-space-set-collision-slop 
   space
   (coerce slop 'double-float)))

(defun cp-space-get-iterations (space)
  (%chip:cp-space-get-iterations space))
  
(defun cp-space-set-iterations (space iter)
  (%chip:cp-space-set-iterations space iter))

(defun cp-space-get-static-body (space)
    (%chip:cp-space-get-static-body space))
