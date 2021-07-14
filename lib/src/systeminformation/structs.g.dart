// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class MEMORYSTATUS extends Struct {
  @Uint32()
  external int dwLength;
  @Uint32()
  external int dwMemoryLoad;
  @IntPtr()
  external int dwTotalPhys;
  @IntPtr()
  external int dwAvailPhys;
  @IntPtr()
  external int dwTotalPageFile;
  @IntPtr()
  external int dwAvailPageFile;
  @IntPtr()
  external int dwTotalVirtual;
  @IntPtr()
  external int dwAvailVirtual;
}

class MEMORYSTATUSEX extends Struct {
  @Uint32()
  external int dwLength;
  @Uint32()
  external int dwMemoryLoad;
  @Uint64()
  external int ullTotalPhys;
  @Uint64()
  external int ullAvailPhys;
  @Uint64()
  external int ullTotalPageFile;
  @Uint64()
  external int ullAvailPageFile;
  @Uint64()
  external int ullTotalVirtual;
  @Uint64()
  external int ullAvailVirtual;
  @Uint64()
  external int ullAvailExtendedVirtual;
}

class OSVERSIONINFOA extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;
  @Array(128)
  external Array<Uint8> szCSDVersion;
}

class OSVERSIONINFOEXA extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;
  @Array(128)
  external Array<Uint8> szCSDVersion;
  @Uint16()
  external int wServicePackMajor;
  @Uint16()
  external int wServicePackMinor;
  @Uint16()
  external int wSuiteMask;
  @Uint8()
  external int wProductType;
  @Uint8()
  external int wReserved;
}

class OSVERSIONINFOEXW extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;
  @Array(128)
  external Array<Uint16> _szCSDVersion;

  String get szCSDVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szCSDVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCSDVersion(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szCSDVersion[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int wServicePackMajor;
  @Uint16()
  external int wServicePackMinor;
  @Uint16()
  external int wSuiteMask;
  @Uint8()
  external int wProductType;
  @Uint8()
  external int wReserved;
}

class OSVERSIONINFOW extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;
  @Array(128)
  external Array<Uint16> _szCSDVersion;

  String get szCSDVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szCSDVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCSDVersion(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szCSDVersion[i] = stringToStore.codeUnitAt(i);
    }
  }
}

class SYSTEM_INFO extends Struct {
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int dwPageSize;
  external Pointer lpMinimumApplicationAddress;
  external Pointer lpMaximumApplicationAddress;
  @IntPtr()
  external int dwActiveProcessorMask;
  @Uint32()
  external int dwNumberOfProcessors;
  @Uint32()
  external int dwProcessorType;
  @Uint32()
  external int dwAllocationGranularity;
  @Uint16()
  external int wProcessorLevel;
  @Uint16()
  external int wProcessorRevision;
}

class SYSTEM_LOGICAL_PROCESSOR_INFORMATION extends Struct {
  @IntPtr()
  external int ProcessorMask;
  @Uint32()
  external int Relationship;
  @Uint32()
  external int Anonymous;
}

class SYSTEM_PROCESSOR_CYCLE_TIME_INFORMATION extends Struct {
  @Uint64()
  external int CycleTime;
}

class WOW64_ARCHITECTURE_INFORMATION extends Struct {
  @Uint32()
  external int _bitfield;
}