// ID3D12Resource2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../com/IUnknown.dart';
import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../graphics/direct3d12/ID3D12Resource1.dart';
import '../../graphics/direct3d12/structs.g.dart';
/// @nodoc
const IID_ID3D12Resource2 = '{BE36EC3B-EA85-4AEB-A45A-E9D76404A495}';

typedef _GetDesc1_Native = D3D12_RESOURCE_DESC1 Function(
  Pointer);
typedef _GetDesc1_Dart = D3D12_RESOURCE_DESC1 Function(
  Pointer);

/// {@category Interface}
/// {@category com}
class ID3D12Resource2 extends ID3D12Resource1 {
  // vtable begins at 16, ends at 16

   ID3D12Resource2(Pointer<COMObject> ptr) : super(ptr);

  D3D12_RESOURCE_DESC1 GetDesc1() => ptr.ref.lpVtbl.value      .elementAt(16)
      .cast<Pointer<NativeFunction<_GetDesc1_Native>>>()
      .value
      .asFunction<_GetDesc1_Dart>()(ptr.ref.lpVtbl);

}


