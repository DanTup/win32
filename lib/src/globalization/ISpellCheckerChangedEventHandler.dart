// ISpellCheckerChangedEventHandler.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/IUnknown.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../utils.dart';
import '../globalization/structs.g.dart';
import '../foundation/structs.g.dart';
/// @nodoc
const IID_ISpellCheckerChangedEventHandler = '{0B83A5B0-792F-4EAB-9799-ACF52C5ED08A}';

typedef _Invoke_Native = Int32 Function(
  Pointer,
  COMObject sender
);
typedef _Invoke_Dart = int Function(
  Pointer,
  COMObject sender
);

/// {@category Interface}
/// {@category com}
class ISpellCheckerChangedEventHandler extends IUnknown {
  // vtable begins at 3, ends at 3

   ISpellCheckerChangedEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int Invoke(COMObject sender) => ptr.ref.lpVtbl.value      .elementAt(3)
      .cast<Pointer<NativeFunction<_Invoke_Native>>>()
      .value
      .asFunction<_Invoke_Dart>()(ptr.ref.lpVtbl, sender);

}


