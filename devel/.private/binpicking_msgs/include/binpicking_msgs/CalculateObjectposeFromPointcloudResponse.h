// Generated by gencpp from file binpicking_msgs/CalculateObjectposeFromPointcloudResponse.msg
// DO NOT EDIT!


#ifndef BINPICKING_MSGS_MESSAGE_CALCULATEOBJECTPOSEFROMPOINTCLOUDRESPONSE_H
#define BINPICKING_MSGS_MESSAGE_CALCULATEOBJECTPOSEFROMPOINTCLOUDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace binpicking_msgs
{
template <class ContainerAllocator>
struct CalculateObjectposeFromPointcloudResponse_
{
  typedef CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> Type;

  CalculateObjectposeFromPointcloudResponse_()
    : object_pose()
    , success(false)  {
    }
  CalculateObjectposeFromPointcloudResponse_(const ContainerAllocator& _alloc)
    : object_pose(_alloc)
    , success(false)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _object_pose_type;
  _object_pose_type object_pose;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CalculateObjectposeFromPointcloudResponse_

typedef ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<std::allocator<void> > CalculateObjectposeFromPointcloudResponse;

typedef boost::shared_ptr< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse > CalculateObjectposeFromPointcloudResponsePtr;
typedef boost::shared_ptr< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse const> CalculateObjectposeFromPointcloudResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace binpicking_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'binpicking_msgs': ['/home/student/test_ws/src/Binpick/binpicking_msgs/msg'], 'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'moveit_msgs': ['/opt/ros/melodic/share/moveit_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/melodic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'shape_msgs': ['/opt/ros/melodic/share/shape_msgs/cmake/../msg'], 'octomap_msgs': ['/opt/ros/melodic/share/octomap_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "daaaaf52565055c4a6ca92fcad485f9e";
  }

  static const char* value(const ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdaaaaf52565055c4ULL;
  static const uint64_t static_value2 = 0xa6ca92fcad485f9eULL;
};

template<class ContainerAllocator>
struct DataType< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "binpicking_msgs/CalculateObjectposeFromPointcloudResponse";
  }

  static const char* value(const ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseStamped     object_pose\n"
"bool success\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object_pose);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CalculateObjectposeFromPointcloudResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::binpicking_msgs::CalculateObjectposeFromPointcloudResponse_<ContainerAllocator>& v)
  {
    s << indent << "object_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.object_pose);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BINPICKING_MSGS_MESSAGE_CALCULATEOBJECTPOSEFROMPOINTCLOUDRESPONSE_H
