// IStream.dart

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

import '../../system/com/ISequentialStream.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
/// @nodoc
const IID_IStream = '{0000000C-0000-0000-C000-000000000046}';

typedef _Seek_Native = Int32 Function(
  Pointer,
  Int64 dlibMove, 
  Uint32 dwOrigin, 
  Pointer<Uint64> plibNewPosition
);
typedef _Seek_Dart = int Function(
  Pointer,
  int dlibMove, 
  int dwOrigin, 
  Pointer<Uint64> plibNewPosition
);

typedef _SetSize_Native = Int32 Function(
  Pointer,
  Uint64 libNewSize
);
typedef _SetSize_Dart = int Function(
  Pointer,
  int libNewSize
);

typedef _CopyTo_Native = Int32 Function(
  Pointer,
  COMObject pstm, 
  Uint64 cb, 
  Pointer<Uint64> pcbRead, 
  Pointer<Uint64> pcbWritten
);
typedef _CopyTo_Dart = int Function(
  Pointer,
  COMObject pstm, 
  int cb, 
  Pointer<Uint64> pcbRead, 
  Pointer<Uint64> pcbWritten
);

typedef _Commit_Native = Int32 Function(
  Pointer,
  Uint32 grfCommitFlags
);
typedef _Commit_Dart = int Function(
  Pointer,
  int grfCommitFlags
);

typedef _Revert_Native = Int32 Function(
  Pointer);
typedef _Revert_Dart = int Function(
  Pointer);

typedef _LockRegion_Native = Int32 Function(
  Pointer,
  Uint64 libOffset, 
  Uint64 cb, 
  Uint32 dwLockType
);
typedef _LockRegion_Dart = int Function(
  Pointer,
  int libOffset, 
  int cb, 
  int dwLockType
);

typedef _UnlockRegion_Native = Int32 Function(
  Pointer,
  Uint64 libOffset, 
  Uint64 cb, 
  Uint32 dwLockType
);
typedef _UnlockRegion_Dart = int Function(
  Pointer,
  int libOffset, 
  int cb, 
  int dwLockType
);

typedef _Stat_Native = Int32 Function(
  Pointer,
  Pointer<STATSTG> pstatstg, 
  Uint32 grfStatFlag
);
typedef _Stat_Dart = int Function(
  Pointer,
  Pointer<STATSTG> pstatstg, 
  int grfStatFlag
);

typedef _Clone_Native = Int32 Function(
  Pointer,
  Pointer<COMObject> ppstm
);
typedef _Clone_Dart = int Function(
  Pointer,
  Pointer<COMObject> ppstm
);

/// {@category Interface}
/// {@category com}
class IStream extends ISequentialStream {
  // vtable begins at 5, ends at 13

   IStream(Pointer<COMObject> ptr) : super(ptr);

  int Seek(int dlibMove, int dwOrigin, Pointer<Uint64> plibNewPosition) => ptr.ref.lpVtbl.value      .elementAt(5)
      .cast<Pointer<NativeFunction<_Seek_Native>>>()
      .value
      .asFunction<_Seek_Dart>()(ptr.ref.lpVtbl, dlibMove, dwOrigin, plibNewPosition);

  int SetSize(int libNewSize) => ptr.ref.lpVtbl.value      .elementAt(6)
      .cast<Pointer<NativeFunction<_SetSize_Native>>>()
      .value
      .asFunction<_SetSize_Dart>()(ptr.ref.lpVtbl, libNewSize);

  int CopyTo(COMObject pstm, int cb, Pointer<Uint64> pcbRead, Pointer<Uint64> pcbWritten) => ptr.ref.lpVtbl.value      .elementAt(7)
      .cast<Pointer<NativeFunction<_CopyTo_Native>>>()
      .value
      .asFunction<_CopyTo_Dart>()(ptr.ref.lpVtbl, pstm, cb, pcbRead, pcbWritten);

  int Commit(int grfCommitFlags) => ptr.ref.lpVtbl.value      .elementAt(8)
      .cast<Pointer<NativeFunction<_Commit_Native>>>()
      .value
      .asFunction<_Commit_Dart>()(ptr.ref.lpVtbl, grfCommitFlags);

  int Revert() => ptr.ref.lpVtbl.value      .elementAt(9)
      .cast<Pointer<NativeFunction<_Revert_Native>>>()
      .value
      .asFunction<_Revert_Dart>()(ptr.ref.lpVtbl);

  int LockRegion(int libOffset, int cb, int dwLockType) => ptr.ref.lpVtbl.value      .elementAt(10)
      .cast<Pointer<NativeFunction<_LockRegion_Native>>>()
      .value
      .asFunction<_LockRegion_Dart>()(ptr.ref.lpVtbl, libOffset, cb, dwLockType);

  int UnlockRegion(int libOffset, int cb, int dwLockType) => ptr.ref.lpVtbl.value      .elementAt(11)
      .cast<Pointer<NativeFunction<_UnlockRegion_Native>>>()
      .value
      .asFunction<_UnlockRegion_Dart>()(ptr.ref.lpVtbl, libOffset, cb, dwLockType);

  int Stat(Pointer<STATSTG> pstatstg, int grfStatFlag) => ptr.ref.lpVtbl.value      .elementAt(12)
      .cast<Pointer<NativeFunction<_Stat_Native>>>()
      .value
      .asFunction<_Stat_Dart>()(ptr.ref.lpVtbl, pstatstg, grfStatFlag);

  int Clone(Pointer<COMObject> ppstm) => ptr.ref.lpVtbl.value      .elementAt(13)
      .cast<Pointer<NativeFunction<_Clone_Native>>>()
      .value
      .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppstm);

}


