# Install script for directory: E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/programs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/out/install/x64-Debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/out/build/x64-Debug/programs/aes/cmake_install.cmake")
  include("E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/out/build/x64-Debug/programs/hash/cmake_install.cmake")
  include("E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/out/build/x64-Debug/programs/pkey/cmake_install.cmake")
  include("E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/out/build/x64-Debug/programs/random/cmake_install.cmake")
  include("E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/out/build/x64-Debug/programs/ssl/cmake_install.cmake")
  include("E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/out/build/x64-Debug/programs/test/cmake_install.cmake")
  include("E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/out/build/x64-Debug/programs/x509/cmake_install.cmake")
  include("E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/out/build/x64-Debug/programs/util/cmake_install.cmake")

endif()

