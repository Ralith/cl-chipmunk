(asdf:defsystem cl-chipmunk
  :depends-on (#:cffi)
  :components
  ((:file "packages")
   (:module "bindings"
            :depends-on ("packages")
            :components
            ((:file "library")
             (:file "types")
             (:file "vect" :depends-on ("types"))
             (:file "bounding-box" :depends-on ("types"))
             (:file "body" :depends-on ("types" "vect"))))))