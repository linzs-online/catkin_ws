# CMake generated Testfile for 
# Source directory: /home/physics/catkin_ws/src/navigation/costmap_2d
# Build directory: /home/physics/catkin_ws/build_isolated/costmap_2d
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_costmap_2d_rostest_test_footprint_tests.launch "/home/physics/catkin_ws/build_isolated/costmap_2d/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/physics/catkin_ws/build_isolated/costmap_2d/test_results/costmap_2d/rostest-test_footprint_tests.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/physics/catkin_ws/src/navigation/costmap_2d --package=costmap_2d --results-filename test_footprint_tests.xml --results-base-dir \"/home/physics/catkin_ws/build_isolated/costmap_2d/test_results\" /home/physics/catkin_ws/src/navigation/costmap_2d/test/footprint_tests.launch ")
add_test(_ctest_costmap_2d_rostest_test_inflation_tests.launch "/home/physics/catkin_ws/build_isolated/costmap_2d/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/physics/catkin_ws/build_isolated/costmap_2d/test_results/costmap_2d/rostest-test_inflation_tests.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/physics/catkin_ws/src/navigation/costmap_2d --package=costmap_2d --results-filename test_inflation_tests.xml --results-base-dir \"/home/physics/catkin_ws/build_isolated/costmap_2d/test_results\" /home/physics/catkin_ws/src/navigation/costmap_2d/test/inflation_tests.launch ")
add_test(_ctest_costmap_2d_rostest_test_obstacle_tests.launch "/home/physics/catkin_ws/build_isolated/costmap_2d/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/physics/catkin_ws/build_isolated/costmap_2d/test_results/costmap_2d/rostest-test_obstacle_tests.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/physics/catkin_ws/src/navigation/costmap_2d --package=costmap_2d --results-filename test_obstacle_tests.xml --results-base-dir \"/home/physics/catkin_ws/build_isolated/costmap_2d/test_results\" /home/physics/catkin_ws/src/navigation/costmap_2d/test/obstacle_tests.launch ")
add_test(_ctest_costmap_2d_rostest_test_simple_driving_test.xml "/home/physics/catkin_ws/build_isolated/costmap_2d/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/physics/catkin_ws/build_isolated/costmap_2d/test_results/costmap_2d/rostest-test_simple_driving_test.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/physics/catkin_ws/src/navigation/costmap_2d --package=costmap_2d --results-filename test_simple_driving_test.xml --results-base-dir \"/home/physics/catkin_ws/build_isolated/costmap_2d/test_results\" /home/physics/catkin_ws/src/navigation/costmap_2d/test/simple_driving_test.xml ")
add_test(_ctest_costmap_2d_rostest_test_static_tests.launch "/home/physics/catkin_ws/build_isolated/costmap_2d/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/physics/catkin_ws/build_isolated/costmap_2d/test_results/costmap_2d/rostest-test_static_tests.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/physics/catkin_ws/src/navigation/costmap_2d --package=costmap_2d --results-filename test_static_tests.xml --results-base-dir \"/home/physics/catkin_ws/build_isolated/costmap_2d/test_results\" /home/physics/catkin_ws/src/navigation/costmap_2d/test/static_tests.launch ")
add_test(_ctest_costmap_2d_gtest_array_parser_test "/home/physics/catkin_ws/build_isolated/costmap_2d/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/physics/catkin_ws/build_isolated/costmap_2d/test_results/costmap_2d/gtest-array_parser_test.xml" "--return-code" "/home/physics/catkin_ws/devel_isolated/costmap_2d/lib/costmap_2d/array_parser_test --gtest_output=xml:/home/physics/catkin_ws/build_isolated/costmap_2d/test_results/costmap_2d/gtest-array_parser_test.xml")
add_test(_ctest_costmap_2d_gtest_coordinates_test "/home/physics/catkin_ws/build_isolated/costmap_2d/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/physics/catkin_ws/build_isolated/costmap_2d/test_results/costmap_2d/gtest-coordinates_test.xml" "--return-code" "/home/physics/catkin_ws/devel_isolated/costmap_2d/lib/costmap_2d/coordinates_test --gtest_output=xml:/home/physics/catkin_ws/build_isolated/costmap_2d/test_results/costmap_2d/gtest-coordinates_test.xml")
subdirs(gtest)