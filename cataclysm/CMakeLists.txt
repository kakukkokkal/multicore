include(ExternalProject)
ExternalProject_Add(trinitycore_cata
DOWNLOAD_COMMAND ""
CMAKE_ARGS -DTOOLS=1  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/cata/trinitycore
SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/trinitycore
INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/cata/trinitycore
)

add_custom_target(cataclysm)
add_dependencies(cataclysm trinitycore_cata)