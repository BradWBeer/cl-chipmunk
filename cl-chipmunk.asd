(in-package :cl-user)


(defpackage :cl-chipmunk.def
  (:use :cl :asdf))

(in-package :cl-chipmunk.def)

(defsystem cl-chipmunk
  :description "Thin wrapper around Open Dynamics Engine for cl-bodge system"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cl-autowrap/libffi cl-plus-c )
  :serial t
  :components ((:file "packages")
               (:file "libchipmunk")
               (:file "autowrap")
	       
               ;;(:file "ode")
                (:module spec
                         :components ((:static-file "chipmunk.h")))))
