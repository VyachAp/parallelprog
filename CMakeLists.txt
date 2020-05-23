cmake_minimum_required(VERSION 3.16)
project(ParallelProg)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -pthread" )


include_directories(.)

add_executable(ParallelProg main.cpp worker.cpp worker.h)