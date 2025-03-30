add_executable(webservice_docker webservice/webservice.cc)
target_include_directories(webservice_docker PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party)

target_link_libraries(webservice_docker hdr_histogram_static gflags numa pthread pc cryptopp snappy)
target_compile_features(webservice_docker PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(webservice_docker PRIVATE "-flto")
endif()

if(NOT DEFINED ENV{WT_SDK})
  message(FATAL " WT_SDK is not defined. Cannot locate WiredTiger")
else()
  set(WT_SDK $ENV{WT_SDK})
  set(WT_INCLUDE_DIR "${WT_SDK}/build/install/include")
  set(WT_LIB_DIR "${WT_SDK}/build/install/lib")
  find_library(WIREDTIGER_LIBRARY wiredtiger PATHS ${WT_LIB_DIR})
  include_directories(${WT_INCLUDE_DIR})

  add_executable(wiredtiger_orig_docker wiredtiger/wiredtiger_orig.cc ${APP_ADDITIONAL_SOURCES})
  target_include_directories(wiredtiger_orig_docker PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
    ${WT_INCLUDE_DIR})

  target_link_libraries(wiredtiger_orig_docker hdr_histogram_static gflags numa pthread ${WIREDTIGER_LIBRARY} pc)
  target_compile_features(wiredtiger_orig_docker PRIVATE cxx_std_17)

  if(PERF)
    target_compile_options(wiredtiger_orig_docker PRIVATE "-flto")
  endif()

  add_executable(wiredtiger_docker wiredtiger/wiredtiger.cc ${APP_ADDITIONAL_SOURCES})
  target_include_directories(wiredtiger_docker PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
    ${WT_INCLUDE_DIR})

  target_link_libraries(wiredtiger_docker hdr_histogram_static gflags numa pthread ${WIREDTIGER_LIBRARY} pc)
  target_compile_features(wiredtiger_docker PRIVATE cxx_std_17)

  if(PERF)
    target_compile_options(wiredtiger_docker PRIVATE "-flto")
  endif()
endif()

# BTrDB
add_subdirectory(../third_party/pybind11 pybind11)
add_executable(btrdb_docker btrdb/btrdb_frontend.cc ${APP_ADDITIONAL_SOURCES})
target_include_directories(btrdb_docker PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src)

# ../third_party/pybind11/include)
target_link_libraries(btrdb_docker hdr_histogram_static gflags numa pthread pc pybind11::embed)
target_compile_features(btrdb_docker PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(btrdb_docker PRIVATE "-flto")
endif()
