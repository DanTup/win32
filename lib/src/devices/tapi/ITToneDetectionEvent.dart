// ITToneDetectionEvent.dart

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

import '../../system/ole/automation/IDispatch.dart';
import '../../devices/tapi/structs.g.dart';
import '../../foundation/structs.g.dart';
/// @nodoc
const IID_ITToneDetectionEvent = '{407E0FAF-D047-4753-B0C6-8E060373FECD}';

typedef _get_Call_Native = Int32 Function(
  Pointer,
  Pointer<COMObject> );
typedef _get_Call_Dart = int Function(
  Pointer,
  Pointer<COMObject> );

typedef _get_AppSpecific_Native = Int32 Function(
  Pointer,
  Pointer<Int32> );
typedef _get_AppSpecific_Dart = int Function(
  Pointer,
  Pointer<Int32> );

typedef _get_TickCount_Native = Int32 Function(
  Pointer,
  Pointer<Int32> );
typedef _get_TickCount_Dart = int Function(
  Pointer,
  Pointer<Int32> );

typedef _get_CallbackInstance_Native = Int32 Function(
  Pointer,
  Pointer<Int32> );
typedef _get_CallbackInstance_Dart = int Function(
  Pointer,
  Pointer<Int32> );

/// {@category Interface}
/// {@category com}
class ITToneDetectionEvent extends IDispatch {
  // vtable begins at 7, ends at 10

   ITToneDetectionEvent(Pointer<COMObject> ptr) : super(ptr);

    COMObject get Call {
      final retValuePtr = calloc<COMObject>();
      
      try {
        final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_get_Call_Native>>>()
          .value
          .asFunction<_get_Call_Dart>()(ptr.ref.lpVtbl, retValuePtr);

        if (FAILED(hr)) throw WindowsException(hr);

        final retValue = retValuePtr.value;
        return retValue;
      } finally {
        free(retValuePtr);
      }
    }

    int get AppSpecific {
      final retValuePtr = calloc<Int32>();
      
      try {
        final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<Pointer<NativeFunction<_get_AppSpecific_Native>>>()
          .value
          .asFunction<_get_AppSpecific_Dart>()(ptr.ref.lpVtbl, retValuePtr);

        if (FAILED(hr)) throw WindowsException(hr);

        final retValue = retValuePtr.value;
        return retValue;
      } finally {
        free(retValuePtr);
      }
    }

    int get TickCount {
      final retValuePtr = calloc<Int32>();
      
      try {
        final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<Pointer<NativeFunction<_get_TickCount_Native>>>()
          .value
          .asFunction<_get_TickCount_Dart>()(ptr.ref.lpVtbl, retValuePtr);

        if (FAILED(hr)) throw WindowsException(hr);

        final retValue = retValuePtr.value;
        return retValue;
      } finally {
        free(retValuePtr);
      }
    }

    int get CallbackInstance {
      final retValuePtr = calloc<Int32>();
      
      try {
        final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<Pointer<NativeFunction<_get_CallbackInstance_Native>>>()
          .value
          .asFunction<_get_CallbackInstance_Dart>()(ptr.ref.lpVtbl, retValuePtr);

        if (FAILED(hr)) throw WindowsException(hr);

        final retValue = retValuePtr.value;
        return retValue;
      } finally {
        free(retValuePtr);
      }
    }

}


