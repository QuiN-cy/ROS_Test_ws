; Auto-generated. Do not edit!


(cl:in-package binpicking_msgs-srv)


;//! \htmlinclude CapturePointcloud-request.msg.html

(cl:defclass <CapturePointcloud-request> (roslisp-msg-protocol:ros-message)
  ((dummy
    :reader dummy
    :initarg :dummy
    :type cl:integer
    :initform 0))
)

(cl:defclass CapturePointcloud-request (<CapturePointcloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CapturePointcloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CapturePointcloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name binpicking_msgs-srv:<CapturePointcloud-request> is deprecated: use binpicking_msgs-srv:CapturePointcloud-request instead.")))

(cl:ensure-generic-function 'dummy-val :lambda-list '(m))
(cl:defmethod dummy-val ((m <CapturePointcloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader binpicking_msgs-srv:dummy-val is deprecated.  Use binpicking_msgs-srv:dummy instead.")
  (dummy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CapturePointcloud-request>) ostream)
  "Serializes a message object of type '<CapturePointcloud-request>"
  (cl:let* ((signed (cl:slot-value msg 'dummy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CapturePointcloud-request>) istream)
  "Deserializes a message object of type '<CapturePointcloud-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dummy) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CapturePointcloud-request>)))
  "Returns string type for a service object of type '<CapturePointcloud-request>"
  "binpicking_msgs/CapturePointcloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CapturePointcloud-request)))
  "Returns string type for a service object of type 'CapturePointcloud-request"
  "binpicking_msgs/CapturePointcloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CapturePointcloud-request>)))
  "Returns md5sum for a message object of type '<CapturePointcloud-request>"
  "315ec3f0ae151d189c2cc77d1ed9084f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CapturePointcloud-request)))
  "Returns md5sum for a message object of type 'CapturePointcloud-request"
  "315ec3f0ae151d189c2cc77d1ed9084f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CapturePointcloud-request>)))
  "Returns full string definition for message of type '<CapturePointcloud-request>"
  (cl:format cl:nil "int32 dummy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CapturePointcloud-request)))
  "Returns full string definition for message of type 'CapturePointcloud-request"
  (cl:format cl:nil "int32 dummy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CapturePointcloud-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CapturePointcloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CapturePointcloud-request
    (cl:cons ':dummy (dummy msg))
))
;//! \htmlinclude CapturePointcloud-response.msg.html

(cl:defclass <CapturePointcloud-response> (roslisp-msg-protocol:ros-message)
  ((pointcloud
    :reader pointcloud
    :initarg :pointcloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CapturePointcloud-response (<CapturePointcloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CapturePointcloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CapturePointcloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name binpicking_msgs-srv:<CapturePointcloud-response> is deprecated: use binpicking_msgs-srv:CapturePointcloud-response instead.")))

(cl:ensure-generic-function 'pointcloud-val :lambda-list '(m))
(cl:defmethod pointcloud-val ((m <CapturePointcloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader binpicking_msgs-srv:pointcloud-val is deprecated.  Use binpicking_msgs-srv:pointcloud instead.")
  (pointcloud m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CapturePointcloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader binpicking_msgs-srv:success-val is deprecated.  Use binpicking_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CapturePointcloud-response>) ostream)
  "Serializes a message object of type '<CapturePointcloud-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointcloud) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CapturePointcloud-response>) istream)
  "Deserializes a message object of type '<CapturePointcloud-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointcloud) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CapturePointcloud-response>)))
  "Returns string type for a service object of type '<CapturePointcloud-response>"
  "binpicking_msgs/CapturePointcloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CapturePointcloud-response)))
  "Returns string type for a service object of type 'CapturePointcloud-response"
  "binpicking_msgs/CapturePointcloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CapturePointcloud-response>)))
  "Returns md5sum for a message object of type '<CapturePointcloud-response>"
  "315ec3f0ae151d189c2cc77d1ed9084f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CapturePointcloud-response)))
  "Returns md5sum for a message object of type 'CapturePointcloud-response"
  "315ec3f0ae151d189c2cc77d1ed9084f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CapturePointcloud-response>)))
  "Returns full string definition for message of type '<CapturePointcloud-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pointcloud~%~%bool success~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CapturePointcloud-response)))
  "Returns full string definition for message of type 'CapturePointcloud-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pointcloud~%~%bool success~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CapturePointcloud-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointcloud))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CapturePointcloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CapturePointcloud-response
    (cl:cons ':pointcloud (pointcloud msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CapturePointcloud)))
  'CapturePointcloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CapturePointcloud)))
  'CapturePointcloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CapturePointcloud)))
  "Returns string type for a service object of type '<CapturePointcloud>"
  "binpicking_msgs/CapturePointcloud")