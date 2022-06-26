include(ExternalProject)
ExternalProject_Add(skyfire
DOWNLOAD_COMMAND ""
CMAKE_ARGS -DTOOLS=1  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/pandaria/skyfire
SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/SkyFire_548
INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/pandaria/skyfire
)

include(ExternalProject)
ExternalProject_Add(pandariacore
DOWNLOAD_COMMAND ""
CMAKE_ARGS -DTOOLS=1  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/pandaria/pandaria
SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/pandaria_5.4.8
INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/pandaria/pandaria
)

include(ExternalProject)
ExternalProject_Add(torghast
DOWNLOAD_COMMAND ""
CMAKE_ARGS -DTOOLS=1  -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}/pandaria/torghast
SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/torghast-project-5.4.8
INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/pandaria/torghast
)

add_custom_target(pandaria)
add_dependencies(pandaria skyfire pandariacore torghast)