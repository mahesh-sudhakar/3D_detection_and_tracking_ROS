// Auto-generated. Do not edit!

// (in-package objectmapping.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ObjectData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.image_rgb = null;
      this.image_depth = null;
      this.constant = null;
      this.reference_board_pose = null;
      this.reference_camera_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('image_rgb')) {
        this.image_rgb = initObj.image_rgb
      }
      else {
        this.image_rgb = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('image_depth')) {
        this.image_depth = initObj.image_depth
      }
      else {
        this.image_depth = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('constant')) {
        this.constant = initObj.constant
      }
      else {
        this.constant = 0.0;
      }
      if (initObj.hasOwnProperty('reference_board_pose')) {
        this.reference_board_pose = initObj.reference_board_pose
      }
      else {
        this.reference_board_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('reference_camera_pose')) {
        this.reference_camera_pose = initObj.reference_camera_pose
      }
      else {
        this.reference_camera_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [image_rgb]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image_rgb, buffer, bufferOffset);
    // Serialize message field [image_depth]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image_depth, buffer, bufferOffset);
    // Serialize message field [constant]
    bufferOffset = _serializer.float32(obj.constant, buffer, bufferOffset);
    // Serialize message field [reference_board_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.reference_board_pose, buffer, bufferOffset);
    // Serialize message field [reference_camera_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.reference_camera_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectData
    let len;
    let data = new ObjectData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_rgb]
    data.image_rgb = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_depth]
    data.image_depth = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [constant]
    data.constant = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reference_board_pose]
    data.reference_board_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [reference_camera_pose]
    data.reference_camera_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.Image.getMessageSize(object.image_rgb);
    length += sensor_msgs.msg.Image.getMessageSize(object.image_depth);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.reference_board_pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.reference_camera_pose);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'objectmapping/ObjectData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca0c328fc80312b47a3bd0528ef96ca7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.image_rgb !== undefined) {
      resolved.image_rgb = sensor_msgs.msg.Image.Resolve(msg.image_rgb)
    }
    else {
      resolved.image_rgb = new sensor_msgs.msg.Image()
    }

    if (msg.image_depth !== undefined) {
      resolved.image_depth = sensor_msgs.msg.Image.Resolve(msg.image_depth)
    }
    else {
      resolved.image_depth = new sensor_msgs.msg.Image()
    }

    if (msg.constant !== undefined) {
      resolved.constant = msg.constant;
    }
    else {
      resolved.constant = 0.0
    }

    if (msg.reference_board_pose !== undefined) {
      resolved.reference_board_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.reference_board_pose)
    }
    else {
      resolved.reference_board_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.reference_camera_pose !== undefined) {
      resolved.reference_camera_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.reference_camera_pose)
    }
    else {
      resolved.reference_camera_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = ObjectData;
