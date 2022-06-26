project(servers)
cmake_minimum_required(VERSION 3.10)
# set macro-directory
list(APPEND CMAKE_MODULE_PATH
  "${CMAKE_SOURCE_DIR}/cmake")
set(OPENSSL_EXPECTED_VERSION 1.0.0)

find_package(OpenSSL REQUIRED COMPONENTS Crypto SSL)
  
add_subdirectory(wotlk)
add_subdirectory(cataclysm)
add_subdirectory(pandaria)
add_subdirectory(bfa)
add_subdirectory(rolling)
add_custom_target(multicore)
add_dependencies(multicore cataclysm  bfa rolling pandaria wotlk)