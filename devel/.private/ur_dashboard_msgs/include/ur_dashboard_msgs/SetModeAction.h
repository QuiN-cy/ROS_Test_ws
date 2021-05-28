// Generated by gencpp from file ur_dashboard_msgs/SetModeAction.msg
// DO NOT EDIT!


#ifndef UR_DASHBOARD_MSGS_MESSAGE_SETMODEACTION_H
#define UR_DASHBOARD_MSGS_MESSAGE_SETMODEACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ur_dashboard_msgs/SetModeActionGoal.h>
#include <ur_dashboard_msgs/SetModeActionResult.h>
#include <ur_dashboard_msgs/SetModeActionFeedback.h>

namespace ur_dashboard_msgs
{
template <class ContainerAllocator>
struct SetModeAction_
{
  typedef SetModeAction_<ContainerAllocator> Type;

  SetModeAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  SetModeAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::ur_dashboard_msgs::SetModeActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::ur_dashboard_msgs::SetModeActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::ur_dashboard_msgs::SetModeActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> const> ConstPtr;

}; // struct SetModeAction_

typedef ::ur_dashboard_msgs::SetModeAction_<std::allocator<void> > SetModeAction;

typedef boost::shared_ptr< ::ur_dashboard_msgs::SetModeAction > SetModeActionPtr;
typedef boost::shared_ptr< ::ur_dashboard_msgs::SetModeAction const> SetModeActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ur_dashboard_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'ur_dashboard_msgs': ['/home/student/test_ws/src/ros_packages/universal_robots/Universal_Robots_ROS_Driver/ur_dashboard_msgs/msg', '/home/student/test_ws/devel/.private/ur_dashboard_msgs/share/ur_dashboard_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "66d70cf3b994cda3370ff9c37762ba92";
  }

  static const char* value(const ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x66d70cf3b994cda3ULL;
  static const uint64_t static_value2 = 0x370ff9c37762ba92ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur_dashboard_msgs/SetModeAction";
  }

  static const char* value(const ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"SetModeActionGoal action_goal\n"
"SetModeActionResult action_result\n"
"SetModeActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: ur_dashboard_msgs/SetModeActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"SetModeGoal goal\n"
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
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: ur_dashboard_msgs/SetModeGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# This action is for setting the robot into a desired mode (e.g. RUNNING) and safety mode into a\n"
"# non-critical state (e.g. NORMAL or REDUCED), for example after a safety incident happened.\n"
"\n"
"# goal\n"
"int8 target_robot_mode\n"
"\n"
"# Stop program execution before restoring the target mode. Can be used together with 'play_program'.\n"
"bool stop_program\n"
"\n"
"# Play the currently loaded program after target mode is reached.#\n"
"# NOTE: Requesting mode RUNNING in combination with this will make the robot continue the motion it\n"
"# was doing before. This might probably lead into the same problem (protective stop, EM-Stop due to\n"
"# faulty motion, etc.) If you want to be safe, set the 'stop_program' flag below and manually play\n"
"# the program after robot state is returned to normal.\n"
"# This flag will only be used when requesting mode RUNNING\n"
"bool play_program\n"
"\n"
"\n"
"================================================================================\n"
"MSG: ur_dashboard_msgs/SetModeActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"SetModeResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: ur_dashboard_msgs/SetModeResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# result\n"
"bool success\n"
"string message\n"
"\n"
"================================================================================\n"
"MSG: ur_dashboard_msgs/SetModeActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"SetModeFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: ur_dashboard_msgs/SetModeFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# feedback\n"
"int8 current_robot_mode\n"
"int8 current_safety_mode\n"
"\n"
;
  }

  static const char* value(const ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetModeAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur_dashboard_msgs::SetModeAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::ur_dashboard_msgs::SetModeActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::ur_dashboard_msgs::SetModeActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::ur_dashboard_msgs::SetModeActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR_DASHBOARD_MSGS_MESSAGE_SETMODEACTION_H
