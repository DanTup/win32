// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../devices/imageacquisition/IWiaItem.dart';
import '../../devices/imageacquisition/IWiaItem2.dart';
import '../../devices/imageacquisition/IWiaMiniDrvCallBack.dart';
import '../../devices/imageacquisition/structs.g.dart';
/// {@category Struct}
class DEVICEDIALOGDATA extends Struct {
  @Uint32() external int cbSize;
  @IntPtr() external int hwndParent;
  external COMObject pIWiaItemRoot;
  @Uint32() external int dwFlags;
  @Int32() external int lIntent;
  @Int32() external int lItemCount;
  external Pointer<COMObject> ppWiaItems;
}

/// {@category Struct}
class DEVICEDIALOGDATA2 extends Struct {
  @Uint32() external int cbSize;
  external COMObject pIWiaItemRoot;
  @Uint32() external int dwFlags;
  @IntPtr() external int hwndParent;
  external Pointer<Utf16> bstrFolderName;
  external Pointer<Utf16> bstrFilename;
  @Int32() external int lNumFiles;
  external Pointer<Pointer<Utf16>> pbstrFilePaths;
  external COMObject pWiaItem;
}

/// {@category Struct}
class MINIDRV_TRANSFER_CONTEXT extends Struct {
  @Int32() external int lSize;
  @Int32() external int lWidthInPixels;
  @Int32() external int lLines;
  @Int32() external int lDepth;
  @Int32() external int lXRes;
  @Int32() external int lYRes;
  @Int32() external int lCompression;
  external GUID guidFormatID;
  @Int32() external int tymed;
  @IntPtr() external int hFile;
  @Int32() external int cbOffset;
  @Int32() external int lBufferSize;
  @Int32() external int lActiveBuffer;
  @Int32() external int lNumBuffers;
  external Pointer<Uint8> pBaseBuffer;
  external Pointer<Uint8> pTransferBuffer;
  @Int32() external int bTransferDataCB;
  @Int32() external int bClassDrvAllocBuf;
  @IntPtr() external int lClientAddress;
  external COMObject pIWiaMiniDrvCallBack;
  @Int32() external int lImageSize;
  @Int32() external int lHeaderSize;
  @Int32() external int lItemSize;
  @Int32() external int cbWidthInBytes;
  @Int32() external int lPage;
  @Int32() external int lCurIfdOffset;
  @Int32() external int lPrevIfdOffset;
}

/// {@category Struct}
class RANGEVALUE extends Struct {
  @Int32() external int lMin;
  @Int32() external int lMax;
  @Int32() external int lStep;
}

/// {@category Struct}
class SCANINFO extends Struct {
  @Int32() external int ADF;
  @Int32() external int TPA;
  @Int32() external int Endorser;
  @Int32() external int OpticalXResolution;
  @Int32() external int OpticalYResolution;
  @Int32() external int BedWidth;
  @Int32() external int BedHeight;
  external RANGEVALUE IntensityRange;
  external RANGEVALUE ContrastRange;
  @Int32() external int SupportedCompressionType;
  @Int32() external int SupportedDataTypes;
  @Int32() external int WidthPixels;
  @Int32() external int WidthBytes;
  @Int32() external int Lines;
  @Int32() external int DataType;
  @Int32() external int PixelBits;
  @Int32() external int Intensity;
  @Int32() external int Contrast;
  @Int32() external int Xresolution;
  @Int32() external int Yresolution;
  external SCANWINDO Window;
  @Int32() external int DitherPattern;
  @Int32() external int Negative;
  @Int32() external int Mirror;
  @Int32() external int AutoBack;
  @Int32() external int ColorDitherPattern;
  @Int32() external int ToneMap;
  @Int32() external int Compression;
  @Int32() external int RawDataFormat;
  @Int32() external int RawPixelOrder;
  @Int32() external int bNeedDataAlignment;
  @Int32() external int DelayBetweenRead;
  @Int32() external int MaxBufferSize;
  @Array(16)
  external Array<IntPtr> DeviceIOHandles;
  @Array(4)
  external Array<Int32> lReserved;
  external Pointer pMicroDriverContext;
}

/// {@category Struct}
class SCANWINDO extends Struct {
  @Int32() external int xPos;
  @Int32() external int yPos;
  @Int32() external int xExtent;
  @Int32() external int yExtent;
}

/// {@category Struct}
class TWAIN_CAPABILITY extends Struct {
  @Int32() external int lSize;
  @Int32() external int lMSG;
  @Int32() external int lCapID;
  @Int32() external int lConType;
  @Int32() external int lRC;
  @Int32() external int lCC;
  @Int32() external int lDataSize;
  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class VAL extends Struct {
  @Int32() external int lVal;
  @Double() external double dblVal;
  external Pointer<GUID> pGuid;
  external Pointer<SCANINFO> pScanInfo;
  @IntPtr() external int handle;
  external Pointer<Pointer<Uint16>> ppButtonNames;
  external Pointer<IntPtr> pHandle;
  @Int32() external int lReserved;
  @Array(255)
  external Array<Uint8> szVal;
}

/// {@category Struct}
class WIAS_CHANGED_VALUE_INFO extends Struct {
  @Int32() external int bChanged;
  @Int32() external int vt;
  @Uint32() external int Old;
  @Uint32() external int Current;
}

/// {@category Struct}
class WIAS_DOWN_SAMPLE_INFO extends Struct {
  @Uint32() external int ulOriginalWidth;
  @Uint32() external int ulOriginalHeight;
  @Uint32() external int ulBitsPerPixel;
  @Uint32() external int ulXRes;
  @Uint32() external int ulYRes;
  @Uint32() external int ulDownSampledWidth;
  @Uint32() external int ulDownSampledHeight;
  @Uint32() external int ulActualSize;
  @Uint32() external int ulDestBufSize;
  @Uint32() external int ulSrcBufSize;
  external Pointer<Uint8> pSrcBuffer;
  external Pointer<Uint8> pDestBuffer;
}

/// {@category Struct}
class WIAS_ENDORSER_INFO extends Struct {
  @Uint32() external int ulPageCount;
  @Uint32() external int ulNumEndorserValues;
  external Pointer<WIAS_ENDORSER_VALUE> pEndorserValues;
}

/// {@category Struct}
class WIAS_ENDORSER_VALUE extends Struct {
  external Pointer<Utf16> wszTokenName;
  external Pointer<Utf16> wszValue;
}

/// {@category Struct}
class WIA_BARCODES extends Struct {
  @Uint32() external int Tag;
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Count;
  @Array(1)
  external Array<WIA_BARCODE_INFO> Barcodes;
}

/// {@category Struct}
class WIA_BARCODE_INFO extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Type;
  @Uint32() external int Page;
  @Uint32() external int Confidence;
  @Uint32() external int XOffset;
  @Uint32() external int YOffset;
  @Uint32() external int Rotation;
  @Uint32() external int Length;
  @Array(1)
  external Array<Uint16> _Text;

  String get Text {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Text[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Text(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Text[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WIA_DATA_CALLBACK_HEADER extends Struct {
  @Int32() external int lSize;
  external GUID guidFormatID;
  @Int32() external int lBufferSize;
  @Int32() external int lPageCount;
}

/// {@category Struct}
class WIA_DATA_TRANSFER_INFO extends Struct {
  @Uint32() external int ulSize;
  @Uint32() external int ulSection;
  @Uint32() external int ulBufferSize;
  @Int32() external int bDoubleBuffer;
  @Uint32() external int ulReserved1;
  @Uint32() external int ulReserved2;
  @Uint32() external int ulReserved3;
}

/// {@category Struct}
class WIA_DEV_CAP extends Struct {
  external GUID guid;
  @Uint32() external int ulFlags;
  external Pointer<Utf16> bstrName;
  external Pointer<Utf16> bstrDescription;
  external Pointer<Utf16> bstrIcon;
  external Pointer<Utf16> bstrCommandline;
}

/// {@category Struct}
class WIA_DEV_CAP_DRV extends Struct {
  external Pointer<GUID> guid;
  @Uint32() external int ulFlags;
  external Pointer<Utf16> wszName;
  external Pointer<Utf16> wszDescription;
  external Pointer<Utf16> wszIcon;
}

/// {@category Struct}
class WIA_DITHER_PATTERN_DATA extends Struct {
  @Int32() external int lSize;
  external Pointer<Utf16> bstrPatternName;
  @Int32() external int lPatternWidth;
  @Int32() external int lPatternLength;
  @Int32() external int cbPattern;
  external Pointer<Uint8> pbPattern;
}

/// {@category Struct}
class WIA_EXTENDED_TRANSFER_INFO extends Struct {
  @Uint32() external int ulSize;
  @Uint32() external int ulMinBufferSize;
  @Uint32() external int ulOptimalBufferSize;
  @Uint32() external int ulMaxBufferSize;
  @Uint32() external int ulNumBuffers;
}

/// {@category Struct}
class WIA_FORMAT_INFO extends Struct {
  external GUID guidFormatID;
  @Int32() external int lTymed;
}

/// {@category Struct}
class WIA_MICR extends Struct {
  @Uint32() external int Tag;
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint16() external int Placeholder;
  @Uint16() external int Reserved;
  @Uint32() external int Count;
  @Array(1)
  external Array<WIA_MICR_INFO> Micr;
}

/// {@category Struct}
class WIA_MICR_INFO extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Page;
  @Uint32() external int Length;
  @Array(1)
  external Array<Uint16> _Text;

  String get Text {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Text[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Text(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Text[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WIA_PATCH_CODES extends Struct {
  @Uint32() external int Tag;
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Count;
  @Array(1)
  external Array<WIA_PATCH_CODE_INFO> PatchCodes;
}

/// {@category Struct}
class WIA_PATCH_CODE_INFO extends Struct {
  @Uint32() external int Type;
}

/// {@category Struct}
class WIA_PROPERTY_CONTEXT extends Struct {
  @Uint32() external int cProps;
  external Pointer<Uint32> pProps;
  external Pointer<Int32> pChanged;
}

/// {@category Struct}
class WIA_PROPERTY_INFO extends Struct {
  @Uint32() external int lAccessFlags;
  @Uint16() external int vt;
  @Uint32() external int ValidVal;
}

/// {@category Struct}
class WIA_PROPID_TO_NAME extends Struct {
  @Uint32() external int propid;
  external Pointer<Utf16> pszName;
}

/// {@category Struct}
class WIA_RAW_HEADER extends Struct {
  @Uint32() external int Tag;
  @Uint32() external int Version;
  @Uint32() external int HeaderSize;
  @Uint32() external int XRes;
  @Uint32() external int YRes;
  @Uint32() external int XExtent;
  @Uint32() external int YExtent;
  @Uint32() external int BytesPerLine;
  @Uint32() external int BitsPerPixel;
  @Uint32() external int ChannelsPerPixel;
  @Uint32() external int DataType;
  @Array(8)
  external Array<Uint8> BitsPerChannel;
  @Uint32() external int Compression;
  @Uint32() external int PhotometricInterp;
  @Uint32() external int LineOrder;
  @Uint32() external int RawDataOffset;
  @Uint32() external int RawDataSize;
  @Uint32() external int PaletteOffset;
  @Uint32() external int PaletteSize;
}

/// {@category Struct}
class WiaTransferParams extends Struct {
  @Int32() external int lMessage;
  @Int32() external int lPercentComplete;
  @Uint64() external int ulTransferredBytes;
  @Int32() external int hrErrorStatus;
}

