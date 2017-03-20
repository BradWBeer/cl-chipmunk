(cl:in-package :%chipmunk)


(cffi:define-foreign-library libchipmunk
  (:darwin (:or "libchipmunk.6.dylib" "libchipmunk.dylib"))
  (:unix (:or "libchipmunk.so.0d3.0.0" ; debian/ubuntu convention for 0.14 version
              "libchipmunk.so.0d3" "libchipmunk.so.0d3"))
  (:windows "chipmunk.dll")
  (t (:default "chipmunk")))


(cffi:use-foreign-library libchipmunk)
