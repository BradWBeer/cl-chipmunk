(in-package :cl-chipmunk)


(c-include "spec/chipmunk.h"
 :spec-path "spec"
 :definition-package :%chipmunk
 ;; :exclude-sources (".*.h")
 ;; :include-sources ("chipmunk/cpVect.h"
 ;; 		   "chipmunk/cpBB.h"
 ;;                   "chipmunk/cpSpatialIndex.h"
 ;;                   "chipmunk/cpBody.h"
 ;;                   "chipmunk/cpShape.h"
 ;; 		   "chipmunk/cpPolyShape.h"
 ;; 		   "chipmunk/cpArbiter.h"
 ;; 		   "chipmunk/constraints/cpConstraint.h"
 ;; 		   "chipmunk/cpSpace.h")
 ;;:exclude-definitions ("dWorldSetStepThreadingImplementation")
 :symbol-regex (("cp?[A-Z]\\w*" () (lambda (name matches regex)
                                   (declare (ignore matches regex))
                                   (subseq name 1)))))
