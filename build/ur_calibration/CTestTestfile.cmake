# CMake generated Testfile for 
# Source directory: /home/student/test_ws/src/ros_packages/universal_robots/Universal_Robots_ROS_Driver/ur_calibration
# Build directory: /home/student/test_ws/build/ur_calibration
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_ur_calibration_gtest_calibration_test "/home/student/test_ws/build/ur_calibration/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/student/test_ws/build/ur_calibration/test_results/ur_calibration/gtest-calibration_test.xml" "--return-code" "/home/student/test_ws/devel/.private/ur_calibration/lib/ur_calibration/calibration_test --gtest_output=xml:/home/student/test_ws/build/ur_calibration/test_results/ur_calibration/gtest-calibration_test.xml")
subdirs("gtest")
