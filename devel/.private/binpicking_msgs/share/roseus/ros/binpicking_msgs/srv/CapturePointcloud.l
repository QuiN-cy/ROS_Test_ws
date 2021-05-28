;; Auto-generated. Do not edit!


(when (boundp 'binpicking_msgs::CapturePointcloud)
  (if (not (find-package "BINPICKING_MSGS"))
    (make-package "BINPICKING_MSGS"))
  (shadow 'CapturePointcloud (find-package "BINPICKING_MSGS")))
(unless (find-package "BINPICKING_MSGS::CAPTUREPOINTCLOUD")
  (make-package "BINPICKING_MSGS::CAPTUREPOINTCLOUD"))
(unless (find-package "BINPICKING_MSGS::CAPTUREPOINTCLOUDREQUEST")
  (make-package "BINPICKING_MSGS::CAPTUREPOINTCLOUDREQUEST"))
(unless (find-package "BINPICKING_MSGS::CAPTUREPOINTCLOUDRESPONSE")
  (make-package "BINPICKING_MSGS::CAPTUREPOINTCLOUDRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass binpicking_msgs::CapturePointcloudRequest
  :super ros::object
  :slots (_dummy ))

(defmethod binpicking_msgs::CapturePointcloudRequest
  (:init
   (&key
    ((:dummy __dummy) 0)
    )
   (send-super :init)
   (setq _dummy (round __dummy))
   self)
  (:dummy
   (&optional __dummy)
   (if __dummy (setq _dummy __dummy)) _dummy)
  (:serialization-length
   ()
   (+
    ;; int32 _dummy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _dummy
       (write-long _dummy s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _dummy
     (setq _dummy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass binpicking_msgs::CapturePointcloudResponse
  :super ros::object
  :slots (_pointcloud _success ))

(defmethod binpicking_msgs::CapturePointcloudResponse
  (:init
   (&key
    ((:pointcloud __pointcloud) (instance sensor_msgs::PointCloud2 :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _pointcloud __pointcloud)
   (setq _success __success)
   self)
  (:pointcloud
   (&rest __pointcloud)
   (if (keywordp (car __pointcloud))
       (send* _pointcloud __pointcloud)
     (progn
       (if __pointcloud (setq _pointcloud (car __pointcloud)))
       _pointcloud)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _pointcloud
    (send _pointcloud :serialization-length)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _pointcloud
       (send _pointcloud :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _pointcloud
     (send _pointcloud :deserialize buf ptr-) (incf ptr- (send _pointcloud :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass binpicking_msgs::CapturePointcloud
  :super ros::object
  :slots ())

(setf (get binpicking_msgs::CapturePointcloud :md5sum-) "315ec3f0ae151d189c2cc77d1ed9084f")
(setf (get binpicking_msgs::CapturePointcloud :datatype-) "binpicking_msgs/CapturePointcloud")
(setf (get binpicking_msgs::CapturePointcloud :request) binpicking_msgs::CapturePointcloudRequest)
(setf (get binpicking_msgs::CapturePointcloud :response) binpicking_msgs::CapturePointcloudResponse)

(defmethod binpicking_msgs::CapturePointcloudRequest
  (:response () (instance binpicking_msgs::CapturePointcloudResponse :init)))

(setf (get binpicking_msgs::CapturePointcloudRequest :md5sum-) "315ec3f0ae151d189c2cc77d1ed9084f")
(setf (get binpicking_msgs::CapturePointcloudRequest :datatype-) "binpicking_msgs/CapturePointcloudRequest")
(setf (get binpicking_msgs::CapturePointcloudRequest :definition-)
      "int32 dummy
---
sensor_msgs/PointCloud2 pointcloud

bool success


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
")

(setf (get binpicking_msgs::CapturePointcloudResponse :md5sum-) "315ec3f0ae151d189c2cc77d1ed9084f")
(setf (get binpicking_msgs::CapturePointcloudResponse :datatype-) "binpicking_msgs/CapturePointcloudResponse")
(setf (get binpicking_msgs::CapturePointcloudResponse :definition-)
      "int32 dummy
---
sensor_msgs/PointCloud2 pointcloud

bool success


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
")



(provide :binpicking_msgs/CapturePointcloud "315ec3f0ae151d189c2cc77d1ed9084f")


