cmake_minimum_required(VERSION 3.5)
project(Pulse)

include(CMakeDependentOption)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

option(BUILD_DPDK "Build with eRPC and DPDK" ON)
option(BUILD_DOCKER "Build Docker swap-based experiments" ON)
option(BUILD_MIND "Build MIND swap-based experiments" OFF)

# Common sub-projects: gtest
set(INSTALL_GTEST OFF)
add_subdirectory(${CMAKE_SOURCE_DIR}/third_party/googletest)
enable_testing()
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

# Common sub-projects: gflags
add_subdirectory(${CMAKE_SOURCE_DIR}/third_party/gflags)

# Common sub-projects: asio
include_directories(SYSTEM ${CMAKE_SOURCE_DIR}/third_party/asio/include)


# Common sub-projects: HdrHistogram
set(HDR_HISTOGRAM_BUILD_PROGRAMS OFF CACHE BOOL "Minimize HDR histogram build")
set(HDR_LOG_REQUIRED OFF CACHE BOOL "Disable HDR histogram's log to avoid zlib dependency")
add_subdirectory(${CMAKE_SOURCE_DIR}/third_party/HdrHistogram_c)

if(BUILD_DPDK)
  add_definitions(-DERPC_DPDK=true)
  if(NOT DEFINED ENV{RTE_SDK})
    message(FATAL "RTE_SDK is not defined")
  else()
    set(RTE_SDK $ENV{RTE_SDK})
  endif()

  set(DPDK_INSTALL_DIR "${RTE_SDK}/build/install/usr/local")
  set(DPDK_LIB_DIR "${DPDK_INSTALL_DIR}/lib/x86_64-linux-gnu")

  # We use some hacky command-line and CMake magic to construct DPDK library list
  execute_process(
    COMMAND bash -c "PKG_CONFIG_PATH=${DPDK_LIB_DIR}/pkgconfig pkg-config --static --libs-only-l libdpdk"
    OUTPUT_VARIABLE DPDK_PKGCONFIG_OUT RESULT_VARIABLE pkgconfig_ret)

  if(pkgconfig_ret EQUAL "1")
    message(FATAL_ERROR "Failed to run pkgconfig on DPDK (in ${DPDK_LIB_DIR}/pkgconfig). See error above.")
  endif()

  string(STRIP ${DPDK_PKGCONFIG_OUT} DPDK_PKGCONFIG_OUT) # Remove newline from pkg-config output
  set(LIBDPDK_LIBRARIES
    "-Wl,--whole-archive -Wl,--as-needed -L${DPDK_LIB_DIR} ${DPDK_PKGCONFIG_OUT} -lpthread -Wl,--no-whole-archive")
endif()

add_subdirectory(pulse-lib)
if(BUILD_DPDK)
  add_subdirectory(apps)
endif()
add_subdirectory(benchmark)
if(BUILD_DOCKER)
  add_subdirectory(docker-swap)
endif()
