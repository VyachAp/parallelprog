# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /home/vyachap/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/201.6668.126/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/vyachap/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/201.6668.126/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vyachap/CLionProjects/ParallelProg

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vyachap/CLionProjects/ParallelProg/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ParallelProg.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ParallelProg.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ParallelProg.dir/flags.make

CMakeFiles/ParallelProg.dir/main.cpp.o: CMakeFiles/ParallelProg.dir/flags.make
CMakeFiles/ParallelProg.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vyachap/CLionProjects/ParallelProg/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ParallelProg.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ParallelProg.dir/main.cpp.o -c /home/vyachap/CLionProjects/ParallelProg/main.cpp

CMakeFiles/ParallelProg.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ParallelProg.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vyachap/CLionProjects/ParallelProg/main.cpp > CMakeFiles/ParallelProg.dir/main.cpp.i

CMakeFiles/ParallelProg.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ParallelProg.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vyachap/CLionProjects/ParallelProg/main.cpp -o CMakeFiles/ParallelProg.dir/main.cpp.s

CMakeFiles/ParallelProg.dir/worker.cpp.o: CMakeFiles/ParallelProg.dir/flags.make
CMakeFiles/ParallelProg.dir/worker.cpp.o: ../worker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vyachap/CLionProjects/ParallelProg/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ParallelProg.dir/worker.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ParallelProg.dir/worker.cpp.o -c /home/vyachap/CLionProjects/ParallelProg/worker.cpp

CMakeFiles/ParallelProg.dir/worker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ParallelProg.dir/worker.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vyachap/CLionProjects/ParallelProg/worker.cpp > CMakeFiles/ParallelProg.dir/worker.cpp.i

CMakeFiles/ParallelProg.dir/worker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ParallelProg.dir/worker.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vyachap/CLionProjects/ParallelProg/worker.cpp -o CMakeFiles/ParallelProg.dir/worker.cpp.s

# Object files for target ParallelProg
ParallelProg_OBJECTS = \
"CMakeFiles/ParallelProg.dir/main.cpp.o" \
"CMakeFiles/ParallelProg.dir/worker.cpp.o"

# External object files for target ParallelProg
ParallelProg_EXTERNAL_OBJECTS =

ParallelProg: CMakeFiles/ParallelProg.dir/main.cpp.o
ParallelProg: CMakeFiles/ParallelProg.dir/worker.cpp.o
ParallelProg: CMakeFiles/ParallelProg.dir/build.make
ParallelProg: CMakeFiles/ParallelProg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vyachap/CLionProjects/ParallelProg/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ParallelProg"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ParallelProg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ParallelProg.dir/build: ParallelProg

.PHONY : CMakeFiles/ParallelProg.dir/build

CMakeFiles/ParallelProg.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ParallelProg.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ParallelProg.dir/clean

CMakeFiles/ParallelProg.dir/depend:
	cd /home/vyachap/CLionProjects/ParallelProg/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vyachap/CLionProjects/ParallelProg /home/vyachap/CLionProjects/ParallelProg /home/vyachap/CLionProjects/ParallelProg/cmake-build-debug /home/vyachap/CLionProjects/ParallelProg/cmake-build-debug /home/vyachap/CLionProjects/ParallelProg/cmake-build-debug/CMakeFiles/ParallelProg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ParallelProg.dir/depend
