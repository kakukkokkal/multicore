include(ExternalProject)
ExternalProject_Add(bfacore_reforged
DOWNLOAD_COMMAND ""
CMAKE_ARGS -DTOOLS=1  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/bfa/bfacore-reforged
SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/BfaCore-Reforged
INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/bfa/bfacore-reforged
)


add_custom_target(bfa)
add_dependencies(bfa bfacore_reforged)