
(cl:in-package :asdf)

(defsystem "objectmapping-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectData" :depends-on ("_package_ObjectData"))
    (:file "_package_ObjectData" :depends-on ("_package"))
  ))