# CMake generated Testfile for 
# Source directory: /home/physics/catkin_ws/src/navigation/base_local_planner
# Build directory: /home/physics/catkin_ws/build_isolated/base_local_planner
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_base_local_planner_gtest_base_local_planner_utest "/home/physics/catkin_ws/build_isolated/base_local_planner/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/physics/catkin_ws/build_isolated/base_local_planner/test_results/base_local_planner/gtest-base_local_planner_utest.xml" "--return-code" "/home/physics/catkin_ws/devel_isolated/base_local_planner/lib/base_local_planner/base_local_planner_utest --gtest_output=xml:/home/physics/catkin_ws/build_isolated/base_local_planner/test_results/base_local_planner/gtest-base_local_planner_utest.xml")
add_test(_ctest_base_local_planner_gtest_line_iterator "/home/physics/catkin_ws/build_isolated/base_local_planner/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/physics/catkin_ws/build_isolated/base_local_planner/test_results/base_local_planner/gtest-line_iterator.xml" "--return-code" "/home/physics/catkin_ws/devel_isolated/base_local_planner/lib/base_local_planner/line_iterator --gtest_output=xml:/home/physics/catkin_ws/build_isolated/base_local_planner/test_results/base_local_planner/gtest-line_iterator.xml")
subdirs(gtest)