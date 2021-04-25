// IGamepadStatics.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import '../winrt/winrt_constants.dart';

import 'IInspectable.dart';

/// @nodoc
const IID_IGamepadStatics = '{8BBCE529-D49C-39E9-9560-E47DDE96B7C8}';

typedef _add_GamepadAdded_Native = Int32 Function(
    Pointer obj, Pointer value, Pointer<Uint32> result);
typedef _add_GamepadAdded_Dart = int Function(
    Pointer obj, Pointer value, Pointer<Uint32> result);

typedef _remove_GamepadAdded_Native = Int32 Function(Pointer obj, Uint32 token);
typedef _remove_GamepadAdded_Dart = int Function(Pointer obj, int token);

typedef _add_GamepadRemoved_Native = Int32 Function(
    Pointer obj, Pointer value, Pointer<Uint32> result);
typedef _add_GamepadRemoved_Dart = int Function(
    Pointer obj, Pointer value, Pointer<Uint32> result);

typedef _remove_GamepadRemoved_Native = Int32 Function(
    Pointer obj, Uint32 token);
typedef _remove_GamepadRemoved_Dart = int Function(Pointer obj, int token);

typedef _get_Gamepads_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_Gamepads_Dart = int Function(Pointer obj, Pointer<Pointer> value);

/// {@category Interface}
/// {@category winrt}
class IGamepadStatics extends IInspectable {
  // vtable begins at 6, ends at 10

  IGamepadStatics(Pointer<COMObject> ptr) : super(ptr);

  int add_GamepadAdded(Pointer value, Pointer<Uint32> result) =>
      Pointer<NativeFunction<_add_GamepadAdded_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_add_GamepadAdded_Dart>()(ptr.ref.lpVtbl, value, result);

  int remove_GamepadAdded(int token) =>
      Pointer<NativeFunction<_remove_GamepadAdded_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_remove_GamepadAdded_Dart>()(ptr.ref.lpVtbl, token);

  int add_GamepadRemoved(Pointer value, Pointer<Uint32> result) =>
      Pointer<NativeFunction<_add_GamepadRemoved_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_add_GamepadRemoved_Dart>()(
          ptr.ref.lpVtbl, value, result);

  int remove_GamepadRemoved(int token) =>
      Pointer<NativeFunction<_remove_GamepadRemoved_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_remove_GamepadRemoved_Dart>()(ptr.ref.lpVtbl, token);

  Pointer get Gamepads {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = Pointer<NativeFunction<_get_Gamepads_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_get_Gamepads_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}