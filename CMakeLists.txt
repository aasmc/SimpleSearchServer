cmake_minimum_required(VERSION 3.19)
project(SimpleSearchServer)

set(CMAKE_CXX_STANDARD 17)

add_executable(coursera_red_final main.cpp profile.h test_runner.h test_runner.cpp iterator_range.h parse.h parse.cpp
        search_server.h
        search_server.cpp
        )