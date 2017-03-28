(in-package :cl-chipmunk.def)


(defpackage :%chipmunk
  (:nicknames :%chip)
  (:use))


(defpackage :cl-chipmunk
  (:nicknames :chipmunk :chip)
  (:use :cl :alexandria :autowrap :plus-c)
  (:export 

   #:cp-space-init
   #:cp-space-new
   #:cp-space-get-gravity
   #:cp-space-set-gravity
   #:cp-space-get-collision-slop
   #:cp-space-set-collision-slop
   #:cp-space-get-iterations
   #:cp-space-set-iterations
))
