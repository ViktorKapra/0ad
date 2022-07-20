# Install script for directory: E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/aes.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/aesni.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/arc4.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/asn1.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/asn1write.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/base64.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/bignum.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/blowfish.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/bn_mul.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/camellia.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ccm.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/certs.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/check_config.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/cipher.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/cipher_internal.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/compat-1.3.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/config.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ctr_drbg.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/debug.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/des.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/dhm.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ecdh.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ecdsa.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ecjpake.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ecp.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/entropy.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/entropy_poll.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/error.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/gcm.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/havege.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/hmac_drbg.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/md.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/md2.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/md4.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/md5.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/md_internal.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/net.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/oid.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/padlock.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/pem.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/pk.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/pk_internal.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/pkcs11.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/pkcs12.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/pkcs5.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/platform.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ripemd160.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/rsa.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/sha1.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/sha256.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/sha512.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ssl.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ssl_cache.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ssl_cookie.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ssl_internal.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/ssl_ticket.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/threading.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/timing.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/version.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/x509.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/x509_crl.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/x509_crt.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/x509_csr.h"
    "E:/New folder/0ad/build/premake/premake5/contrib/mbedtls/include/mbedtls/xtea.h"
    )
endif()

