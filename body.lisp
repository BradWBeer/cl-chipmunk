(in-package :cl-chipmunk)

(defun cp-body-new (mass moment) 
  (%chip:cp-body-new (df mass) (df moment)))

(defun cp-body-free (shape)
  (%chip:cp-body-free shape))

(defun cp-body-set-position (body pos)
  (with-set-vect (v pos)
    (%chip:cp-body-set-position body v)))

(defun cp-body-get-position (body)
  (with-returned-vect (ret)  
    (%chip:cp-body-get-position ret body))) 


(defun cp-body-set-velocity (body velocity)
  (with-set-vect (v velocity)
    (%chip:cp-body-set-velocity body v)))

(defun cp-body-get-velocity (body)
  (with-returned-vect (ret)  
    (%chip:cp-body-get-velocity ret body))) 
