# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aaj/aaj_git/resta/target

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aaj/aaj_git/resta/target

# Include any dependencies generated for this target.
include CMakeFiles/resta.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/resta.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/resta.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/resta.dir/flags.make

CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.o: CMakeFiles/resta.dir/flags.make
CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.o: /home/aaj/aaj_git/resta/src/main.c
CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.o: CMakeFiles/resta.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aaj/aaj_git/resta/target/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.o -MF CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.o.d -o CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.o -c /home/aaj/aaj_git/resta/src/main.c

CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aaj/aaj_git/resta/src/main.c > CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.i

CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aaj/aaj_git/resta/src/main.c -o CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.s

# Object files for target resta
resta_OBJECTS = \
"CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.o"

# External object files for target resta
resta_EXTERNAL_OBJECTS =

bin/resta: CMakeFiles/resta.dir/home/aaj/aaj_git/resta/src/main.c.o
bin/resta: CMakeFiles/resta.dir/build.make
bin/resta: CMakeFiles/resta.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aaj/aaj_git/resta/target/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin/resta"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/resta.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/resta.dir/build: bin/resta
.PHONY : CMakeFiles/resta.dir/build

CMakeFiles/resta.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/resta.dir/cmake_clean.cmake
.PHONY : CMakeFiles/resta.dir/clean

CMakeFiles/resta.dir/depend:
	cd /home/aaj/aaj_git/resta/target && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aaj/aaj_git/resta/target /home/aaj/aaj_git/resta/target /home/aaj/aaj_git/resta/target /home/aaj/aaj_git/resta/target /home/aaj/aaj_git/resta/target/CMakeFiles/resta.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/resta.dir/depend
