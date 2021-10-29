// IDvdCmd.dart

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
const IID_IDvdCmd = '{5A4A97E4-94EE-4A55-9751-74B5643AA27D}';

typedef _WaitForStart_Native = Int32 Function(
  Pointer);
typedef _WaitForStart_Dart = int Function(
  Pointer);

typedef _WaitForEnd_Native = Int32 Function(
  Pointer);
typedef _WaitForEnd_Dart = int Function(
  Pointer);

/// {@category Interface}
/// {@category com}
class IDvdCmd extends IUnknown {
  // vtable begins at 3, ends at 4

   IDvdCmd(Pointer<COMObject> ptr) : super(ptr);

  int WaitForStart() => ptr.ref.lpVtbl.value      .elementAt(3)
      .cast<Pointer<NativeFunction<_WaitForStart_Native>>>()
      .value
      .asFunction<_WaitForStart_Dart>()(ptr.ref.lpVtbl);

  int WaitForEnd() => ptr.ref.lpVtbl.value      .elementAt(4)
      .cast<Pointer<NativeFunction<_WaitForEnd_Native>>>()
      .value
      .asFunction<_WaitForEnd_Dart>()(ptr.ref.lpVtbl);

}


