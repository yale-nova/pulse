# WebService

add_executable(webservice_single webservice/webservice_single.cc ${APP_ADDITIONAL_SOURCES})
target_include_directories(webservice_single PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party
  ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src/erpc
  ${CMAKE_CURRENT_BINARY_DIR}/../pulse-lib/src/erpc
  ${DPDK_INSTALL_DIR}/include)

target_link_libraries(webservice_single hdr_histogram_static gflags erpc numa pthread ${LIBDPDK_LIBRARIES} pc cryptopp snappy)
target_compile_features(webservice_single PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(webservice_single PRIVATE "-flto")
endif()

add_executable(webservice_multiple webservice/webservice_multiple.cc ${APP_ADDITIONAL_SOURCES})
target_include_directories(webservice_multiple PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party
  ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src/erpc
  ${CMAKE_CURRENT_BINARY_DIR}/../pulse-lib/src/erpc
  ${DPDK_INSTALL_DIR}/include)

target_link_libraries(webservice_multiple hdr_histogram_static gflags erpc numa pthread ${LIBDPDK_LIBRARIES} pc cryptopp snappy)
target_compile_features(webservice_multiple PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(webservice_multiple PRIVATE "-flto")
endif()

# WiredTiger
if(NOT DEFINED ENV{WT_SDK})
  message(FATAL "WT_SDK is not defined. Cannot locate WiredTiger")
else()
  set(WT_SDK $ENV{WT_SDK})
  set(WT_INCLUDE_DIR "${WT_SDK}/build/install/include")
  set(WT_LIB_DIR "${WT_SDK}/build/install/lib")
  find_library(WIREDTIGER_LIBRARY wiredtiger PATHS ${WT_LIB_DIR})
  include_directories(${WT_INCLUDE_DIR})

  add_executable(wiredtiger_single wiredtiger/wiredtiger_single.cc ${APP_ADDITIONAL_SOURCES})
  target_include_directories(wiredtiger_single PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
    ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
    ${CMAKE_CURRENT_SOURCE_DIR}/../third_party
    ${CMAKE_CURRENT_SOURCE_DIR}/../docker-swap/wiredtiger
    ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src/erpc
    ${CMAKE_CURRENT_BINARY_DIR}/../pulse-lib/src/erpc
    ${DPDK_INSTALL_DIR}/include
    ${WT_INCLUDE_DIR})

  target_link_libraries(wiredtiger_single hdr_histogram_static gflags erpc numa pthread ${WIREDTIGER_LIBRARY} ${LIBDPDK_LIBRARIES} pc)
  target_compile_features(wiredtiger_single PRIVATE cxx_std_17)

  if(PERF)
    target_compile_options(wiredtiger_single PRIVATE "-flto")
  endif()

  add_executable(wiredtiger_multiple wiredtiger/wiredtiger_multiple.cc ${APP_ADDITIONAL_SOURCES})
  target_include_directories(wiredtiger_multiple PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
    ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
    ${CMAKE_CURRENT_SOURCE_DIR}/../third_party
    ${CMAKE_CURRENT_SOURCE_DIR}/../docker-swap/wiredtiger
    ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src/erpc
    ${CMAKE_CURRENT_BINARY_DIR}/../pulse-lib/src/erpc
    ${DPDK_INSTALL_DIR}/include
    ${WT_INCLUDE_DIR})

  target_link_libraries(wiredtiger_multiple hdr_histogram_static gflags erpc numa pthread ${WIREDTIGER_LIBRARY} ${LIBDPDK_LIBRARIES} pc)
  target_compile_features(wiredtiger_multiple PRIVATE cxx_std_17)

  if(PERF)
    target_compile_options(wiredtiger_multiple PRIVATE "-flto")
  endif()
endif()


# BtrDB
add_executable(btrdb_single btrdb/btrdb_single.cc ${APP_ADDITIONAL_SOURCES})
target_include_directories(btrdb_single PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party
  ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src/erpc
  ${CMAKE_CURRENT_BINARY_DIR}/../pulse-lib/src/erpc
  ${DPDK_INSTALL_DIR}/include)

target_link_libraries(btrdb_single hdr_histogram_static gflags erpc numa pthread ${LIBDPDK_LIBRARIES} pc)
target_compile_features(btrdb_single PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(btrdb_single PRIVATE "-flto")
endif()

add_executable(btrdb_multiple btrdb/btrdb_multiple.cc ${APP_ADDITIONAL_SOURCES})
target_include_directories(btrdb_multiple PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party
  ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src/erpc
  ${CMAKE_CURRENT_BINARY_DIR}/../pulse-lib/src/erpc
  ${DPDK_INSTALL_DIR}/include)

target_link_libraries(btrdb_multiple hdr_histogram_static gflags erpc numa pthread ${LIBDPDK_LIBRARIES} pc)
target_compile_features(btrdb_multiple PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(btrdb_multiple PRIVATE "-flto")
endif()


# End-to-end network latency test
add_executable(latency latency/latency.cc ${APP_ADDITIONAL_SOURCES})
target_include_directories(latency PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party
  ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src/erpc
  ${CMAKE_CURRENT_BINARY_DIR}/../pulse-lib/src/erpc
  ${DPDK_INSTALL_DIR}/include)

target_link_libraries(latency hdr_histogram_static gflags erpc numa pthread ${LIBDPDK_LIBRARIES} pc)
target_compile_features(latency PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(latency PRIVATE "-flto")
endif()
