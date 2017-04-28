# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "motoman_msgs: 5 messages, 1 services")

set(MSG_I_FLAGS "-Imotoman_msgs:/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg;-Itrajectory_msgs:/opt/ros/indigo/share/trajectory_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iindustrial_msgs:/opt/ros/indigo/share/industrial_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(motoman_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg" NAME_WE)
add_custom_target(_motoman_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motoman_msgs" "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg" ""
)

get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/srv/CmdJointTrajectoryEx.srv" NAME_WE)
add_custom_target(_motoman_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motoman_msgs" "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/srv/CmdJointTrajectoryEx.srv" "motoman_msgs/DynamicJointPoint:motoman_msgs/DynamicJointTrajectory:motoman_msgs/DynamicJointsGroup:std_msgs/Header:industrial_msgs/ServiceReturnCode"
)

get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectoryFeedback.msg" NAME_WE)
add_custom_target(_motoman_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motoman_msgs" "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectoryFeedback.msg" "motoman_msgs/DynamicJointState:std_msgs/Header"
)

get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg" NAME_WE)
add_custom_target(_motoman_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motoman_msgs" "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg" "motoman_msgs/DynamicJointPoint:motoman_msgs/DynamicJointsGroup:std_msgs/Header"
)

get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg" NAME_WE)
add_custom_target(_motoman_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motoman_msgs" "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg" ""
)

get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg" NAME_WE)
add_custom_target(_motoman_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motoman_msgs" "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg" "motoman_msgs/DynamicJointsGroup"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_msgs
)
_generate_msg_cpp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_msgs
)
_generate_msg_cpp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg;/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_msgs
)
_generate_msg_cpp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_msgs
)
_generate_msg_cpp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_msgs
)

### Generating Services
_generate_srv_cpp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/srv/CmdJointTrajectoryEx.srv"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg;/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg;/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/industrial_msgs/cmake/../msg/ServiceReturnCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_msgs
)

### Generating Module File
_generate_module_cpp(motoman_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(motoman_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(motoman_msgs_generate_messages motoman_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_cpp _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/srv/CmdJointTrajectoryEx.srv" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_cpp _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectoryFeedback.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_cpp _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_cpp _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_cpp _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_cpp _motoman_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motoman_msgs_gencpp)
add_dependencies(motoman_msgs_gencpp motoman_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motoman_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_msgs
)
_generate_msg_lisp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_msgs
)
_generate_msg_lisp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg;/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_msgs
)
_generate_msg_lisp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_msgs
)
_generate_msg_lisp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_msgs
)

### Generating Services
_generate_srv_lisp(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/srv/CmdJointTrajectoryEx.srv"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg;/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg;/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/industrial_msgs/cmake/../msg/ServiceReturnCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_msgs
)

### Generating Module File
_generate_module_lisp(motoman_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(motoman_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(motoman_msgs_generate_messages motoman_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_lisp _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/srv/CmdJointTrajectoryEx.srv" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_lisp _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectoryFeedback.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_lisp _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_lisp _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_lisp _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_lisp _motoman_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motoman_msgs_genlisp)
add_dependencies(motoman_msgs_genlisp motoman_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motoman_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_msgs
)
_generate_msg_py(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_msgs
)
_generate_msg_py(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg;/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_msgs
)
_generate_msg_py(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_msgs
)
_generate_msg_py(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_msgs
)

### Generating Services
_generate_srv_py(motoman_msgs
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/srv/CmdJointTrajectoryEx.srv"
  "${MSG_I_FLAGS}"
  "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg;/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg;/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/industrial_msgs/cmake/../msg/ServiceReturnCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_msgs
)

### Generating Module File
_generate_module_py(motoman_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(motoman_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(motoman_msgs_generate_messages motoman_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointsGroup.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_py _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/srv/CmdJointTrajectoryEx.srv" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_py _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectoryFeedback.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_py _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointTrajectory.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_py _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointState.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_py _motoman_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tudeng/tianbao-robtech/src/motoman/motoman_msgs/msg/DynamicJointPoint.msg" NAME_WE)
add_dependencies(motoman_msgs_generate_messages_py _motoman_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motoman_msgs_genpy)
add_dependencies(motoman_msgs_genpy motoman_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motoman_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motoman_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(motoman_msgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
add_dependencies(motoman_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(motoman_msgs_generate_messages_cpp industrial_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motoman_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(motoman_msgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
add_dependencies(motoman_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(motoman_msgs_generate_messages_lisp industrial_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motoman_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(motoman_msgs_generate_messages_py trajectory_msgs_generate_messages_py)
add_dependencies(motoman_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(motoman_msgs_generate_messages_py industrial_msgs_generate_messages_py)
