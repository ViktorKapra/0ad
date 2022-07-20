#ifndef NV_CONFIG
#define NV_CONFIG

#if NV_OS_DARWIN && !NV_OS_IOS
#define HAVE_UNISTD_H 0
#else
/* #undef HAVE_UNISTD_H */
#endif
#define HAVE_STDARG_H
#define HAVE_SIGNAL_H
/* #undef HAVE_EXECINFO_H */
#define HAVE_MALLOC_H

/* #undef HAVE_OPENMP */
/* #undef HAVE_DISPATCH_H */

#define HAVE_STBIMAGE
/* #undef HAVE_PNG */
/* #undef HAVE_JPEG */
/* #undef HAVE_TIFF */
/* #undef HAVE_OPENEXR */
/* #undef HAVE_FREEIMAGE */

/* #undef HAVE_MAYA */

#endif // NV_CONFIG
