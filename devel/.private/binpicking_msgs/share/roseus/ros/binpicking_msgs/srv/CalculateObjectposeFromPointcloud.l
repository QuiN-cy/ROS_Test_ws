;; Auto-generated. Do not edit!


(when (boundp 'binpicking_msgs::CalculateObjectposeFromPointcloud)
  (if (not (find-package "BINPICKING_MSGS"))
    (make-package "BINPICKING_MSGS"))
  (shadow 'CalculateObjectposeFromPointcloud (find-package "BINPICKING_MSGS")))
(unless (find-package "BINPICKING_MSGS::CALCULATEOBJECTPOSEFROMPOINTCLOUD")
  (make-package "BINPICKING_MSGS::CALCULATEOBJECTPOSEFROMPOINTCLOUD"))
(unless (find-package "BINPICKING_MSGS::CALCULATEOBJECTPOSEFROMPOINTCLOUDREQUEST")
  (make-package "BINPICKING_MSGS::CALCULATEOBJECTPOSEFROMPOINTCLOUDREQUEST"))
(unless (find-package "BINPICKING_MSGS::CALCULATEOBJECTPOSEFROMPOINTCLOUDRESPONSE")
  (make-package "BINPICKING_MSGS::CALCULATEOBJECTPOSEFROMPOINTCLOUDRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass binpicking_msgs::CalculateObjectposeFromPointcloudRequest
  :super ros::object
  :slots (_pointcloud ))

(defmethod binpicking_msgs::CalculateObjectposeFromPointcloudRequest
  (:init
   (&key
    ((:pointcloud __pointcloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _pointcloud __pointcloud)
   self)
  (:pointcloud
   (&rest __pointcloud)
   (if (keywordp (car __pointcloud))
       (send* _pointcloud __pointcloud)
     (progn
       (if __pointcloud (setq _pointcloud (car __pointcloud)))
       _pointcloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _pointcloud
    (send _pointcloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _pointcloud
       (send _pointcloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _pointcloud
     (send _pointcloud :deserialize buf ptr-) (incf ptr- (send _pointcloud :serialization-length))
   ;;
   self)
  )

(defclass binpicking_msgs::CalculateObjectposeFromPointcloudResponse
  :super ros::object
  :slots (_object_pose _success ))

(defmethod binpicking_msgs::CalculateObjectposeFromPointcloudResponse
  (:init
   (&key
    ((:object_pose __object_pose) (instance geometry_msgs::PoseStamped :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _object_pose __object_pose)
   (setq _success __success)
   self)
  (:object_pose
   (&rest __object_pose)
   (if (keywordp (car __object_pose))
       (send* _object_pose __object_pose)
     (progn
       (if __object_pose (setq _object_pose (car __object_pose)))
       _object_pose)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _object_pose
    (send _object_pose :serialization-length)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _object_pose
       (send _object_pose :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _object_pose
     (send _object_pose :deserialize buf ptr-) (incf ptr- (send _object_pose :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass binpicking_msgs::CalculateObjectposeFromPointcloud
  :super ros::object
  :slots ())

(setf (get binpicking_msgs::CalculateObjectposeFromPointcloud :md5sum-) "243cf703a4ab0240271683f44bc2d4c6")
(setf (get binpicking_msgs::CalculateObjectposeFromPointcloud :datatype-) "binpicking_msgs/CalculateObjectposeFromPointcloud")
(setf (get binpicking_msgs::CalculateObjectposeFromPointcloud :request) binpicking_msgs::CalculateObjectposeFromPointcloudRequest)
(setf (get binpicking_msgs::CalculateObjectposeFromPointcloud :response) binpicking_msgs::CalculateObjectposeFromPointcloudResponse)

(defmethod binpicking_msgs::CalculateObjectposeFromPointcloudRequest
  (:response () (instance binpicking_msgs::CalculateObjectposeFromPointcloudResponse :init)))

(setf (get binpicking_msgs::CalculateObjectposeFromPointcloudRequest :md5sum-) "243cf703a4ab0240271683f44bc2d4c6")
(setf (get binpicking_msgs::CalculateObjectposeFromPointcloudRequest :datatype-) "binpicking_msgs/CalculateObjectposeFromPointcloudRequest")
(setf (get binpicking_msgs::CalculateObjectposeFromPointcloudRequest :definition-)
      "sensor_msgs/PointCloud2 pointcloud

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
---
geometry_msgs/PoseStamped     object_pose
bool success


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

(setf (get binpicking_msgs::CalculateObjectposeFromPointcloudResponse :md5sum-) "243cf703a4ab0240271683f44bc2d4c6")
(setf (get binpicking_msgs::CalculateObjectposeFromPointcloudResponse :datatype-) "binpicking_msgs/CalculateObjectposeFromPointcloudResponse")
(setf (get binpicking_msgs::CalculateObjectposeFromPointcloudResponse :definition-)
      "sensor_msgs/PointCloud2 pointcloud

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
---
geometry_msgs/PoseStamped     object_pose
bool success


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :binpicking_msgs/CalculateObjectposeFromPointcloud "243cf703a4ab0240271683f44bc2d4c6")


