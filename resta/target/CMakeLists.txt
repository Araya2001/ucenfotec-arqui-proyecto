cmake_minimum_required(VERSION 3.20)
project(resta C)

set(CMAKE_C_STANDARD 99)
set(SOURCES ../src/main.c)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY bin)

add_executable(resta ${SOURCES})
target_include_directories(resta PRIVATE ${../src/})
set_target_properties(resta
        PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY "bin"
        )