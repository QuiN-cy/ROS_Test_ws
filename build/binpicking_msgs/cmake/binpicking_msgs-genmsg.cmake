# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "binpicking_msgs: 0 messages, 2 services")

set(MSG_I_FLAGS "-Ibinpicking_msgs:/home/student/test_ws/src/Binpick/binpicking_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/melodic/share/moveit_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/melodic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/melodic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(binpicking_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv" NAME_WE)
add_custom_target(_binpicking_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "binpicking_msgs" "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv" NAME_WE)
add_custom_target(_binpicking_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "binpicking_msgs" "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(binpicking_msgs
  "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/binpicking_msgs
)
_generate_srv_cpp(binpicking_msgs
  "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/binpicking_msgs
)

### Generating Module File
_generate_module_cpp(binpicking_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/binpicking_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(binpicking_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(binpicking_msgs_generate_messages binpicking_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv" NAME_WE)
add_dependencies(binpicking_msgs_generate_messages_cpp _binpicking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv" NAME_WE)
add_dependencies(binpicking_msgs_generate_messages_cpp _binpicking_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(binpicking_msgs_gencpp)
add_dependencies(binpicking_msgs_gencpp binpicking_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS binpicking_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(binpicking_msgs
  "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/binpicking_msgs
)
_generate_srv_eus(binpicking_msgs
  "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/binpicking_msgs
)

### Generating Module File
_generate_module_eus(binpicking_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/binpicking_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(binpicking_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(binpicking_msgs_generate_messages binpicking_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv" NAME_WE)
add_dependencies(binpicking_msgs_generate_messages_eus _binpicking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv" NAME_WE)
add_dependencies(binpicking_msgs_generate_messages_eus _binpicking_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(binpicking_msgs_geneus)
add_dependencies(binpicking_msgs_geneus binpicking_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS binpicking_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(binpicking_msgs
  "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/binpicking_msgs
)
_generate_srv_lisp(binpicking_msgs
  "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/binpicking_msgs
)

### Generating Module File
_generate_module_lisp(binpicking_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/binpicking_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(binpicking_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(binpicking_msgs_generate_messages binpicking_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv" NAME_WE)
add_dependencies(binpicking_msgs_generate_messages_lisp _binpicking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv" NAME_WE)
add_dependencies(binpicking_msgs_generate_messages_lisp _binpicking_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(binpicking_msgs_genlisp)
add_dependencies(binpicking_msgs_genlisp binpicking_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS binpicking_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(binpicking_msgs
  "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/binpicking_msgs
)
_generate_srv_nodejs(binpicking_msgs
  "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/binpicking_msgs
)

### Generating Module File
_generate_module_nodejs(binpicking_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/binpicking_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(binpicking_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(binpicking_msgs_generate_messages binpicking_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv" NAME_WE)
add_dependencies(binpicking_msgs_generate_messages_nodejs _binpicking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv" NAME_WE)
add_dependencies(binpicking_msgs_generate_messages_nodejs _binpicking_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(binpicking_msgs_gennodejs)
add_dependencies(binpicking_msgs_gennodejs binpicking_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS binpicking_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(binpicking_msgs
  "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/binpicking_msgs
)
_generate_srv_py(binpicking_msgs
  "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/binpicking_msgs
)

### Generating Module File
_generate_module_py(binpicking_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/binpicking_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(binpicking_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(binpicking_msgs_generate_messages binpicking_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CapturePointcloud.srv" NAME_WE)
add_dependencies(binpicking_msgs_generate_messages_py _binpicking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/test_ws/src/Binpick/binpicking_msgs/srv/CalculateObjectposeFromPointcloud.srv" NAME_WE)
add_dependencies(binpicking_msgs_generate_messages_py _binpicking_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(binpicking_msgs_genpy)
add_dependencies(binpicking_msgs_genpy binpicking_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS binpicking_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/binpicking_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/binpicking_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(binpicking_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(binpicking_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(binpicking_msgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(binpicking_msgs_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(binpicking_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/binpicking_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/binpicking_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(binpicking_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(binpicking_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(binpicking_msgs_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(binpicking_msgs_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(binpicking_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/binpicking_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/binpicking_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(binpicking_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(binpicking_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(binpicking_msgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(binpicking_msgs_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(binpicking_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/binpicking_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/binpicking_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(binpicking_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(binpicking_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(binpicking_msgs_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(binpicking_msgs_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(binpicking_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/binpicking_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/binpicking_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/binpicking_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(binpicking_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(binpicking_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(binpicking_msgs_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(binpicking_msgs_generate_messages_py moveit_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(binpicking_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
