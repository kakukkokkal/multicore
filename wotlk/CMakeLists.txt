include(ExternalProject)
ExternalProject_Add(trinitycore_wotlk
DOWNLOAD_COMMAND ""
CMAKE_ARGS -DTOOLS=1 -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/wotlk/trinitycore
SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/trinitycore
INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/wotlk/trinitycore
)

#ExternalProject_Add(azerothcore-wotlk
#DOWNLOAD_COMMAND ""
#CMAKE_ARGS -DBUILD_TOOLS_MAP=1 -DTOOLS_BUILD=all -DBUILD_TOOLS_DB_IMPORT=1 -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/wotlk/azerothcore
#SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/azerothcore-wotlk
#INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/wotlk/azerothcore
#)

add_custom_target(wotlk)
add_dependencies(wotlk trinitycore_wotlk)