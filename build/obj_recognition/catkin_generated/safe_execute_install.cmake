execute_process(COMMAND "/home/ruthz/detection_ws/build/obj_recognition/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ruthz/detection_ws/build/obj_recognition/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
