# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "csrtle: 4 messages, 4 services")

set(MSG_I_FLAGS "-Icsrtle:/root/catkin_ws/src/csrtle/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(csrtle_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg" NAME_WE)
add_custom_target(_csrtle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "csrtle" "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg" ""
)

get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/timeInt8.msg" NAME_WE)
add_custom_target(_csrtle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "csrtle" "/root/catkin_ws/src/csrtle/msg/timeInt8.msg" ""
)

get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg" NAME_WE)
add_custom_target(_csrtle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "csrtle" "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg" ""
)

get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/aendEcho.msg" NAME_WE)
add_custom_target(_csrtle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "csrtle" "/root/catkin_ws/src/csrtle/msg/aendEcho.msg" ""
)

get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Kill.srv" NAME_WE)
add_custom_target(_csrtle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "csrtle" "/root/catkin_ws/src/csrtle/srv/Kill.srv" ""
)

get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Spawn.srv" NAME_WE)
add_custom_target(_csrtle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "csrtle" "/root/catkin_ws/src/csrtle/srv/Spawn.srv" ""
)

get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIbump.srv" NAME_WE)
add_custom_target(_csrtle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "csrtle" "/root/catkin_ws/src/csrtle/srv/RTIbump.srv" ""
)

get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIatend.srv" NAME_WE)
add_custom_target(_csrtle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "csrtle" "/root/catkin_ws/src/csrtle/srv/RTIatend.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(csrtle
  "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle
)
_generate_msg_cpp(csrtle
  "/root/catkin_ws/src/csrtle/msg/timeInt8.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle
)
_generate_msg_cpp(csrtle
  "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle
)
_generate_msg_cpp(csrtle
  "/root/catkin_ws/src/csrtle/msg/aendEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle
)

### Generating Services
_generate_srv_cpp(csrtle
  "/root/catkin_ws/src/csrtle/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle
)
_generate_srv_cpp(csrtle
  "/root/catkin_ws/src/csrtle/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle
)
_generate_srv_cpp(csrtle
  "/root/catkin_ws/src/csrtle/srv/RTIbump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle
)
_generate_srv_cpp(csrtle
  "/root/catkin_ws/src/csrtle/srv/RTIatend.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle
)

### Generating Module File
_generate_module_cpp(csrtle
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(csrtle_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(csrtle_generate_messages csrtle_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_cpp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/timeInt8.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_cpp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_cpp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/aendEcho.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_cpp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Kill.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_cpp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Spawn.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_cpp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIbump.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_cpp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIatend.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_cpp _csrtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(csrtle_gencpp)
add_dependencies(csrtle_gencpp csrtle_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS csrtle_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(csrtle
  "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle
)
_generate_msg_eus(csrtle
  "/root/catkin_ws/src/csrtle/msg/timeInt8.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle
)
_generate_msg_eus(csrtle
  "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle
)
_generate_msg_eus(csrtle
  "/root/catkin_ws/src/csrtle/msg/aendEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle
)

### Generating Services
_generate_srv_eus(csrtle
  "/root/catkin_ws/src/csrtle/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle
)
_generate_srv_eus(csrtle
  "/root/catkin_ws/src/csrtle/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle
)
_generate_srv_eus(csrtle
  "/root/catkin_ws/src/csrtle/srv/RTIbump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle
)
_generate_srv_eus(csrtle
  "/root/catkin_ws/src/csrtle/srv/RTIatend.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle
)

### Generating Module File
_generate_module_eus(csrtle
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(csrtle_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(csrtle_generate_messages csrtle_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_eus _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/timeInt8.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_eus _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_eus _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/aendEcho.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_eus _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Kill.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_eus _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Spawn.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_eus _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIbump.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_eus _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIatend.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_eus _csrtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(csrtle_geneus)
add_dependencies(csrtle_geneus csrtle_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS csrtle_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(csrtle
  "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle
)
_generate_msg_lisp(csrtle
  "/root/catkin_ws/src/csrtle/msg/timeInt8.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle
)
_generate_msg_lisp(csrtle
  "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle
)
_generate_msg_lisp(csrtle
  "/root/catkin_ws/src/csrtle/msg/aendEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle
)

### Generating Services
_generate_srv_lisp(csrtle
  "/root/catkin_ws/src/csrtle/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle
)
_generate_srv_lisp(csrtle
  "/root/catkin_ws/src/csrtle/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle
)
_generate_srv_lisp(csrtle
  "/root/catkin_ws/src/csrtle/srv/RTIbump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle
)
_generate_srv_lisp(csrtle
  "/root/catkin_ws/src/csrtle/srv/RTIatend.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle
)

### Generating Module File
_generate_module_lisp(csrtle
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(csrtle_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(csrtle_generate_messages csrtle_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_lisp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/timeInt8.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_lisp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_lisp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/aendEcho.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_lisp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Kill.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_lisp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Spawn.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_lisp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIbump.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_lisp _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIatend.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_lisp _csrtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(csrtle_genlisp)
add_dependencies(csrtle_genlisp csrtle_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS csrtle_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(csrtle
  "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle
)
_generate_msg_nodejs(csrtle
  "/root/catkin_ws/src/csrtle/msg/timeInt8.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle
)
_generate_msg_nodejs(csrtle
  "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle
)
_generate_msg_nodejs(csrtle
  "/root/catkin_ws/src/csrtle/msg/aendEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle
)

### Generating Services
_generate_srv_nodejs(csrtle
  "/root/catkin_ws/src/csrtle/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle
)
_generate_srv_nodejs(csrtle
  "/root/catkin_ws/src/csrtle/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle
)
_generate_srv_nodejs(csrtle
  "/root/catkin_ws/src/csrtle/srv/RTIbump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle
)
_generate_srv_nodejs(csrtle
  "/root/catkin_ws/src/csrtle/srv/RTIatend.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle
)

### Generating Module File
_generate_module_nodejs(csrtle
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(csrtle_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(csrtle_generate_messages csrtle_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_nodejs _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/timeInt8.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_nodejs _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_nodejs _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/aendEcho.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_nodejs _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Kill.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_nodejs _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Spawn.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_nodejs _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIbump.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_nodejs _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIatend.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_nodejs _csrtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(csrtle_gennodejs)
add_dependencies(csrtle_gennodejs csrtle_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS csrtle_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(csrtle
  "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle
)
_generate_msg_py(csrtle
  "/root/catkin_ws/src/csrtle/msg/timeInt8.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle
)
_generate_msg_py(csrtle
  "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle
)
_generate_msg_py(csrtle
  "/root/catkin_ws/src/csrtle/msg/aendEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle
)

### Generating Services
_generate_srv_py(csrtle
  "/root/catkin_ws/src/csrtle/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle
)
_generate_srv_py(csrtle
  "/root/catkin_ws/src/csrtle/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle
)
_generate_srv_py(csrtle
  "/root/catkin_ws/src/csrtle/srv/RTIbump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle
)
_generate_srv_py(csrtle
  "/root/catkin_ws/src/csrtle/srv/RTIatend.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle
)

### Generating Module File
_generate_module_py(csrtle
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(csrtle_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(csrtle_generate_messages csrtle_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/PoseOrntBundle.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_py _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/timeInt8.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_py _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/bumpEcho.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_py _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/msg/aendEcho.msg" NAME_WE)
add_dependencies(csrtle_generate_messages_py _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Kill.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_py _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/Spawn.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_py _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIbump.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_py _csrtle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/csrtle/srv/RTIatend.srv" NAME_WE)
add_dependencies(csrtle_generate_messages_py _csrtle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(csrtle_genpy)
add_dependencies(csrtle_genpy csrtle_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS csrtle_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/csrtle
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(csrtle_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(csrtle_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(csrtle_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/csrtle
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(csrtle_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(csrtle_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(csrtle_generate_messages_eus std_srvs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/csrtle
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(csrtle_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(csrtle_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(csrtle_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/csrtle
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(csrtle_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(csrtle_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(csrtle_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/csrtle
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(csrtle_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(csrtle_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(csrtle_generate_messages_py std_srvs_generate_messages_py)
endif()
