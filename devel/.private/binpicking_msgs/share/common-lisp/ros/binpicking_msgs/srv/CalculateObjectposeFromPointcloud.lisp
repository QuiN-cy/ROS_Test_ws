; Auto-generated. Do not edit!


(cl:in-package binpicking_msgs-srv)


;//! \htmlinclude CalculateObjectposeFromPointcloud-request.msg.html

(cl:defclass <CalculateObjectposeFromPointcloud-request> (roslisp-msg-protocol:ros-message)
  ((pointcloud
    :reader pointcloud
    :initarg :pointcloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass CalculateObjectposeFromPointcloud-request (<CalculateObjectposeFromPointcloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalculateObjectposeFromPointcloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalculateObjectposeFromPointcloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name binpicking_msgs-srv:<CalculateObjectposeFromPointcloud-request> is deprecated: use binpicking_msgs-srv:CalculateObjectposeFromPointcloud-request instead.")))

(cl:ensure-generic-function 'pointcloud-val :lambda-list '(m))
(cl:defmethod pointcloud-val ((m <CalculateObjectposeFromPointcloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader binpicking_msgs-srv:pointcloud-val is deprecated.  Use binpicking_msgs-srv:pointcloud instead.")
  (pointcloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalculateObjectposeFromPointcloud-request>) ostream)
  "Serializes a message object of type '<CalculateObjectposeFromPointcloud-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointcloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalculateObjectposeFromPointcloud-request>) istream)
  "Deserializes a message object of type '<CalculateObjectposeFromPointcloud-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointcloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalculateObjectposeFromPointcloud-request>)))
  "Returns string type for a service object of type '<CalculateObjectposeFromPointcloud-request>"
  "binpicking_msgs/CalculateObjectposeFromPointcloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculateObjectposeFromPointcloud-request)))
  "Returns string type for a service object of type 'CalculateObjectposeFromPointcloud-request"
  "binpicking_msgs/CalculateObjectposeFromPointcloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalculateObjectposeFromPointcloud-request>)))
  "Returns md5sum for a message object of type '<CalculateObjectposeFromPointcloud-request>"
  "243cf703a4ab0240271683f44bc2d4c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalculateObjectposeFromPointcloud-request)))
  "Returns md5sum for a message object of type 'CalculateObjectposeFromPointcloud-request"
  "243cf703a4ab0240271683f44bc2d4c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalculateObjectposeFromPointcloud-request>)))
  "Returns full string definition for message of type '<CalculateObjectposeFromPointcloud-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pointcloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalculateObjectposeFromPointcloud-request)))
  "Returns full string definition for message of type 'CalculateObjectposeFromPointcloud-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pointcloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalculateObjectposeFromPointcloud-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointcloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalculateObjectposeFromPointcloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalculateObjectposeFromPointcloud-request
    (cl:cons ':pointcloud (pointcloud msg))
))
;//! \htmlinclude CalculateObjectposeFromPointcloud-response.msg.html

(cl:defclass <CalculateObjectposeFromPointcloud-response> (roslisp-msg-protocol:ros-message)
  ((object_pose
    :reader object_pose
    :initarg :object_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CalculateObjectposeFromPointcloud-response (<CalculateObjectposeFromPointcloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalculateObjectposeFromPointcloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalculateObjectposeFromPointcloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name binpicking_msgs-srv:<CalculateObjectposeFromPointcloud-response> is deprecated: use binpicking_msgs-srv:CalculateObjectposeFromPointcloud-response instead.")))

(cl:ensure-generic-function 'object_pose-val :lambda-list '(m))
(cl:defmethod object_pose-val ((m <CalculateObjectposeFromPointcloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader binpicking_msgs-srv:object_pose-val is deprecated.  Use binpicking_msgs-srv:object_pose instead.")
  (object_pose m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CalculateObjectposeFromPointcloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader binpicking_msgs-srv:success-val is deprecated.  Use binpicking_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalculateObjectposeFromPointcloud-response>) ostream)
  "Serializes a message object of type '<CalculateObjectposeFromPointcloud-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalculateObjectposeFromPointcloud-response>) istream)
  "Deserializes a message object of type '<CalculateObjectposeFromPointcloud-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_pose) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalculateObjectposeFromPointcloud-response>)))
  "Returns string type for a service object of type '<CalculateObjectposeFromPointcloud-response>"
  "binpicking_msgs/CalculateObjectposeFromPointcloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculateObjectposeFromPointcloud-response)))
  "Returns string type for a service object of type 'CalculateObjectposeFromPointcloud-response"
  "binpicking_msgs/CalculateObjectposeFromPointcloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalculateObjectposeFromPointcloud-response>)))
  "Returns md5sum for a message object of type '<CalculateObjectposeFromPointcloud-response>"
  "243cf703a4ab0240271683f44bc2d4c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalculateObjectposeFromPointcloud-response)))
  "Returns md5sum for a message object of type 'CalculateObjectposeFromPointcloud-response"
  "243cf703a4ab0240271683f44bc2d4c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalculateObjectposeFromPointcloud-response>)))
  "Returns full string definition for message of type '<CalculateObjectposeFromPointcloud-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped     object_pose~%bool success~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalculateObjectposeFromPointcloud-response)))
  "Returns full string definition for message of type 'CalculateObjectposeFromPointcloud-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped     object_pose~%bool success~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalculateObjectposeFromPointcloud-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalculateObjectposeFromPointcloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalculateObjectposeFromPointcloud-response
    (cl:cons ':object_pose (object_pose msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalculateObjectposeFromPointcloud)))
  'CalculateObjectposeFromPointcloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalculateObjectposeFromPointcloud)))
  'CalculateObjectposeFromPointcloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculateObjectposeFromPointcloud)))
  "Returns string type for a service object of type '<CalculateObjectposeFromPointcloud>"
  "binpicking_msgs/CalculateObjectposeFromPointcloud")