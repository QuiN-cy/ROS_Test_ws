execute_process(COMMAND "/home/student/test_ws/build/flexbe_navigation_states/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/student/test_ws/build/flexbe_navigation_states/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
