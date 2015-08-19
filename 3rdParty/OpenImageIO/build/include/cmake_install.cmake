# Install script for directory: D:/Libraries/PVR/3rdParty/OpenImageIO/src/include

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/OpenImageIO")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "developer")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenImageIO" TYPE FILE FILES
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/argparse.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/color.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/dassert.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/errorhandler.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/export.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/filesystem.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/filter.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/fmath.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/hash.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/imagebuf.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/imagebufalgo.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/imagecache.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/imageio.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/optparser.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/osdep.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/paramlist.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/plugin.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/refcnt.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/strutil.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/sysutil.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/texture.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/thread.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/timer.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/tinyformat.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/typedesc.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/ustring.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/varyingref.h"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/pugixml.hpp"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/include/pugiconfig.hpp"
    "D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/include/version.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "developer")

