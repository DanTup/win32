// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/structs.g.dart';
/// {@category Struct}
class SW_DEVICE_CREATE_INFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> pszInstanceId;
  external Pointer<Utf16> pszzHardwareIds;
  external Pointer<Utf16> pszzCompatibleIds;
  external Pointer<GUID> pContainerId;
  @Uint32() external int CapabilityFlags;
  external Pointer<Utf16> pszDeviceDescription;
  external Pointer<Utf16> pszDeviceLocation;
  external Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor;
}

