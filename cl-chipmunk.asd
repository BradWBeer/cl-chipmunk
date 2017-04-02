(in-package :cl-user)


(defpackage :cl-chipmunk.def
  (:use :cl :asdf))

(in-package :cl-chipmunk.def)

(defsystem cl-chipmunk
  :description "A thin wrapper around the chipmunk 2D physics library."
  :version "0.0.1"
  :author "Brad (warweasle) Beer"
  :mailto "warweasle@warweasle.com"
  :license "MIT"
  :depends-on (alexandria cl-autowrap/libffi cl-plus-c rtg-math)
  :serial t
  :components ((:file "packages")
               (:file "libchipmunk")
               (:file "autowrap")
	       (:module spec
			:components ((:static-file "chipmunk.h")))
	       (:file "utils")
	       (:file "space")
	       (:file "body")
	       (:file "shape")))
