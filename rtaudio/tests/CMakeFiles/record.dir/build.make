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
include CMakeFiles/record.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/record.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/record.dir/flags.make

CMakeFiles/record.dir/record.o: CMakeFiles/record.dir/flags.make
CMakeFiles/record.dir/record.o: record.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/record.dir/record.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/record.dir/record.o -c /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/record.cpp

CMakeFiles/record.dir/record.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/record.dir/record.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/record.cpp > CMakeFiles/record.dir/record.i

CMakeFiles/record.dir/record.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/record.dir/record.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/record.cpp -o CMakeFiles/record.dir/record.s

CMakeFiles/record.dir/record.o.requires:

.PHONY : CMakeFiles/record.dir/record.o.requires

CMakeFiles/record.dir/record.o.provides: CMakeFiles/record.dir/record.o.requires
	$(MAKE) -f CMakeFiles/record.dir/build.make CMakeFiles/record.dir/record.o.provides.build
.PHONY : CMakeFiles/record.dir/record.o.provides

CMakeFiles/record.dir/record.o.provides.build: CMakeFiles/record.dir/record.o


# Object files for target record
record_OBJECTS = \
"CMakeFiles/record.dir/record.o"

# External object files for target record
record_EXTERNAL_OBJECTS =

record: CMakeFiles/record.dir/record.o
record: CMakeFiles/record.dir/build.make
record: CMakeFiles/record.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable record"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/record.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/record.dir/build: record

.PHONY : CMakeFiles/record.dir/build

CMakeFiles/record.dir/requires: CMakeFiles/record.dir/record.o.requires

.PHONY : CMakeFiles/record.dir/requires

CMakeFiles/record.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/record.dir/cmake_clean.cmake
.PHONY : CMakeFiles/record.dir/clean

CMakeFiles/record.dir/depend:
	cd /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests /home/car/grpc/examples/cpp/embedded_assistant/rtaudio/tests/CMakeFiles/record.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/record.dir/depend

