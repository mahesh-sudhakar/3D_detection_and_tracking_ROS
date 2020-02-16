
(cl:in-package :asdf)

(defsystem "obj_recognition-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "GetNormals" :depends-on ("_package_GetNormals"))
    (:file "_package_GetNormals" :depends-on ("_package"))
  ))