// IMLangCodePages.dart

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
import '../foundation/structs.g.dart';
/// @nodoc
const IID_IMLangCodePages = '{359F3443-BD4A-11D0-B188-00AA0038C969}';

typedef _GetCharCodePages_Native = Int32 Function(
  Pointer,
  Uint16 chSrc, 
  Pointer<Uint32> pdwCodePages
);
typedef _GetCharCodePages_Dart = int Function(
  Pointer,
  int chSrc, 
  Pointer<Uint32> pdwCodePages
);

typedef _GetStrCodePages_Native = Int32 Function(
  Pointer,
  Pointer<Utf16> pszSrc, 
  Int32 cchSrc, 
  Uint32 dwPriorityCodePages, 
  Pointer<Uint32> pdwCodePages, 
  Pointer<Int32> pcchCodePages
);
typedef _GetStrCodePages_Dart = int Function(
  Pointer,
  Pointer<Utf16> pszSrc, 
  int cchSrc, 
  int dwPriorityCodePages, 
  Pointer<Uint32> pdwCodePages, 
  Pointer<Int32> pcchCodePages
);

typedef _CodePageToCodePages_Native = Int32 Function(
  Pointer,
  Uint32 uCodePage, 
  Pointer<Uint32> pdwCodePages
);
typedef _CodePageToCodePages_Dart = int Function(
  Pointer,
  int uCodePage, 
  Pointer<Uint32> pdwCodePages
);

typedef _CodePagesToCodePage_Native = Int32 Function(
  Pointer,
  Uint32 dwCodePages, 
  Uint32 uDefaultCodePage, 
  Pointer<Uint32> puCodePage
);
typedef _CodePagesToCodePage_Dart = int Function(
  Pointer,
  int dwCodePages, 
  int uDefaultCodePage, 
  Pointer<Uint32> puCodePage
);

/// {@category Interface}
/// {@category com}
class IMLangCodePages extends IUnknown {
  // vtable begins at 3, ends at 6

   IMLangCodePages(Pointer<COMObject> ptr) : super(ptr);

  int GetCharCodePages(int chSrc, Pointer<Uint32> pdwCodePages) => ptr.ref.lpVtbl.value      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetCharCodePages_Native>>>()
      .value
      .asFunction<_GetCharCodePages_Dart>()(ptr.ref.lpVtbl, chSrc, pdwCodePages);

  int GetStrCodePages(Pointer<Utf16> pszSrc, int cchSrc, int dwPriorityCodePages, Pointer<Uint32> pdwCodePages, Pointer<Int32> pcchCodePages) => ptr.ref.lpVtbl.value      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetStrCodePages_Native>>>()
      .value
      .asFunction<_GetStrCodePages_Dart>()(ptr.ref.lpVtbl, pszSrc, cchSrc, dwPriorityCodePages, pdwCodePages, pcchCodePages);

  int CodePageToCodePages(int uCodePage, Pointer<Uint32> pdwCodePages) => ptr.ref.lpVtbl.value      .elementAt(5)
      .cast<Pointer<NativeFunction<_CodePageToCodePages_Native>>>()
      .value
      .asFunction<_CodePageToCodePages_Dart>()(ptr.ref.lpVtbl, uCodePage, pdwCodePages);

  int CodePagesToCodePage(int dwCodePages, int uDefaultCodePage, Pointer<Uint32> puCodePage) => ptr.ref.lpVtbl.value      .elementAt(6)
      .cast<Pointer<NativeFunction<_CodePagesToCodePage_Native>>>()
      .value
      .asFunction<_CodePagesToCodePage_Dart>()(ptr.ref.lpVtbl, dwCodePages, uDefaultCodePage, puCodePage);

}


