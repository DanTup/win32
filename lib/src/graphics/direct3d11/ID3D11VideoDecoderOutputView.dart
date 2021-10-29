// ID3D11VideoDecoderOutputView.dart

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

import '../../graphics/direct3d11/ID3D11View.dart';
import '../../graphics/direct3d11/structs.g.dart';
/// @nodoc
const IID_ID3D11VideoDecoderOutputView = '{C2931AEA-2A85-4F20-860F-FBA1FD256E18}';

typedef _GetDesc_Native = Void Function(
  Pointer,
  Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC> pDesc
);
typedef _GetDesc_Dart = void Function(
  Pointer,
  Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC> pDesc
);

/// {@category Interface}
/// {@category com}
class ID3D11VideoDecoderOutputView extends ID3D11View {
  // vtable begins at 8, ends at 8

   ID3D11VideoDecoderOutputView(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc(Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC> pDesc) => ptr.ref.lpVtbl.value      .elementAt(8)
      .cast<Pointer<NativeFunction<_GetDesc_Native>>>()
      .value
      .asFunction<_GetDesc_Dart>()(ptr.ref.lpVtbl, pDesc);

}


