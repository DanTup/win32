// IEnumSpellingError.dart

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
const IID_IEnumSpellingError = '{803E3BD4-2828-4410-8290-418D1D73C762}';

typedef _Next_Native = Int32 Function(
  Pointer,
  Pointer<COMObject> value
);
typedef _Next_Dart = int Function(
  Pointer,
  Pointer<COMObject> value
);

/// {@category Interface}
/// {@category com}
class IEnumSpellingError extends IUnknown {
  // vtable begins at 3, ends at 3

   IEnumSpellingError(Pointer<COMObject> ptr) : super(ptr);

  int Next(Pointer<COMObject> value) => ptr.ref.lpVtbl.value      .elementAt(3)
      .cast<Pointer<NativeFunction<_Next_Native>>>()
      .value
      .asFunction<_Next_Dart>()(ptr.ref.lpVtbl, value);

}


