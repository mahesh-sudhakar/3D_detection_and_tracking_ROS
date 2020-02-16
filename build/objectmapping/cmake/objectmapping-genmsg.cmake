# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "objectmapping: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iobjectmapping:/home/ruthz/detection_ws/src/objectmapping/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(objectmapping_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg" NAME_WE)
add_custom_target(_objectmapping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "objectmapping" "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:sensor_msgs/Image:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(objectmapping
  "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/objectmapping
)

### Generating Services

### Generating Module File
_generate_module_cpp(objectmapping
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/objectmapping
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(objectmapping_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(objectmapping_generate_messages objectmapping_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg" NAME_WE)
add_dependencies(objectmapping_generate_messages_cpp _objectmapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(objectmapping_gencpp)
add_dependencies(objectmapping_gencpp objectmapping_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS objectmapping_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(objectmapping
  "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/objectmapping
)

### Generating Services

### Generating Module File
_generate_module_eus(objectmapping
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/objectmapping
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(objectmapping_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(objectmapping_generate_messages objectmapping_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg" NAME_WE)
add_dependencies(objectmapping_generate_messages_eus _objectmapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(objectmapping_geneus)
add_dependencies(objectmapping_geneus objectmapping_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS objectmapping_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(objectmapping
  "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/objectmapping
)

### Generating Services

### Generating Module File
_generate_module_lisp(objectmapping
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/objectmapping
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(objectmapping_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(objectmapping_generate_messages objectmapping_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg" NAME_WE)
add_dependencies(objectmapping_generate_messages_lisp _objectmapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(objectmapping_genlisp)
add_dependencies(objectmapping_genlisp objectmapping_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS objectmapping_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(objectmapping
  "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/objectmapping
)

### Generating Services

### Generating Module File
_generate_module_nodejs(objectmapping
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/objectmapping
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(objectmapping_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(objectmapping_generate_messages objectmapping_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg" NAME_WE)
add_dependencies(objectmapping_generate_messages_nodejs _objectmapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(objectmapping_gennodejs)
add_dependencies(objectmapping_gennodejs objectmapping_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS objectmapping_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(objectmapping
  "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/objectmapping
)

### Generating Services

### Generating Module File
_generate_module_py(objectmapping
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/objectmapping
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(objectmapping_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(objectmapping_generate_messages objectmapping_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ruthz/detection_ws/src/objectmapping/msg/ObjectData.msg" NAME_WE)
add_dependencies(objectmapping_generate_messages_py _objectmapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(objectmapping_genpy)
add_dependencies(objectmapping_genpy objectmapping_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS objectmapping_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/objectmapping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/objectmapping
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(objectmapping_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(objectmapping_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(objectmapping_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/objectmapping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/objectmapping
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(objectmapping_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(objectmapping_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(objectmapping_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/objectmapping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/objectmapping
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(objectmapping_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(objectmapping_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(objectmapping_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/objectmapping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/objectmapping
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(objectmapping_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(objectmapping_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(objectmapping_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/objectmapping)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/objectmapping\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/objectmapping
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(objectmapping_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(objectmapping_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(objectmapping_generate_messages_py sensor_msgs_generate_messages_py)
endif()
