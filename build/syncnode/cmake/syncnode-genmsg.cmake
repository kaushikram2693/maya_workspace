# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "syncnode: 1 messages, 0 services")

set(MSG_I_FLAGS "-Isyncnode:/home/kaushik/catkin_ws/src/syncnode/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(syncnode_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg" NAME_WE)
add_custom_target(_syncnode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "syncnode" "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(syncnode
  "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/syncnode
)

### Generating Services

### Generating Module File
_generate_module_cpp(syncnode
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/syncnode
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(syncnode_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(syncnode_generate_messages syncnode_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg" NAME_WE)
add_dependencies(syncnode_generate_messages_cpp _syncnode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(syncnode_gencpp)
add_dependencies(syncnode_gencpp syncnode_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS syncnode_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(syncnode
  "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/syncnode
)

### Generating Services

### Generating Module File
_generate_module_eus(syncnode
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/syncnode
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(syncnode_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(syncnode_generate_messages syncnode_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg" NAME_WE)
add_dependencies(syncnode_generate_messages_eus _syncnode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(syncnode_geneus)
add_dependencies(syncnode_geneus syncnode_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS syncnode_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(syncnode
  "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/syncnode
)

### Generating Services

### Generating Module File
_generate_module_lisp(syncnode
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/syncnode
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(syncnode_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(syncnode_generate_messages syncnode_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg" NAME_WE)
add_dependencies(syncnode_generate_messages_lisp _syncnode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(syncnode_genlisp)
add_dependencies(syncnode_genlisp syncnode_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS syncnode_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(syncnode
  "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/syncnode
)

### Generating Services

### Generating Module File
_generate_module_nodejs(syncnode
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/syncnode
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(syncnode_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(syncnode_generate_messages syncnode_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg" NAME_WE)
add_dependencies(syncnode_generate_messages_nodejs _syncnode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(syncnode_gennodejs)
add_dependencies(syncnode_gennodejs syncnode_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS syncnode_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(syncnode
  "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/syncnode
)

### Generating Services

### Generating Module File
_generate_module_py(syncnode
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/syncnode
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(syncnode_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(syncnode_generate_messages syncnode_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kaushik/catkin_ws/src/syncnode/msg/syncimg.msg" NAME_WE)
add_dependencies(syncnode_generate_messages_py _syncnode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(syncnode_genpy)
add_dependencies(syncnode_genpy syncnode_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS syncnode_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/syncnode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/syncnode
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(syncnode_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/syncnode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/syncnode
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(syncnode_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/syncnode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/syncnode
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(syncnode_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/syncnode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/syncnode
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(syncnode_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/syncnode)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/syncnode\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/syncnode
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(syncnode_generate_messages_py sensor_msgs_generate_messages_py)
endif()
