# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ruthz/detection_ws/src/det_and_tracking

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ruthz/detection_ws/build/det_and_tracking

# Include any dependencies generated for this target.
include CMakeFiles/boundingboxpoints.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/boundingboxpoints.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/boundingboxpoints.dir/flags.make

CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o: CMakeFiles/boundingboxpoints.dir/flags.make
CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o: /home/ruthz/detection_ws/src/det_and_tracking/src/get_points.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ruthz/detection_ws/build/det_and_tracking/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o -c /home/ruthz/detection_ws/src/det_and_tracking/src/get_points.cpp

CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruthz/detection_ws/src/det_and_tracking/src/get_points.cpp > CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.i

CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruthz/detection_ws/src/det_and_tracking/src/get_points.cpp -o CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.s

CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o.requires:

.PHONY : CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o.requires

CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o.provides: CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o.requires
	$(MAKE) -f CMakeFiles/boundingboxpoints.dir/build.make CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o.provides.build
.PHONY : CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o.provides

CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o.provides.build: CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o


# Object files for target boundingboxpoints
boundingboxpoints_OBJECTS = \
"CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o"

# External object files for target boundingboxpoints
boundingboxpoints_EXTERNAL_OBJECTS =

/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: CMakeFiles/boundingboxpoints.dir/build.make
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/libimage_transport.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/libmessage_filters.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/libclass_loader.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/libPocoFoundation.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libdl.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/libroscpp.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/libroslib.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/librospack.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/libcv_bridge.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/librosconsole.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/librostime.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /opt/ros/kinetic/lib/libcpp_common.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints: CMakeFiles/boundingboxpoints.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ruthz/detection_ws/build/det_and_tracking/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boundingboxpoints.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/boundingboxpoints.dir/build: /home/ruthz/detection_ws/devel/.private/det_and_tracking/lib/det_and_tracking/boundingboxpoints

.PHONY : CMakeFiles/boundingboxpoints.dir/build

CMakeFiles/boundingboxpoints.dir/requires: CMakeFiles/boundingboxpoints.dir/src/get_points.cpp.o.requires

.PHONY : CMakeFiles/boundingboxpoints.dir/requires

CMakeFiles/boundingboxpoints.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/boundingboxpoints.dir/cmake_clean.cmake
.PHONY : CMakeFiles/boundingboxpoints.dir/clean

CMakeFiles/boundingboxpoints.dir/depend:
	cd /home/ruthz/detection_ws/build/det_and_tracking && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruthz/detection_ws/src/det_and_tracking /home/ruthz/detection_ws/src/det_and_tracking /home/ruthz/detection_ws/build/det_and_tracking /home/ruthz/detection_ws/build/det_and_tracking /home/ruthz/detection_ws/build/det_and_tracking/CMakeFiles/boundingboxpoints.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/boundingboxpoints.dir/depend

