# Install script for directory: D:/Libraries/PVR/3rdParty/OpenImageIO/src

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "user")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE FILES
    "D:/Libraries/PVR/3rdParty/boost_1_44/lib/boost_date_time-vc90-mt-1_38.dll"
    "D:/Libraries/PVR/3rdParty/boost_1_44/lib/boost_filesystem-vc90-mt-1_38.dll"
    "D:/Libraries/PVR/3rdParty/boost_1_44/lib/boost_regex-vc90-mt-1_38.dll"
    "D:/Libraries/PVR/3rdParty/boost_1_44/lib/boost_system-vc90-mt-1_38.dll"
    "D:/Libraries/PVR/3rdParty/boost_1_44/lib/boost_thread-vc90-mt-1_38.dll"
    "/QtCore4.dll"
    "/QtGui4.dll"
    "/QtOpenGL4.dll"
    "D:\Libraries\PVR\3rdParty/ilmbase-1.0.3/lib/Imath.dll"
    "D:\Libraries\PVR\3rdParty/ilmbase-1.0.3/lib/Half.dll"
    "D:\Libraries\PVR\3rdParty/ilmbase-1.0.3/lib/IlmThread.dll"
    "D:\Libraries\PVR\3rdParty/ilmbase-1.0.3/lib/Iex.dll"
    "D:\Libraries\PVR\3rdParty/openexr-1.7.1/lib/IlmImf.dll"
    "D:\Libraries\PVR\3rdParty\external\zlib-1.2.3\include/../lib/zlib1.dll"
    "D:/Libraries/PVR/3rdParty/external/libpng-1.2.3/include/../lib/libpng13.dll"
    "D:/Libraries/PVR/3rdParty/external/tiff-3.8.2/include/../lib/libtiff.dll"
    "/../lib/glew32.dll"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "user")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES
    "C:/Program Files (x86)/Microsoft Visual Studio 10.0/VC/redist/x86/Microsoft.VC100.CRT/msvcp100.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio 10.0/VC/redist/x86/Microsoft.VC100.CRT/msvcr100.dll"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/libOpenImageIO/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/iconvert/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/idiff/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/igrep/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/iinfo/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/maketx/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/oiiotool/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/testtex/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/iv/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/python/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/include/cmake_install.cmake")
  INCLUDE("D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/doc/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "D:/Libraries/PVR/3rdParty/OpenImageIO/src/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
