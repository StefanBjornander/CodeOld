#ifndef __LIMITS_H__
#define __LIMITS_H__

#ifdef __WINDOWS__
  #define CHAR_BIT 8

  #define CHAR_MIN -128S
  #define CHAR_MAX 127S
  #define UCHAR_MAX 255US

  #define SHRT_MIN -128S
  #define SHRT_MAX 127S
  #define USHRT_MAX 255US

  #define INT_MIN -32768
  #define INT_MAX 32767
  #define UINT_MAX 65535U

  #define LONG_MIN -2147483648L
  #define LONG_MAX 2147483647L
  #define ULONG_MAX 4294967295UL
#endif

#ifdef __LINUX__
  #define CHAR_BIT 8

  #define CHAR_MIN -128S
  #define CHAR_MAX 127S
  #define UCHAR_MAX 255US

  #define SHRT_MIN -32768S
  #define SHRT_MAX 32767S
  #define USHRT_MAX 65535US

  #define INT_MIN -2147483648
  #define INT_MAX 2147483647
  #define UINT_MAX 4294967295U

  #define LONG_MIN -9223372036854775808L
  #define LONG_MAX 9223372036854775807L
  #define ULONG_MAX 18446744073709551615UL
#endif

#endif
