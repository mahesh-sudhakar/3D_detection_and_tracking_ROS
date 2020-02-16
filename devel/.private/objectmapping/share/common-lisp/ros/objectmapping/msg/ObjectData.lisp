; Auto-generated. Do not edit!


(cl:in-package objectmapping-msg)


;//! \htmlinclude ObjectData.msg.html

(cl:defclass <ObjectData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image_rgb
    :reader image_rgb
    :initarg :image_rgb
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (image_depth
    :reader image_depth
    :initarg :image_depth
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (constant
    :reader constant
    :initarg :constant
    :type cl:float
    :initform 0.0)
   (reference_board_pose
    :reader reference_board_pose
    :initarg :reference_board_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (reference_camera_pose
    :reader reference_camera_pose
    :initarg :reference_camera_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass ObjectData (<ObjectData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name objectmapping-msg:<ObjectData> is deprecated: use objectmapping-msg:ObjectData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader objectmapping-msg:header-val is deprecated.  Use objectmapping-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image_rgb-val :lambda-list '(m))
(cl:defmethod image_rgb-val ((m <ObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader objectmapping-msg:image_rgb-val is deprecated.  Use objectmapping-msg:image_rgb instead.")
  (image_rgb m))

(cl:ensure-generic-function 'image_depth-val :lambda-list '(m))
(cl:defmethod image_depth-val ((m <ObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader objectmapping-msg:image_depth-val is deprecated.  Use objectmapping-msg:image_depth instead.")
  (image_depth m))

(cl:ensure-generic-function 'constant-val :lambda-list '(m))
(cl:defmethod constant-val ((m <ObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader objectmapping-msg:constant-val is deprecated.  Use objectmapping-msg:constant instead.")
  (constant m))

(cl:ensure-generic-function 'reference_board_pose-val :lambda-list '(m))
(cl:defmethod reference_board_pose-val ((m <ObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader objectmapping-msg:reference_board_pose-val is deprecated.  Use objectmapping-msg:reference_board_pose instead.")
  (reference_board_pose m))

(cl:ensure-generic-function 'reference_camera_pose-val :lambda-list '(m))
(cl:defmethod reference_camera_pose-val ((m <ObjectData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader objectmapping-msg:reference_camera_pose-val is deprecated.  Use objectmapping-msg:reference_camera_pose instead.")
  (reference_camera_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectData>) ostream)
  "Serializes a message object of type '<ObjectData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_rgb) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_depth) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'constant))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_board_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_camera_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectData>) istream)
  "Deserializes a message object of type '<ObjectData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_rgb) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_depth) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'constant) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_board_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_camera_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectData>)))
  "Returns string type for a message object of type '<ObjectData>"
  "objectmapping/ObjectData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectData)))
  "Returns string type for a message object of type 'ObjectData"
  "objectmapping/ObjectData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectData>)))
  "Returns md5sum for a message object of type '<ObjectData>"
  "ca0c328fc80312b47a3bd0528ef96ca7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectData)))
  "Returns md5sum for a message object of type 'ObjectData"
  "ca0c328fc80312b47a3bd0528ef96ca7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectData>)))
  "Returns full string definition for message of type '<ObjectData>"
  (cl:format cl:nil "Header header~%sensor_msgs/Image image_rgb~%sensor_msgs/Image image_depth~%float32 constant~%geometry_msgs/PoseStamped reference_board_pose~%geometry_msgs/PoseStamped reference_camera_pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectData)))
  "Returns full string definition for message of type 'ObjectData"
  (cl:format cl:nil "Header header~%sensor_msgs/Image image_rgb~%sensor_msgs/Image image_depth~%float32 constant~%geometry_msgs/PoseStamped reference_board_pose~%geometry_msgs/PoseStamped reference_camera_pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_rgb))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_depth))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_board_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_camera_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectData>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectData
    (cl:cons ':header (header msg))
    (cl:cons ':image_rgb (image_rgb msg))
    (cl:cons ':image_depth (image_depth msg))
    (cl:cons ':constant (constant msg))
    (cl:cons ':reference_board_pose (reference_board_pose msg))
    (cl:cons ':reference_camera_pose (reference_camera_pose msg))
))
