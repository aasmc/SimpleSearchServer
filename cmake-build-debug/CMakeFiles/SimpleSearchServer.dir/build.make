# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aasmc/CLionProjects/SimpleSearchServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SimpleSearchServer.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/SimpleSearchServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SimpleSearchServer.dir/flags.make

CMakeFiles/SimpleSearchServer.dir/main.cpp.o: CMakeFiles/SimpleSearchServer.dir/flags.make
CMakeFiles/SimpleSearchServer.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SimpleSearchServer.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleSearchServer.dir/main.cpp.o -c /Users/aasmc/CLionProjects/SimpleSearchServer/main.cpp

CMakeFiles/SimpleSearchServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleSearchServer.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aasmc/CLionProjects/SimpleSearchServer/main.cpp > CMakeFiles/SimpleSearchServer.dir/main.cpp.i

CMakeFiles/SimpleSearchServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleSearchServer.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aasmc/CLionProjects/SimpleSearchServer/main.cpp -o CMakeFiles/SimpleSearchServer.dir/main.cpp.s

CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.o: CMakeFiles/SimpleSearchServer.dir/flags.make
CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.o: ../test_runner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.o -c /Users/aasmc/CLionProjects/SimpleSearchServer/test_runner.cpp

CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aasmc/CLionProjects/SimpleSearchServer/test_runner.cpp > CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.i

CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aasmc/CLionProjects/SimpleSearchServer/test_runner.cpp -o CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.s

CMakeFiles/SimpleSearchServer.dir/parse.cpp.o: CMakeFiles/SimpleSearchServer.dir/flags.make
CMakeFiles/SimpleSearchServer.dir/parse.cpp.o: ../parse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SimpleSearchServer.dir/parse.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleSearchServer.dir/parse.cpp.o -c /Users/aasmc/CLionProjects/SimpleSearchServer/parse.cpp

CMakeFiles/SimpleSearchServer.dir/parse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleSearchServer.dir/parse.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aasmc/CLionProjects/SimpleSearchServer/parse.cpp > CMakeFiles/SimpleSearchServer.dir/parse.cpp.i

CMakeFiles/SimpleSearchServer.dir/parse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleSearchServer.dir/parse.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aasmc/CLionProjects/SimpleSearchServer/parse.cpp -o CMakeFiles/SimpleSearchServer.dir/parse.cpp.s

CMakeFiles/SimpleSearchServer.dir/search_server.cpp.o: CMakeFiles/SimpleSearchServer.dir/flags.make
CMakeFiles/SimpleSearchServer.dir/search_server.cpp.o: ../search_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SimpleSearchServer.dir/search_server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleSearchServer.dir/search_server.cpp.o -c /Users/aasmc/CLionProjects/SimpleSearchServer/search_server.cpp

CMakeFiles/SimpleSearchServer.dir/search_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleSearchServer.dir/search_server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aasmc/CLionProjects/SimpleSearchServer/search_server.cpp > CMakeFiles/SimpleSearchServer.dir/search_server.cpp.i

CMakeFiles/SimpleSearchServer.dir/search_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleSearchServer.dir/search_server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aasmc/CLionProjects/SimpleSearchServer/search_server.cpp -o CMakeFiles/SimpleSearchServer.dir/search_server.cpp.s

CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.o: CMakeFiles/SimpleSearchServer.dir/flags.make
CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.o: ../profile_advanced.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.o -c /Users/aasmc/CLionProjects/SimpleSearchServer/profile_advanced.cpp

CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aasmc/CLionProjects/SimpleSearchServer/profile_advanced.cpp > CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.i

CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aasmc/CLionProjects/SimpleSearchServer/profile_advanced.cpp -o CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.s

CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.o: CMakeFiles/SimpleSearchServer.dir/flags.make
CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.o: ../search_server_official_part_two.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.o -c /Users/aasmc/CLionProjects/SimpleSearchServer/search_server_official_part_two.cpp

CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aasmc/CLionProjects/SimpleSearchServer/search_server_official_part_two.cpp > CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.i

CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aasmc/CLionProjects/SimpleSearchServer/search_server_official_part_two.cpp -o CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.s

CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.o: CMakeFiles/SimpleSearchServer.dir/flags.make
CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.o: ../parse_official.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.o -c /Users/aasmc/CLionProjects/SimpleSearchServer/parse_official.cpp

CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aasmc/CLionProjects/SimpleSearchServer/parse_official.cpp > CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.i

CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aasmc/CLionProjects/SimpleSearchServer/parse_official.cpp -o CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.s

# Object files for target SimpleSearchServer
SimpleSearchServer_OBJECTS = \
"CMakeFiles/SimpleSearchServer.dir/main.cpp.o" \
"CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.o" \
"CMakeFiles/SimpleSearchServer.dir/parse.cpp.o" \
"CMakeFiles/SimpleSearchServer.dir/search_server.cpp.o" \
"CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.o" \
"CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.o" \
"CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.o"

# External object files for target SimpleSearchServer
SimpleSearchServer_EXTERNAL_OBJECTS =

SimpleSearchServer: CMakeFiles/SimpleSearchServer.dir/main.cpp.o
SimpleSearchServer: CMakeFiles/SimpleSearchServer.dir/test_runner.cpp.o
SimpleSearchServer: CMakeFiles/SimpleSearchServer.dir/parse.cpp.o
SimpleSearchServer: CMakeFiles/SimpleSearchServer.dir/search_server.cpp.o
SimpleSearchServer: CMakeFiles/SimpleSearchServer.dir/profile_advanced.cpp.o
SimpleSearchServer: CMakeFiles/SimpleSearchServer.dir/search_server_official_part_two.cpp.o
SimpleSearchServer: CMakeFiles/SimpleSearchServer.dir/parse_official.cpp.o
SimpleSearchServer: CMakeFiles/SimpleSearchServer.dir/build.make
SimpleSearchServer: CMakeFiles/SimpleSearchServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable SimpleSearchServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SimpleSearchServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SimpleSearchServer.dir/build: SimpleSearchServer
.PHONY : CMakeFiles/SimpleSearchServer.dir/build

CMakeFiles/SimpleSearchServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SimpleSearchServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SimpleSearchServer.dir/clean

CMakeFiles/SimpleSearchServer.dir/depend:
	cd /Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aasmc/CLionProjects/SimpleSearchServer /Users/aasmc/CLionProjects/SimpleSearchServer /Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug /Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug /Users/aasmc/CLionProjects/SimpleSearchServer/cmake-build-debug/CMakeFiles/SimpleSearchServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SimpleSearchServer.dir/depend
