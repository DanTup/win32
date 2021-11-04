// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Contains the data classes for the representation of interfaces, methods and
// parameters, as well as the logic necessary to emit a Dart language
// representation (a projection) of the underlying API.

import 'package:winmd/winmd.dart';

import 'class.dart';
import 'classprojector.dart';
import 'method.dart';

class TypePrinter {
  // TODO: Remove params check when
  // https://github.com/microsoft/win32metadata/issues/707 is fixed
  static bool treatAsGetProperty(
          MethodProjection methodProjection, String parentClassName) =>
      methodProjection.method.isGetProperty &&
      methodProjection.method.parameters.isNotEmpty;

  static bool treatAsSetProperty(
          MethodProjection methodProjection, String parentClassName) =>
      methodProjection.method.isSetProperty &&
      methodProjection.method.parameters.isNotEmpty;

  static String headerAsString(ClassProjection type) {
    final buffer = StringBuffer();
    buffer.writeln('''
// ${type.shortName}.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
''');

    buffer.writeln('''
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';
''');
    if (type.sourceType == SourceType.winrt) {
      buffer.writeln('''
import '../winrt/winrt_constants.dart';
''');
    }

    if (type.inherits != '') {
      buffer.writeln("import '${type.inherits}.dart';");
    }
    return buffer.toString();
  }

  static String guidConstantsAsString(ClassProjection type) {
    final buffer = StringBuffer();
    if (type.generateClass) {
      buffer.writeln('/// @nodoc');
      buffer.writeln(
          "const CLSID_${type.className} = '${type.clsid.toString()}';");
    }
    buffer.writeln('/// @nodoc');
    buffer.writeln("const IID_${type.shortName} = '${type.iid.toString()}';\n");
    return buffer.toString();
  }

  static String typedefsAsString(ClassProjection type) {
    final buffer = StringBuffer();
    for (final methodProjection in type.methods) {
      // Native typedef
      buffer.writeln(
          'typedef _${methodProjection.name}_Native = ${methodProjection.returnType.nativeType} Function(');
      buffer.write('  Pointer');
      if (methodProjection.parameters.isNotEmpty) {
        buffer.writeln(',');
      }
      // TODO: Remove params check when https://github.com/microsoft/win32metadata/issues/707 is fixed
      if (treatAsGetProperty(methodProjection, type.name)) {
        buffer.write(
            '  Pointer<${methodProjection.parameters.first.type.nativeType}> ${methodProjection.parameters.first.name}');
      } else {
        for (var idx = 0; idx < methodProjection.parameters.length; idx++) {
          buffer.write(
              '  ${methodProjection.parameters[idx].type.nativeType} ${methodProjection.parameters[idx].name}');
          if (idx < methodProjection.parameters.length - 1) buffer.write(', ');
          buffer.writeln();
        }
      }
      buffer.writeln(');');

      // Dart typedef
      buffer.writeln(
          'typedef _${methodProjection.name}_Dart = ${methodProjection.returnType.dartType} Function(');
      buffer.write('  Pointer');
      if (methodProjection.parameters.isNotEmpty) {
        buffer.writeln(',');
      }
      if (treatAsGetProperty(methodProjection, type.name)) {
        buffer.write(
            '  Pointer<${methodProjection.parameters.first.type.nativeType}> ${methodProjection.parameters.first.name}');
      } else {
        for (var idx = 0; idx < methodProjection.parameters.length; idx++) {
          buffer.write(
              '  ${methodProjection.parameters[idx].type.dartType} ${methodProjection.parameters[idx].name}');
          if (idx < methodProjection.parameters.length - 1) buffer.write(', ');
          buffer.writeln();
        }
      }
      buffer.writeln(');');
      buffer.writeln();
    }

    return buffer.toString();
  }

  static String interfaceAsString(ClassProjection type) {
    final buffer = StringBuffer();
    var vtableIndex = type.vtableStart;

    buffer.writeln('/// {@category Interface}');
    if (type.sourceType == SourceType.winrt) {
      buffer.writeln('/// {@category winrt}');
    } else {
      buffer.writeln('/// {@category com}');
    }
    if (type.inherits == '') {
      buffer.writeln('class ${type.shortNameWithGenericSpecifier} {');
    } else {
      buffer.writeln(
          'class ${type.shortNameWithGenericSpecifier} extends ${type.inherits} {');
    }

    buffer.writeln('''
  // vtable begins at ${type.vtableStart}, ends at ${type.vtableStart + type.methods.length - 1}
''');
    if (type.inherits.isNotEmpty) {
      buffer.write('''
   ${type.shortName}(Pointer<COMObject> ptr) : super(ptr);\n
''');
    } else {
      buffer.write('''
  Pointer<COMObject> ptr;

   ${type.shortName}(this.ptr);\n
''');
    }

    for (final method in type.methods) {
      if (treatAsGetProperty(method, type.name)) {
        buffer.write(dartGetProperty(method, vtableIndex));
      } else if (treatAsSetProperty(method, type.name)) {
        buffer.write(dartSetProperty(method, vtableIndex));
      } else {
        buffer.write(method.toString());
      }

      // Always increment vtable even if we don't generate method
      vtableIndex++;
    }
    buffer.writeln('}\n\n');

    return buffer.toString();
  }

  static String dartGetProperty(MethodProjection method, int? vtableIndex) {
    final buffer = StringBuffer();

    // strip off all underscores, even if double underscores
    final exposedMethodName = method.name.startsWith('get__')
        ? method.name.substring(5)
        : method.name.substring(4);

    final convertBool = method.parameters.first.type.dartType == 'bool';

    buffer.writeln('''
    ${method.parameters.first.type.dartType} get $exposedMethodName {
      final retValuePtr = calloc<${method.parameters.first.type.nativeType}>();
      
      try {
        final hr = ptr.ref.lpVtbl.value
          .elementAt($vtableIndex)
          .cast<Pointer<NativeFunction<_${method.name}_Native>>>()
          .value
          .asFunction<_${method.name}_Dart>()(ptr.ref.lpVtbl, retValuePtr);

        if (FAILED(hr)) throw WindowsException(hr);

        final retValue = retValuePtr.value;
        return ${convertBool ? 'retValue == 0' : 'retValue'};
      } finally {
        free(retValuePtr);
      }
    }
''');
    return buffer.toString();
  }

  static String dartSetProperty(MethodProjection method, int? vtableIndex) {
    final buffer = StringBuffer();

    buffer.writeln('''
  set ${method.name.substring(4)}(${method.parameters.first.type.dartType} value) {
    final hr = ptr.ref.lpVtbl.value
          .elementAt($vtableIndex)
          .cast<Pointer<NativeFunction<_${method.name}_Native>>>()
          .value
          .asFunction<_${method.name}_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
''');
    return buffer.toString();
  }

  static String classAsString(ClassProjection type) {
    final interfaceWithoutNamespace = type.name.split('.').last;

    if (type.generateClass) {
      final buffer = StringBuffer();

      if (type.sourceType == SourceType.winrt) {
        buffer.writeln('/// {@category winrt}');
      } else {
        buffer.writeln('/// {@category com}');
      }
      buffer.write('''
class ${type.className} extends $interfaceWithoutNamespace {
  ${type.className}(Pointer<COMObject> ptr) : super(ptr);

  factory ${type.className}.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_${type.className});
    final iid = calloc<GUID>()..ref.setGUID(IID_$interfaceWithoutNamespace);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ${type.className}(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
''');
      return buffer.toString();
    } else {
      return '';
    }
  }

  static String classTestsAsString(ClassProjection projection) {
    final interfaceName = projection.shortName;
    final dartClassName = interfaceName.substring(1).toLowerCase();

    final buffer = StringBuffer();
    buffer.write('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final $dartClassName = $interfaceName(ptr);
''');

    for (final methodProjection in projection.methods) {
      if (!methodProjection.method.isGetProperty &&
          !methodProjection.method.isSetProperty) {
        buffer.write('''
        test('Can instantiate $interfaceName.${methodProjection.name}', () {
          expect($dartClassName.${methodProjection.name}, isA<Function>());
          });
          ''');
      }
    }

    buffer.write('''
  free(ptr);
  }''');

    return buffer.toString();
  }

  static String printClass(TypeDef typeDef) =>
      printProjection(ClassProjector(typeDef).projection);

  static String printProjection(ClassProjection projection,
          {bool excludeHeader = false}) =>
      '${excludeHeader ? "" : headerAsString(projection)}'
      '${guidConstantsAsString(projection)}'
      '${typedefsAsString(projection)}'
      '${interfaceAsString(projection)}'
      '${classAsString(projection)}';

  static String printTests(ClassProjection projection) =>
      classTestsAsString(projection);
}
