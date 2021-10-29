// IClassFactory.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
/// @nodoc
const IID_IClassFactory = '{00000001-0000-0000-C000-000000000046}';

typedef _CreateInstance_Native = Int32 Function(
  Pointer,
  COMObject pUnkOuter, 
  Pointer<GUID> riid, 
  Pointer<Pointer> ppvObject
);
typedef _CreateInstance_Dart = int Function(
  Pointer,
  COMObject pUnkOuter, 
  Pointer<GUID> riid, 
  Pointer<Pointer> ppvObject
);

typedef _LockServer_Native = Int32 Function(
  Pointer,
  Int32 fLock
);
typedef _LockServer_Dart = int Function(
  Pointer,
  int fLock
);

/// {@category Interface}
/// {@category com}
class IClassFactory extends IUnknown {
  // vtable begins at 3, ends at 4

   IClassFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(COMObject pUnkOuter, Pointer<GUID> riid, Pointer<Pointer> ppvObject) => ptr.ref.lpVtbl.value      .elementAt(3)
      .cast<Pointer<NativeFunction<_CreateInstance_Native>>>()
      .value
      .asFunction<_CreateInstance_Dart>()(ptr.ref.lpVtbl, pUnkOuter, riid, ppvObject);

  int LockServer(int fLock) => ptr.ref.lpVtbl.value      .elementAt(4)
      .cast<Pointer<NativeFunction<_LockServer_Native>>>()
      .value
      .asFunction<_LockServer_Dart>()(ptr.ref.lpVtbl, fLock);

}


