// IConnectionPointContainer.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
/// @nodoc
const IID_IConnectionPointContainer = '{B196B284-BAB4-101A-B69C-00AA00341D07}';

typedef _EnumConnectionPoints_Native = Int32 Function(
  Pointer,
  Pointer<COMObject> ppEnum
);
typedef _EnumConnectionPoints_Dart = int Function(
  Pointer,
  Pointer<COMObject> ppEnum
);

typedef _FindConnectionPoint_Native = Int32 Function(
  Pointer,
  Pointer<GUID> riid, 
  Pointer<COMObject> ppCP
);
typedef _FindConnectionPoint_Dart = int Function(
  Pointer,
  Pointer<GUID> riid, 
  Pointer<COMObject> ppCP
);

/// {@category Interface}
/// {@category com}
class IConnectionPointContainer extends IUnknown {
  // vtable begins at 3, ends at 4

   IConnectionPointContainer(Pointer<COMObject> ptr) : super(ptr);

  int EnumConnectionPoints(Pointer<COMObject> ppEnum) => ptr.ref.lpVtbl.value      .elementAt(3)
      .cast<Pointer<NativeFunction<_EnumConnectionPoints_Native>>>()
      .value
      .asFunction<_EnumConnectionPoints_Dart>()(ptr.ref.lpVtbl, ppEnum);

  int FindConnectionPoint(Pointer<GUID> riid, Pointer<COMObject> ppCP) => ptr.ref.lpVtbl.value      .elementAt(4)
      .cast<Pointer<NativeFunction<_FindConnectionPoint_Native>>>()
      .value
      .asFunction<_FindConnectionPoint_Dart>()(ptr.ref.lpVtbl, riid, ppCP);

}


