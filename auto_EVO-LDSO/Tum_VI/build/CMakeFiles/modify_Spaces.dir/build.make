# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum/build

# Include any dependencies generated for this target.
include CMakeFiles/modify_Spaces.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/modify_Spaces.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/modify_Spaces.dir/flags.make

CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o: CMakeFiles/modify_Spaces.dir/flags.make
CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o: ../src/modify_Spaces.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o -c /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum/src/modify_Spaces.cc

CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum/src/modify_Spaces.cc > CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.i

CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum/src/modify_Spaces.cc -o CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.s

CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o.requires:

.PHONY : CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o.requires

CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o.provides: CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o.requires
	$(MAKE) -f CMakeFiles/modify_Spaces.dir/build.make CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o.provides.build
.PHONY : CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o.provides

CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o.provides.build: CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o


# Object files for target modify_Spaces
modify_Spaces_OBJECTS = \
"CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o"

# External object files for target modify_Spaces
modify_Spaces_EXTERNAL_OBJECTS =

../modify_Spaces: CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o
../modify_Spaces: CMakeFiles/modify_Spaces.dir/build.make
../modify_Spaces: CMakeFiles/modify_Spaces.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../modify_Spaces"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/modify_Spaces.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/modify_Spaces.dir/build: ../modify_Spaces

.PHONY : CMakeFiles/modify_Spaces.dir/build

CMakeFiles/modify_Spaces.dir/requires: CMakeFiles/modify_Spaces.dir/src/modify_Spaces.cc.o.requires

.PHONY : CMakeFiles/modify_Spaces.dir/requires

CMakeFiles/modify_Spaces.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/modify_Spaces.dir/cmake_clean.cmake
.PHONY : CMakeFiles/modify_Spaces.dir/clean

CMakeFiles/modify_Spaces.dir/depend:
	cd /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum/build /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum/build /home/changfei/whelan_ws/src/auto_EVO-LDSO/auto_EVO-LDSO/Tum/build/CMakeFiles/modify_Spaces.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/modify_Spaces.dir/depend

