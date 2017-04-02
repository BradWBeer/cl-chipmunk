(in-package :cl-chipmunk)

(defun cp-space-new ()
  (with-float-traps-masked
    (%chip:cp-space-new)))

(defun cp-space-free (space)
  (%chip:cp-space-free space))

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
   (df slop)))

(defun cp-space-get-iterations (space)
  (%chip:cp-space-get-iterations space))
  
(defun cp-space-set-iterations (space iter)
  (%chip:cp-space-set-iterations space iter))

(defun cp-space-get-static-body (space)
    (%chip:cp-space-get-static-body space))

(defun cp-space-get-collision-bias (cspace)
    (%chip:cp-space-get-collision-bias cspace))

(defun cp-space-set-collision-bias (cspace bias)
    (%chip:cp-space-set-collision-bias cspace 
				       (df bias)))

(defun cp-space-get-damping (cspace)
    (%chip:cp-space-get-damping cspace))

(defun cp-space-set-damping (cspace bias)
    (%chip:cp-space-set-damping cspace 
				(df bias)))

(defun cp-space-add-shape (space shape)
  (%chip:cp-space-add-shape space shape))

(defun cp-space-add-body (space body)
  (%chip:cp-space-add-body space body))

(defun cp-space-step (space time)
  (%chip:cp-space-step space (df time)))
