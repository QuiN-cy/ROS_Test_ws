# CMake generated Testfile for 
# Source directory: /home/student/test_ws/src/ros_packages/flexbe_app
# Build directory: /home/student/test_ws/build/flexbe_app
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_flexbe_app_rostest_launch_test_report.test "/home/student/test_ws/build/flexbe_app/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/student/test_ws/build/flexbe_app/test_results/flexbe_app/rostest-launch_test_report.xml" "--return-code" "/opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/student/test_ws/src/ros_packages/flexbe_app --package=flexbe_app --results-filename launch_test_report.xml --results-base-dir \"/home/student/test_ws/build/flexbe_app/test_results\" /home/student/test_ws/src/ros_packages/flexbe_app/launch/test_report.test ")
subdirs("gtest")
