
(cl:in-package :asdf)

(defsystem "obj_recognition-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "DetectedObject" :depends-on ("_package_DetectedObject"))
    (:file "_package_DetectedObject" :depends-on ("_package"))
    (:file "DetectedObjectsArray" :depends-on ("_package_DetectedObjectsArray"))
    (:file "_package_DetectedObjectsArray" :depends-on ("_package"))
    (:file "SegmentedClustersArray" :depends-on ("_package_SegmentedClustersArray"))
    (:file "_package_SegmentedClustersArray" :depends-on ("_package"))
  ))