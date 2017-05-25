cmake_minimum_required(VERSION 3.7)
project(ph)

set(CMAKE_CXX_STANDARD 11)
include_directories(src sqlite3 CppSQLite)

set(SOURCE_FILES main.cpp src/ArgvManager.cpp src/PathMark.cpp sqlite3/sqlite3.c src/DBManager.cpp
        src/DBManager.h CppSQLite/CppSQLite3.cpp)
add_executable(ph ${SOURCE_FILES})

