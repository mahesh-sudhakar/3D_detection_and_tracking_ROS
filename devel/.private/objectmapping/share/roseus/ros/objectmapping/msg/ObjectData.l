;; Auto-generated. Do not edit!


(when (boundp 'objectmapping::ObjectData)
  (if (not (find-package "OBJECTMAPPING"))
    (make-package "OBJECTMAPPING"))
  (shadow 'ObjectData (find-package "OBJECTMAPPING")))
(unless (find-package "OBJECTMAPPING::OBJECTDATA")
  (make-package "OBJECTMAPPING::OBJECTDATA"))

(in-package "ROS")
;;//! \htmlinclude ObjectData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass objectmapping::ObjectData
  :super ros::object
  :slots (_header _image_rgb _image_depth _constant _reference_board_pose _reference_camera_pose ))

(defmethod objectmapping::ObjectData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_rgb __image_rgb) (instance sensor_msgs::Image :init))
    ((:image_depth __image_depth) (instance sensor_msgs::Image :init))
    ((:constant __constant) 0.0)
    ((:reference_board_pose __reference_board_pose) (instance geometry_msgs::PoseStamped :init))
    ((:reference_camera_pose __reference_camera_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_rgb __image_rgb)
   (setq _image_depth __image_depth)
   (setq _constant (float __constant))
   (setq _reference_board_pose __reference_board_pose)
   (setq _reference_camera_pose __reference_camera_pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_rgb
   (&rest __image_rgb)
   (if (keywordp (car __image_rgb))
       (send* _image_rgb __image_rgb)
     (progn
       (if __image_rgb (setq _image_rgb (car __image_rgb)))
       _image_rgb)))
  (:image_depth
   (&rest __image_depth)
   (if (keywordp (car __image_depth))
       (send* _image_depth __image_depth)
     (progn
       (if __image_depth (setq _image_depth (car __image_depth)))
       _image_depth)))
  (:constant
   (&optional __constant)
   (if __constant (setq _constant __constant)) _constant)
  (:reference_board_pose
   (&rest __reference_board_pose)
   (if (keywordp (car __reference_board_pose))
       (send* _reference_board_pose __reference_board_pose)
     (progn
       (if __reference_board_pose (setq _reference_board_pose (car __reference_board_pose)))
       _reference_board_pose)))
  (:reference_camera_pose
   (&rest __reference_camera_pose)
   (if (keywordp (car __reference_camera_pose))
       (send* _reference_camera_pose __reference_camera_pose)
     (progn
       (if __reference_camera_pose (setq _reference_camera_pose (car __reference_camera_pose)))
       _reference_camera_pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/Image _image_rgb
    (send _image_rgb :serialization-length)
    ;; sensor_msgs/Image _image_depth
    (send _image_depth :serialization-length)
    ;; float32 _constant
    4
    ;; geometry_msgs/PoseStamped _reference_board_pose
    (send _reference_board_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _reference_camera_pose
    (send _reference_camera_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/Image _image_rgb
       (send _image_rgb :serialize s)
     ;; sensor_msgs/Image _image_depth
       (send _image_depth :serialize s)
     ;; float32 _constant
       (sys::poke _constant (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PoseStamped _reference_board_pose
       (send _reference_board_pose :serialize s)
     ;; geometry_msgs/PoseStamped _reference_camera_pose
       (send _reference_camera_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/Image _image_rgb
     (send _image_rgb :deserialize buf ptr-) (incf ptr- (send _image_rgb :serialization-length))
   ;; sensor_msgs/Image _image_depth
     (send _image_depth :deserialize buf ptr-) (incf ptr- (send _image_depth :serialization-length))
   ;; float32 _constant
     (setq _constant (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _reference_board_pose
     (send _reference_board_pose :deserialize buf ptr-) (incf ptr- (send _reference_board_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _reference_camera_pose
     (send _reference_camera_pose :deserialize buf ptr-) (incf ptr- (send _reference_camera_pose :serialization-length))
   ;;
   self)
  )

(setf (get objectmapping::ObjectData :md5sum-) "ca0c328fc80312b47a3bd0528ef96ca7")
(setf (get objectmapping::ObjectData :datatype-) "objectmapping/ObjectData")
(setf (get objectmapping::ObjectData :definition-)
      "Header header
sensor_msgs/Image image_rgb
sensor_msgs/Image image_depth
float32 constant
geometry_msgs/PoseStamped reference_board_pose
geometry_msgs/PoseStamped reference_camera_pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :objectmapping/ObjectData "ca0c328fc80312b47a3bd0528ef96ca7")


