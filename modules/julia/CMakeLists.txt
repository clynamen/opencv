# ----------------------------------------------------------------------------
#  CMake file for julia support
# ----------------------------------------------------------------------------
if(DEFINED OPENCV_INITIAL_PASS)  # OpenCV build

if(ANDROID OR APPLE_FRAMEWORK OR WINRT)
  ocv_module_disable_(julia)
  return()
elseif(BUILD_opencv_world OR (WIN32 AND CMAKE_BUILD_TYPE STREQUAL "Debug"))
  if(NOT DEFINED BUILD_opencv_julia)
    set(__disable_julia ON)
  endif()
endif()

add_subdirectory(bindings)

if(NOT OPENCV_SKIP_JULIA_LOADER)
  include("./julia_loader.cmake")
  message(STATUS "OpenCV Python: during development append to JULIAPATH: ${CMAKE_BINARY_DIR}/julia_loader")
endif()

if(__disable_julia)
  ocv_module_disable_(julia)
endif()

add_subdirectory(julia)

else()  # standalone build

cmake_minimum_required(VERSION 2.8.12)
include("./standalone.cmake")

endif()
