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
CMAKE_SOURCE_DIR = /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests

# Include any dependencies generated for this target.
include CMakeFiles/teststops.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/teststops.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/teststops.dir/flags.make

CMakeFiles/teststops.dir/teststops.o: CMakeFiles/teststops.dir/flags.make
CMakeFiles/teststops.dir/teststops.o: teststops.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/teststops.dir/teststops.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/teststops.dir/teststops.o -c /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/teststops.cpp

CMakeFiles/teststops.dir/teststops.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/teststops.dir/teststops.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/teststops.cpp > CMakeFiles/teststops.dir/teststops.i

CMakeFiles/teststops.dir/teststops.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/teststops.dir/teststops.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/teststops.cpp -o CMakeFiles/teststops.dir/teststops.s

CMakeFiles/teststops.dir/teststops.o.requires:

.PHONY : CMakeFiles/teststops.dir/teststops.o.requires

CMakeFiles/teststops.dir/teststops.o.provides: CMakeFiles/teststops.dir/teststops.o.requires
	$(MAKE) -f CMakeFiles/teststops.dir/build.make CMakeFiles/teststops.dir/teststops.o.provides.build
.PHONY : CMakeFiles/teststops.dir/teststops.o.provides

CMakeFiles/teststops.dir/teststops.o.provides.build: CMakeFiles/teststops.dir/teststops.o


# Object files for target teststops
teststops_OBJECTS = \
"CMakeFiles/teststops.dir/teststops.o"

# External object files for target teststops
teststops_EXTERNAL_OBJECTS =

teststops: CMakeFiles/teststops.dir/teststops.o
teststops: CMakeFiles/teststops.dir/build.make
teststops: CMakeFiles/teststops.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable teststops"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/teststops.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/teststops.dir/build: teststops

.PHONY : CMakeFiles/teststops.dir/build

CMakeFiles/teststops.dir/requires: CMakeFiles/teststops.dir/teststops.o.requires

.PHONY : CMakeFiles/teststops.dir/requires

CMakeFiles/teststops.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/teststops.dir/cmake_clean.cmake
.PHONY : CMakeFiles/teststops.dir/clean

CMakeFiles/teststops.dir/depend:
	cd /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/CMakeFiles/teststops.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/teststops.dir/depend

