cmake_minimum_required(VERSION 3.13.1)
project(codon_test)

if (NOT CMAKE_BUILD_TYPE OR CMAKE_BUILD_TYPE STREQUAL "")
    set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "" FORCE)
endif()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Accept source directory as parameter and resolve to absolute path
if(NOT DEFINED SOURCE_DIR)
    message(FATAL_ERROR "Please specify SOURCE_DIR: -DSOURCE_DIR=path/to/sources")
endif()
get_filename_component(SOURCE_DIR "${SOURCE_DIR}" REALPATH BASE_DIR "${CMAKE_BINARY_DIR}")
message("SOURCE_DIR: ${SOURCE_DIR}")

# Find all .c and .py files
file(GLOB C_SOURCES "${SOURCE_DIR}/*.cpp")
file(GLOB PY_SOURCES "${SOURCE_DIR}/*.codon")


# Create custom commands for processing Python files
foreach(PY_FILE ${PY_SOURCES})
    get_filename_component(PY_NAME ${PY_FILE} NAME_WE)

    add_custom_command(
        OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${PY_NAME}.o
        COMMAND codon build -llvm -release -disable-exceptions -disable-native -force-vector-width 1 ${PY_FILE} -o ${PY_NAME}.ll
        COMMAND llvm-extract --func=my_add -S -recursive -keep-const-init ${PY_NAME}.ll -o ${PY_NAME}_extracted.ll
        COMMAND llc -filetype=obj ${PY_NAME}_extracted.ll -o ${PY_NAME}.o
        DEPENDS ${PY_FILE}
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Processing ${PY_FILE} with Codon"
    )
    list(APPEND GENERATED_OBJECTS ${CMAKE_CURRENT_BINARY_DIR}/${PY_NAME}.o)
endforeach()

# Create the final executable
add_executable(app lib_tracked.cpp ${C_SOURCES} ${GENERATED_OBJECTS})

# Add the lib_tracked.h file to the include path
target_include_directories(app PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})