add_executable(hashtable_local src/profile/hashtable_local_benchmark.cpp ${APP_ADDITIONAL_SOURCES})
target_include_directories(hashtable_local PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party)

target_link_libraries(hashtable_local hdr_histogram_static gflags numa pthread pc)
target_compile_features(hashtable_local PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(hashtable_local PRIVATE "-flto")
endif()

add_executable(btree_scan_local src/profile/btree_scan_local_benchmark.cpp ${APP_ADDITIONAL_SOURCES})
target_include_directories(btree_scan_local PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party)

target_link_libraries(btree_scan_local hdr_histogram_static gflags numa pthread pc)
target_compile_features(btree_scan_local PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(btree_scan_local PRIVATE "-flto")
endif()

add_executable(btree_agg_local src/profile/btree_agg_local_benchmark.cpp ${APP_ADDITIONAL_SOURCES})
target_include_directories(btree_agg_local PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party)

target_link_libraries(btree_agg_local hdr_histogram_static gflags numa pthread pc)
target_compile_features(btree_agg_local PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(btree_agg_local PRIVATE "-flto")
endif()

add_executable(linked_list_local src/profile/linked_list_local_benchmark.cpp ${APP_ADDITIONAL_SOURCES})
target_include_directories(linked_list_local PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party)

target_link_libraries(linked_list_local hdr_histogram_static gflags numa pthread pc)
target_compile_features(linked_list_local PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(linked_list_local PRIVATE "-flto")
endif()

add_executable(btree_layout_test src/test/btree_scan_layout.cpp ${APP_ADDITIONAL_SOURCES})
target_include_directories(btree_layout_test PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../pulse-lib/src
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party/asio/include
  ${CMAKE_CURRENT_SOURCE_DIR}/../third_party)

target_link_libraries(btree_layout_test hdr_histogram_static gflags numa pthread pc)
target_compile_features(btree_layout_test PRIVATE cxx_std_17)

if(PERF)
  target_compile_options(btree_layout_test PRIVATE "-flto")
endif()