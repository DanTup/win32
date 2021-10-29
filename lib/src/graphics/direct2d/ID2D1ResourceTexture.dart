// ID2D1ResourceTexture.dart

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
import '../../foundation/structs.g.dart';
/// @nodoc
const IID_ID2D1ResourceTexture = '{688D15C3-02B0-438D-B13A-D1B44C32C39A}';

typedef _Update_Native = Int32 Function(
  Pointer,
  Pointer<Uint32> minimumExtents, 
  Pointer<Uint32> maximimumExtents, 
  Pointer<Uint32> strides, 
  Uint32 dimensions, 
  Pointer<Uint8> data, 
  Uint32 dataCount
);
typedef _Update_Dart = int Function(
  Pointer,
  Pointer<Uint32> minimumExtents, 
  Pointer<Uint32> maximimumExtents, 
  Pointer<Uint32> strides, 
  int dimensions, 
  Pointer<Uint8> data, 
  int dataCount
);

/// {@category Interface}
/// {@category com}
class ID2D1ResourceTexture extends IUnknown {
  // vtable begins at 3, ends at 3

   ID2D1ResourceTexture(Pointer<COMObject> ptr) : super(ptr);

  int Update(Pointer<Uint32> minimumExtents, Pointer<Uint32> maximimumExtents, Pointer<Uint32> strides, int dimensions, Pointer<Uint8> data, int dataCount) => ptr.ref.lpVtbl.value      .elementAt(3)
      .cast<Pointer<NativeFunction<_Update_Native>>>()
      .value
      .asFunction<_Update_Dart>()(ptr.ref.lpVtbl, minimumExtents, maximimumExtents, strides, dimensions, data, dataCount);

}


