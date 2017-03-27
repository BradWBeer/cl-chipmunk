(in-package :cl-chipmunk)


(defun cp-space-new ()
  (with-float-traps-masked
    (%chip:cp-space-new)))



(defun cp-space-get-gravity (space)
  (with-returned-vect (ret) 
    (%chipmunk:cp-space-get-gravity ret space)))
    

;; (plus-c:c-with ((ret %chip:cp-vect))
;;   	   (%chipmunk:cp-space-get-gravity g space)
;; 	   (print (plus-c:c-ref g %chipmunk:cp-vect :x)))

;; (plus-c:c-with ((g %chipmunk:cp-vect))
 
