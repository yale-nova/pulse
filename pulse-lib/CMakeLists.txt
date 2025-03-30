message(STATUS "Compilation optimized for performance.")
message(STATUS "Debugging is disabled.")
set(CMAKE_BUILD_TYPE RelWithDebInfo)
set(TESTING OFF)

if(BUILD_DPDK)
  # Add additional compilation flags only after adding subprojects
  message(STATUS "Building eRPC stack with DPDK support.")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -march=native -Wall -Wextra -Werror -pedantic")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wsign-conversion -Wold-style-cast -Wno-unused-function")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-nested-anon-types -Wno-keyword-macro -Wno-deprecated-declarations")

  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)
  include_directories(SYSTEM ${CMAKE_SOURCE_DIR}/third_party)

  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build)
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build)
  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build)

  # DPDK may be needed for different reasons (e.g., the transport is DPDK, or
  # if the transport is not DPDK but the application needs DPDK libraries)
  set(DPDK_NEEDED "true")

  # Options exposed to the user
  set(TRANSPORT "dpdk" CACHE STRING "Datapath transport (infiniband/raw/dpdk/fake)")
  option(ROCE "Use RoCE if TRANSPORT is infiniband" OFF)
  option(AZURE "Configure DPDK for Azure if TRANSPORT is dpdk" OFF)
  option(PERF "Compile for performance" ON)
  set(PGO "none" CACHE STRING "Profile-guided optimization (generate/use/none)")
  set(LOG_LEVEL "warn" CACHE STRING "Logging level (none/error/warn/info/reorder/trace/cc)")

  # Profile-guided optimization
  if(PGO STREQUAL "generate")
    message(STATUS "Profile-guided optimization (generate mode) is enabled. Performance will be low.")
    add_definitions(-fprofile-generate)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fprofile-generate")
  elseif(PGO STREQUAL "use")
    message(STATUS "Profile-guided optimization (use mode) is enabled.")
    add_definitions(-fprofile-use -fprofile-correction)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fprofile-use -fprofile-correction")
  elseif(PGO STREQUAL "none")
    message(STATUS "Profile-guided optimization is disabled.")
  endif()

  # Logging level
  if(LOG_LEVEL STREQUAL "none")
    message(STATUS "Logging level = none.")
    add_definitions(-DERPC_LOG_LEVEL=0)
  elseif(LOG_LEVEL STREQUAL "error")
    message(STATUS "Logging level = error.")
    add_definitions(-DERPC_LOG_LEVEL=1)
  elseif(LOG_LEVEL STREQUAL "warn")
    message(STATUS "Logging level = warn.")
    add_definitions(-DERPC_LOG_LEVEL=2)
  elseif(LOG_LEVEL STREQUAL "info")
    message(STATUS "Logging level = info.")
    add_definitions(-DERPC_LOG_LEVEL=3)
  elseif(LOG_LEVEL STREQUAL "reorder")
    message(STATUS "Logging level = reorder. Warning: Performance will be low.")
    add_definitions(-DERPC_LOG_LEVEL=4)
  elseif(LOG_LEVEL STREQUAL "trace")
    message(STATUS "Logging level = trace. Trace, on! Warning: Performance will be low.")
    add_definitions(-DERPC_LOG_LEVEL=5)
  elseif(LOG_LEVEL STREQUAL "cc")
    message(STATUS "Logging level = cc. Warning: Performance will be low.")
    add_definitions(-DERPC_LOG_LEVEL=6)
  else()
    message(STATUS "No logging level specified. Using warning level.")
    add_definitions(-DERPC_LOG_LEVEL=2)
  endif()

  # Testing for packet loss, machine failure, etc
  if(TESTING)
    message(STATUS "Testing is enabled. Performance will be low.")
    add_definitions(-DERPC_TESTING=true)
  else(TESTING)
    message(STATUS "Testing is disabled, so tests may fail.")
    add_definitions(-DERPC_TESTING=false)
  endif(TESTING)

  set(SOURCES
    src/erpc/nexus_impl/nexus.cc
    src/erpc/nexus_impl/nexus_bg_thread.cc
    src/erpc/nexus_impl/nexus_sm_thread.cc
    src/erpc/rpc_impl/rpc.cc
    src/erpc/rpc_impl/rpc_queues.cc
    src/erpc/rpc_impl/rpc_rfr.cc
    src/erpc/rpc_impl/rpc_cr.cc
    src/erpc/rpc_impl/rpc_kick.cc
    src/erpc/rpc_impl/rpc_req.cc
    src/erpc/rpc_impl/rpc_resp.cc
    src/erpc/rpc_impl/rpc_ev_loop.cc
    src/erpc/rpc_impl/rpc_fault_inject.cc
    src/erpc/rpc_impl/rpc_pkt_loss.cc
    src/erpc/rpc_impl/rpc_rx.cc
    src/erpc/rpc_impl/rpc_connect_handlers.cc
    src/erpc/rpc_impl/rpc_disconnect_handlers.cc
    src/erpc/rpc_impl/rpc_reset_handlers.cc
    src/erpc/rpc_impl/rpc_sm_api.cc
    src/erpc/rpc_impl/rpc_sm_helpers.cc
    src/erpc/transport_impl/transport.cc
    src/erpc/transport_impl/dpdk/dpdk_transport.cc
    src/erpc/transport_impl/dpdk/dpdk_init.cc
    src/erpc/transport_impl/dpdk/dpdk_externs.cc
    src/erpc/transport_impl/dpdk/dpdk_transport_datapath.cc
    src/erpc/transport_impl/infiniband/ib_transport.cc
    src/erpc/transport_impl/infiniband/ib_transport_datapath.cc
    src/erpc/transport_impl/raw/raw_transport.cc
    src/erpc/transport_impl/raw/raw_transport_datapath.cc
    src/erpc/transport_impl/fake/fake_transport.cc
    src/erpc/util/huge_alloc.cc
    src/erpc/util/numautils.cc
    src/erpc/util/tls_registry.cc)

  add_definitions(-DERPC_DPDK=true)
  set(CONFIG_TRANSPORT "DpdkTransport")
  set(CONFIG_TRANSPORT "DpdkTransport")
  set(CONFIG_IS_ROCE false)
  set(CONFIG_IS_AZURE false)
  set(CONFIG_HEADROOM 40)
  set(DPDK_NEEDED "true") # We'll resolve DPDK later

  # Generate config.h
  configure_file(src/erpc/config.h.in src/erpc/config.h)
  include_directories(${CMAKE_CURRENT_BINARY_DIR}/src/erpc
    ${CMAKE_CURRENT_SOURCE_DIR}/src/erpc)

  message(STATUS "DPDK needed to build eRPC")

  # Linux

  # # DPDK installs libraries into local/lib on Mariner, but
  # # local/lib/x86_64-linux-gnu on Ubuntu
  # set(DPDK_LIB_DIR "${DPDK_INSTALL_DIR}/lib/x86_64-linux-gnu")
  # if(NOT EXISTS ${DPDK_LIB_DIR})
  # set(DPDK_LIB_DIR "${DPDK_INSTALL_DIR}/lib")
  # if(NOT EXISTS ${DPDK_LIB_DIR})
  # message(FATAL_ERROR "${DPDK_LIB_DIR} not found. Did you run `ninja install`?")
  # endif()
  # endif()
  set(LIBRARIES ${LIBRARIES} ${LIBDPDK_LIBRARIES})

  link_directories(${DPDK_LIB_DIR})
  include_directories(SYSTEM ${DPDK_INSTALL_DIR}/include)

  set(LIBRARIES ${LIBRARIES} gflags hdr_histogram_static)
  set(LIBRARIES ${LIBRARIES} rt numa pthread)

  # Compile the library
  add_library(erpc ${SOURCES})

  if(DPDK_NEEDED STREQUAL "true")
    # Build the eRPC DPDK management daemon for Linux only
    add_executable(erpc_dpdk_daemon
      src/erpc/transport_impl/dpdk/dpdk_daemon.cc
      src/erpc/transport_impl/dpdk/dpdk_externs.cc
      src/erpc/transport_impl/dpdk/dpdk_init.cc)
    target_link_libraries(erpc_dpdk_daemon ${LIBRARIES})
  endif()

  # Compile the tests
  if(TESTING)
    set(LIBRARIES ${LIBRARIES} gtest)

    # End-to-end tests with an RPC server and client
    set(CLIENT_TESTS
      create_session_test
      destroy_session_test
      small_msg_test
      large_msg_test
      req_in_cont_func_test
      req_in_req_func_test
      packet_loss_test

      # server_failure_test
      multi_process_test)

    foreach(test_name IN LISTS CLIENT_TESTS)
      add_executable(${test_name} tests/client_tests/${test_name}.cc)
      target_link_libraries(${test_name} erpc ${LIBRARIES})
      add_test(NAME ${test_name} COMMAND ${test_name})
    endforeach()

    # Tests for internal eRPC protocol implementation
    set(PROTOCOL_TESTS
      rpc_sm_test
      rpc_list_test
      rpc_req_test
      rpc_resp_test
      rpc_cr_test
      rpc_rfr_test
      rpc_kick_test)

    foreach(test_name IN LISTS PROTOCOL_TESTS)
      add_executable(${test_name} tests/protocol_tests/${test_name}.cc)
      target_link_libraries(${test_name} erpc ${LIBRARIES})
      add_test(NAME ${test_name} COMMAND ${test_name})
    endforeach()

    # Tests for the transport backend implementation
    if(TRANSPORT STREQUAL "raw")
      set(TRANSPORT_TESTS
        raw_transport_test)
    endif()

    if(TRANSPORT STREQUAL "dpdk")
      set(TRANSPORT_TESTS
        dpdk_ownership_memzone_test)
    endif()

    foreach(test_name IN LISTS TRANSPORT_TESTS)
      add_executable(${test_name} tests/transport_tests/${test_name}.cc)
      target_link_libraries(${test_name} erpc ${LIBRARIES})
      add_test(NAME ${test_name} COMMAND ${test_name})
    endforeach()

    # Utils that depend on liberpc. These tests are not run using ctest.
    set(UTIL_TESTS_DEP
      huge_alloc_test
      timing_wheel_test)

    foreach(test_name IN LISTS UTIL_TESTS_DEP)
      add_executable(${test_name} tests/util_tests/${test_name}.cc)
      target_link_libraries(${test_name} erpc ${LIBRARIES})
    endforeach()

    # Utils that don't depend on liberpc. These tests are not run using ctest.
    set(UTIL_TESTS_INDEP
      heartbeat_mgr_test
      rand_test
      misc_test
      fixed_vector_test
      timely_test
      numautil_test
      hdr_histogram_test
      udp_client_test
      udp_server_test)

    # Non-Windows tests
    if(NOT WIN32)
      set(UTIL_TESTS_INDEP ${UTIL_TESTS_INDEP}
        hugepage_caching_virt2phy_test)
    endif()

    foreach(test_name IN LISTS UTIL_TESTS_INDEP)
      add_executable(${test_name} tests/util_tests/${test_name}.cc)
      target_link_libraries(${test_name} erpc ${LIBRARIES})
    endforeach()
  endif()
endif()

# PULSE data structures
include_directories(
  ${CMAKE_CURRENT_SOURCE_DIR}/src/ds
  ${CMAKE_CURRENT_SOURCE_DIR}/src/
  ${DPDK_INCLUDE_DIRS})

add_library(pc OBJECT
  src/ds/datastructure/bplustree.h
  src/ds/datastructure/bplustree.cc
  src/ds/datastructure/partitionedbplustree.h
  src/ds/datastructure/hashtable.h
  src/ds/datastructure/list.h
  src/ds/parser/rpc_parse.cpp
  src/ds/parser/rpc_parse.h
  src/ds/parser/parse.h
  src/ds/utils/logger.cpp
  src/ds/utils/logger.h
  src/ds/serde/bplustree_serde.h
  src/ds/serde/bplustree_serde.cc
  src/ds/serde/hashtable_serde.h
  src/ds/serde/slab_allocator.h
  src/cache/pulse_cache.h
  src/cache/pulse_cache.cc)

# target_link_libraries(pc ${LIBDPDK_LIBRARIES})
target_link_libraries(pc pthread dl rt m numa)
set_target_properties(pc PROPERTIES LINKER_LANGUAGE CXX)

# Enable C++ 17 here
# https://stackoverflow.com/questions/45688522/how-to-enable-c17-in-cmake
target_compile_features(pc PRIVATE cxx_std_17)

install(TARGETS pc
  RUNTIME DESTINATION bin
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib)
install(DIRECTORY src/pc
  DESTINATION include
  FILES_MATCHING PATTERN "*.h")
