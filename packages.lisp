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
   #:cp-space-free 
   #:cp-space-get-static-body
   #:cp-space-get-gravity
   #:cp-space-set-gravity
   #:cp-space-get-collision-slop
   #:cp-space-set-collision-slop
   #:cp-space-get-iterations
   #:cp-space-set-iterations
   #:cp-space-get-collision-bias
   #:cp-space-set-collision-bias
   #:cp-space-get-damping
   #:cp-space-set-damping
   #:cp-space-add-shape
   #:cp-space-step
   
   #:cp-segment-shape-new
   #:cp-shape-set-friction
   #:cp-shape-get-friction
   #:cp-Moment-For-Circle
   #:cp-circle-shape-new
   #:cp-shape-free

   #:cp-body-new
   #:cp-body-free
   #:cp-space-add-body
   #:cp-body-get-position
   #:cp-body-set-position
   #:cp-body-get-velocity
   #:cp-body-set-velocity
))
