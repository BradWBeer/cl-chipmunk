(in-package :cl-chipmunk)


(c-include "/usr/local/include/chipmunk/chipmunk.h"
 :spec-path '(cl-chipmunk spec)
 :definition-package :%chipmunk
 ;;:exclude-sources (".*.h")
 :include-sources ("chipmunk/cpVect.h"
 		   "chipmunk/cpBB.h"
                   "chipmunk/cpSpace.h"
		   "chipmunk/cpSpatialIndex.h"
		   "chipmunk/cpBody.h"
                   ;; "chipmunk/cpShape.h"
 		   ;; "chipmunk/cpPolyShape.h"
 		   ;; "chipmunk/cpArbiter.h"
 		   ;; "chipmunk/constraints/cpConstraint.h"
 		   )
 )
 ;;:exclude-definitions ("dWorldSetStepThreadingImplementation")
 ;; :symbol-regex (("cp?[A-Z]\\w*" () (lambda (name matches regex)
 ;;                                   (declare (ignore matches regex))
 ;;                                   (subseq name 2)))))
