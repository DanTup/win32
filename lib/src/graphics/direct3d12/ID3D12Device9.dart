// ID3D12Device9.dart

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

import '../../graphics/direct3d12/ID3D12Device8.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';
/// @nodoc
const IID_ID3D12Device9 = '{4C80E962-F032-4F60-BC9E-EBC2CFA1D83C}';

typedef _CreateShaderCacheSession_Native = Int32 Function(
  Pointer,
  Pointer<D3D12_SHADER_CACHE_SESSION_DESC> pDesc, 
  Pointer<GUID> riid, 
  Pointer<Pointer> ppvSession
);
typedef _CreateShaderCacheSession_Dart = int Function(
  Pointer,
  Pointer<D3D12_SHADER_CACHE_SESSION_DESC> pDesc, 
  Pointer<GUID> riid, 
  Pointer<Pointer> ppvSession
);

typedef _ShaderCacheControl_Native = Int32 Function(
  Pointer,
  Uint32 Kinds, 
  Uint32 Control
);
typedef _ShaderCacheControl_Dart = int Function(
  Pointer,
  int Kinds, 
  int Control
);

typedef _CreateCommandQueue1_Native = Int32 Function(
  Pointer,
  Pointer<D3D12_COMMAND_QUEUE_DESC> pDesc, 
  Pointer<GUID> CreatorID, 
  Pointer<GUID> riid, 
  Pointer<Pointer> ppCommandQueue
);
typedef _CreateCommandQueue1_Dart = int Function(
  Pointer,
  Pointer<D3D12_COMMAND_QUEUE_DESC> pDesc, 
  Pointer<GUID> CreatorID, 
  Pointer<GUID> riid, 
  Pointer<Pointer> ppCommandQueue
);

/// {@category Interface}
/// {@category com}
class ID3D12Device9 extends ID3D12Device8 {
  // vtable begins at 73, ends at 75

   ID3D12Device9(Pointer<COMObject> ptr) : super(ptr);

  int CreateShaderCacheSession(Pointer<D3D12_SHADER_CACHE_SESSION_DESC> pDesc, Pointer<GUID> riid, Pointer<Pointer> ppvSession) => ptr.ref.lpVtbl.value      .elementAt(73)
      .cast<Pointer<NativeFunction<_CreateShaderCacheSession_Native>>>()
      .value
      .asFunction<_CreateShaderCacheSession_Dart>()(ptr.ref.lpVtbl, pDesc, riid, ppvSession);

  int ShaderCacheControl(int Kinds, int Control) => ptr.ref.lpVtbl.value      .elementAt(74)
      .cast<Pointer<NativeFunction<_ShaderCacheControl_Native>>>()
      .value
      .asFunction<_ShaderCacheControl_Dart>()(ptr.ref.lpVtbl, Kinds, Control);

  int CreateCommandQueue1(Pointer<D3D12_COMMAND_QUEUE_DESC> pDesc, Pointer<GUID> CreatorID, Pointer<GUID> riid, Pointer<Pointer> ppCommandQueue) => ptr.ref.lpVtbl.value      .elementAt(75)
      .cast<Pointer<NativeFunction<_CreateCommandQueue1_Native>>>()
      .value
      .asFunction<_CreateCommandQueue1_Dart>()(ptr.ref.lpVtbl, pDesc, CreatorID, riid, ppCommandQueue);

}


