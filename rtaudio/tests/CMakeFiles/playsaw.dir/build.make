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
include CMakeFiles/playsaw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/playsaw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/playsaw.dir/flags.make

CMakeFiles/playsaw.dir/playsaw.o: CMakeFiles/playsaw.dir/flags.make
CMakeFiles/playsaw.dir/playsaw.o: playsaw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/playsaw.dir/playsaw.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/playsaw.dir/playsaw.o -c /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/playsaw.cpp

CMakeFiles/playsaw.dir/playsaw.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/playsaw.dir/playsaw.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/playsaw.cpp > CMakeFiles/playsaw.dir/playsaw.i

CMakeFiles/playsaw.dir/playsaw.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/playsaw.dir/playsaw.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/playsaw.cpp -o CMakeFiles/playsaw.dir/playsaw.s

CMakeFiles/playsaw.dir/playsaw.o.requires:

.PHONY : CMakeFiles/playsaw.dir/playsaw.o.requires

CMakeFiles/playsaw.dir/playsaw.o.provides: CMakeFiles/playsaw.dir/playsaw.o.requires
	$(MAKE) -f CMakeFiles/playsaw.dir/build.make CMakeFiles/playsaw.dir/playsaw.o.provides.build
.PHONY : CMakeFiles/playsaw.dir/playsaw.o.provides

CMakeFiles/playsaw.dir/playsaw.o.provides.build: CMakeFiles/playsaw.dir/playsaw.o


# Object files for target playsaw
playsaw_OBJECTS = \
"CMakeFiles/playsaw.dir/playsaw.o"

# External object files for target playsaw
playsaw_EXTERNAL_OBJECTS =

playsaw: CMakeFiles/playsaw.dir/playsaw.o
playsaw: CMakeFiles/playsaw.dir/build.make
playsaw: CMakeFiles/playsaw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable playsaw"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/playsaw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/playsaw.dir/build: playsaw

.PHONY : CMakeFiles/playsaw.dir/build

CMakeFiles/playsaw.dir/requires: CMakeFiles/playsaw.dir/playsaw.o.requires

.PHONY : CMakeFiles/playsaw.dir/requires

CMakeFiles/playsaw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/playsaw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/playsaw.dir/clean

CMakeFiles/playsaw.dir/depend:
	cd /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/CMakeFiles/playsaw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/playsaw.dir/depend
