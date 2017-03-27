(cl:in-package :%chipmunk)

(cffi:define-foreign-library libchipmunk
  (:darwin (:or "libchipmunk.7.dylib" "libchipmunk.dylib"))
  (:unix (:or "libchipmunk.so.7" ; debian/ubuntu convention for 0.14 version
              "libchipmunk.so.7.0.1" "libchipmunk.so"))
  (:windows "chipmunk.dll")
  (t (:default "chipmunk")))


(cffi:use-foreign-library libchipmunk)
