# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zhijianzhang/ClionProjects/ph

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhijianzhang/ClionProjects/ph

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/Applications/CLion.app/Contents/bin/cmake/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/Applications/CLion.app/Contents/bin/cmake/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/zhijianzhang/ClionProjects/ph/CMakeFiles /Users/zhijianzhang/ClionProjects/ph/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/zhijianzhang/ClionProjects/ph/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named ph

# Build rule for target.
ph: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ph
.PHONY : ph

# fast build rule for target.
ph/fast:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/build
.PHONY : ph/fast

CppSQLite/CppSQLite3.o: CppSQLite/CppSQLite3.cpp.o

.PHONY : CppSQLite/CppSQLite3.o

# target to build an object file
CppSQLite/CppSQLite3.cpp.o:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/CppSQLite/CppSQLite3.cpp.o
.PHONY : CppSQLite/CppSQLite3.cpp.o

CppSQLite/CppSQLite3.i: CppSQLite/CppSQLite3.cpp.i

.PHONY : CppSQLite/CppSQLite3.i

# target to preprocess a source file
CppSQLite/CppSQLite3.cpp.i:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/CppSQLite/CppSQLite3.cpp.i
.PHONY : CppSQLite/CppSQLite3.cpp.i

CppSQLite/CppSQLite3.s: CppSQLite/CppSQLite3.cpp.s

.PHONY : CppSQLite/CppSQLite3.s

# target to generate assembly for a file
CppSQLite/CppSQLite3.cpp.s:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/CppSQLite/CppSQLite3.cpp.s
.PHONY : CppSQLite/CppSQLite3.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/main.cpp.s
.PHONY : main.cpp.s

sqlite3/sqlite3.o: sqlite3/sqlite3.c.o

.PHONY : sqlite3/sqlite3.o

# target to build an object file
sqlite3/sqlite3.c.o:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/sqlite3/sqlite3.c.o
.PHONY : sqlite3/sqlite3.c.o

sqlite3/sqlite3.i: sqlite3/sqlite3.c.i

.PHONY : sqlite3/sqlite3.i

# target to preprocess a source file
sqlite3/sqlite3.c.i:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/sqlite3/sqlite3.c.i
.PHONY : sqlite3/sqlite3.c.i

sqlite3/sqlite3.s: sqlite3/sqlite3.c.s

.PHONY : sqlite3/sqlite3.s

# target to generate assembly for a file
sqlite3/sqlite3.c.s:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/sqlite3/sqlite3.c.s
.PHONY : sqlite3/sqlite3.c.s

src/ArgvManager.o: src/ArgvManager.cpp.o

.PHONY : src/ArgvManager.o

# target to build an object file
src/ArgvManager.cpp.o:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/src/ArgvManager.cpp.o
.PHONY : src/ArgvManager.cpp.o

src/ArgvManager.i: src/ArgvManager.cpp.i

.PHONY : src/ArgvManager.i

# target to preprocess a source file
src/ArgvManager.cpp.i:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/src/ArgvManager.cpp.i
.PHONY : src/ArgvManager.cpp.i

src/ArgvManager.s: src/ArgvManager.cpp.s

.PHONY : src/ArgvManager.s

# target to generate assembly for a file
src/ArgvManager.cpp.s:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/src/ArgvManager.cpp.s
.PHONY : src/ArgvManager.cpp.s

src/DBManager.o: src/DBManager.cpp.o

.PHONY : src/DBManager.o

# target to build an object file
src/DBManager.cpp.o:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/src/DBManager.cpp.o
.PHONY : src/DBManager.cpp.o

src/DBManager.i: src/DBManager.cpp.i

.PHONY : src/DBManager.i

# target to preprocess a source file
src/DBManager.cpp.i:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/src/DBManager.cpp.i
.PHONY : src/DBManager.cpp.i

src/DBManager.s: src/DBManager.cpp.s

.PHONY : src/DBManager.s

# target to generate assembly for a file
src/DBManager.cpp.s:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/src/DBManager.cpp.s
.PHONY : src/DBManager.cpp.s

src/PathMark.o: src/PathMark.cpp.o

.PHONY : src/PathMark.o

# target to build an object file
src/PathMark.cpp.o:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/src/PathMark.cpp.o
.PHONY : src/PathMark.cpp.o

src/PathMark.i: src/PathMark.cpp.i

.PHONY : src/PathMark.i

# target to preprocess a source file
src/PathMark.cpp.i:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/src/PathMark.cpp.i
.PHONY : src/PathMark.cpp.i

src/PathMark.s: src/PathMark.cpp.s

.PHONY : src/PathMark.s

# target to generate assembly for a file
src/PathMark.cpp.s:
	$(MAKE) -f CMakeFiles/ph.dir/build.make CMakeFiles/ph.dir/src/PathMark.cpp.s
.PHONY : src/PathMark.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... ph"
	@echo "... CppSQLite/CppSQLite3.o"
	@echo "... CppSQLite/CppSQLite3.i"
	@echo "... CppSQLite/CppSQLite3.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... sqlite3/sqlite3.o"
	@echo "... sqlite3/sqlite3.i"
	@echo "... sqlite3/sqlite3.s"
	@echo "... src/ArgvManager.o"
	@echo "... src/ArgvManager.i"
	@echo "... src/ArgvManager.s"
	@echo "... src/DBManager.o"
	@echo "... src/DBManager.i"
	@echo "... src/DBManager.s"
	@echo "... src/PathMark.o"
	@echo "... src/PathMark.i"
	@echo "... src/PathMark.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
