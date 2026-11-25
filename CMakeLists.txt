cmake_minimum_required(VERSION 3.16)

project(ENSync VERSION 0.1.0 LANGUAGES C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug CACHE STRING "Build type" FORCE)
endif()

add_compile_options(-Wall -Wextra -Wpedantic)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

set(ENSYNC_MODULES controller client network audio sync dsa)
foreach(module IN LISTS ENSYNC_MODULES)
    file(GLOB sources "${CMAKE_CURRENT_SOURCE_DIR}/src/${module}/*.c")
    list(APPEND ENSYNC_SOURCES ${sources})
endforeach()

add_library(ensync_core STATIC ${ENSYNC_SOURCES})

add_executable(ensync ${CMAKE_CURRENT_SOURCE_DIR}/src/main.c)
target_link_libraries(ensync PRIVATE ensync_core)

enable_testing()
file(GLOB test_sources "${CMAKE_CURRENT_SOURCE_DIR}/tests/test_*.c")
foreach(test_source IN LISTS test_sources)
    get_filename_component(test_name ${test_source} NAME_WE)
    add_executable(${test_name} ${test_source})
    target_link_libraries(${test_name} PRIVATE ensync_core)
    add_test(NAME ${test_name} COMMAND ${test_name})
endforeach()
