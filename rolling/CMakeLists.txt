include(ExternalProject)
ExternalProject_Add(trinitycore_rolling
DOWNLOAD_COMMAND ""
CMAKE_ARGS -DTOOLS=1  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/trinitycore-rolling
SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/trinitycore
INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/trinitycore-rolling
)

ExternalProject_Add(loa_sl
DOWNLOAD_COMMAND ""
CMAKE_ARGS -DTOOLS=1  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/loa_sl
SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/Legends-of-Azeroth-Legends-of-Azeroth-Shadowlands
INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/loa_sl
)


add_custom_target(rolling)
add_dependencies(rolling trinitycore_rolling loa_sl)