cmake_minimum_required(VERSION 2.8.3)
project(motoman_sia5d_moveit_config)

find_package(catkin REQUIRED
moveit_ros_planning_interface
geometry_msgs
)

# find_package(Eigen REQUIRED)

catkin_package()

add_executable(triangle_move src/triangle_move.cpp)
add_dependencies(triangle_move ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(triangle_move ${catkin_LIBRARIES})

install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
  PATTERN "setup_assistant.launch" EXCLUDE)
install(DIRECTORY config DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
