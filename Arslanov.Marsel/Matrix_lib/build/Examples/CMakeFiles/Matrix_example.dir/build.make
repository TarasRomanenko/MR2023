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
CMAKE_SOURCE_DIR = /home/marsel/Polikek/programming/Matrix_lib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marsel/Polikek/programming/Matrix_lib/build

# Include any dependencies generated for this target.
include Examples/CMakeFiles/Matrix_example.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Examples/CMakeFiles/Matrix_example.dir/compiler_depend.make

# Include the progress variables for this target.
include Examples/CMakeFiles/Matrix_example.dir/progress.make

# Include the compile flags for this target's objects.
include Examples/CMakeFiles/Matrix_example.dir/flags.make

Examples/CMakeFiles/Matrix_example.dir/main.c.o: Examples/CMakeFiles/Matrix_example.dir/flags.make
Examples/CMakeFiles/Matrix_example.dir/main.c.o: ../Examples/main.c
Examples/CMakeFiles/Matrix_example.dir/main.c.o: Examples/CMakeFiles/Matrix_example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marsel/Polikek/programming/Matrix_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Examples/CMakeFiles/Matrix_example.dir/main.c.o"
	cd /home/marsel/Polikek/programming/Matrix_lib/build/Examples && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Examples/CMakeFiles/Matrix_example.dir/main.c.o -MF CMakeFiles/Matrix_example.dir/main.c.o.d -o CMakeFiles/Matrix_example.dir/main.c.o -c /home/marsel/Polikek/programming/Matrix_lib/Examples/main.c

Examples/CMakeFiles/Matrix_example.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Matrix_example.dir/main.c.i"
	cd /home/marsel/Polikek/programming/Matrix_lib/build/Examples && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/marsel/Polikek/programming/Matrix_lib/Examples/main.c > CMakeFiles/Matrix_example.dir/main.c.i

Examples/CMakeFiles/Matrix_example.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Matrix_example.dir/main.c.s"
	cd /home/marsel/Polikek/programming/Matrix_lib/build/Examples && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/marsel/Polikek/programming/Matrix_lib/Examples/main.c -o CMakeFiles/Matrix_example.dir/main.c.s

# Object files for target Matrix_example
Matrix_example_OBJECTS = \
"CMakeFiles/Matrix_example.dir/main.c.o"

# External object files for target Matrix_example
Matrix_example_EXTERNAL_OBJECTS =

Examples/Matrix_example: Examples/CMakeFiles/Matrix_example.dir/main.c.o
Examples/Matrix_example: Examples/CMakeFiles/Matrix_example.dir/build.make
Examples/Matrix_example: Examples/CMakeFiles/Matrix_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marsel/Polikek/programming/Matrix_lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Matrix_example"
	cd /home/marsel/Polikek/programming/Matrix_lib/build/Examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Matrix_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Examples/CMakeFiles/Matrix_example.dir/build: Examples/Matrix_example
.PHONY : Examples/CMakeFiles/Matrix_example.dir/build

Examples/CMakeFiles/Matrix_example.dir/clean:
	cd /home/marsel/Polikek/programming/Matrix_lib/build/Examples && $(CMAKE_COMMAND) -P CMakeFiles/Matrix_example.dir/cmake_clean.cmake
.PHONY : Examples/CMakeFiles/Matrix_example.dir/clean

Examples/CMakeFiles/Matrix_example.dir/depend:
	cd /home/marsel/Polikek/programming/Matrix_lib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marsel/Polikek/programming/Matrix_lib /home/marsel/Polikek/programming/Matrix_lib/Examples /home/marsel/Polikek/programming/Matrix_lib/build /home/marsel/Polikek/programming/Matrix_lib/build/Examples /home/marsel/Polikek/programming/Matrix_lib/build/Examples/CMakeFiles/Matrix_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Examples/CMakeFiles/Matrix_example.dir/depend
