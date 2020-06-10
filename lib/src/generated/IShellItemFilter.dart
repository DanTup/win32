// IShellItemFilter.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/generated/IUnknown.dart';

const IID_IShellItemFilter = '{2659B475-EEB8-48b7-8F07-B378810F48CF}';

typedef IncludeItem_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi);
typedef IncludeItem_Dart = int Function(Pointer obj, Pointer<COMObject> psi);

typedef GetEnumFlagsForItem_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> psi, Pointer<Uint32> pgrfFlags);
typedef GetEnumFlagsForItem_Dart = int Function(
    Pointer obj, Pointer<COMObject> psi, Pointer<Uint32> pgrfFlags);

class IShellItemFilter extends IUnknown {
  // vtable begins at 3, ends at 4

  @override
  Pointer<COMObject> ptr;

  IShellItemFilter(this.ptr) : super(ptr);

  int IncludeItem(Pointer<COMObject> psi) =>
      Pointer<NativeFunction<IncludeItem_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<IncludeItem_Dart>()(ptr.ref.lpVtbl, psi);

  int GetEnumFlagsForItem(Pointer<COMObject> psi, Pointer<Uint32> pgrfFlags) =>
      Pointer<NativeFunction<GetEnumFlagsForItem_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<GetEnumFlagsForItem_Dart>()(
          ptr.ref.lpVtbl, psi, pgrfFlags);
}