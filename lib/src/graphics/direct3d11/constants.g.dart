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

const D3D11_16BIT_INDEX_STRIP_CUT_VALUE = 0xffff;
const D3D11_32BIT_INDEX_STRIP_CUT_VALUE = 0xffffffff;
const D3D11_8BIT_INDEX_STRIP_CUT_VALUE = 0xff;
const D3D11_ARRAY_AXIS_ADDRESS_RANGE_BIT_COUNT = 0x9;
const D3D11_CLIP_OR_CULL_DISTANCE_COUNT = 0x8;
const D3D11_CLIP_OR_CULL_DISTANCE_ELEMENT_COUNT = 0x2;
const D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT = 0xe;
const D3D11_COMMONSHADER_CONSTANT_BUFFER_COMPONENTS = 0x4;
const D3D11_COMMONSHADER_CONSTANT_BUFFER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_COMMONSHADER_CONSTANT_BUFFER_HW_SLOT_COUNT = 0xf;
const D3D11_COMMONSHADER_CONSTANT_BUFFER_PARTIAL_UPDATE_EXTENTS_BYTE_ALIGNMENT = 0x10;
const D3D11_COMMONSHADER_CONSTANT_BUFFER_REGISTER_COMPONENTS = 0x4;
const D3D11_COMMONSHADER_CONSTANT_BUFFER_REGISTER_COUNT = 0xf;
const D3D11_COMMONSHADER_CONSTANT_BUFFER_REGISTER_READS_PER_INST = 0x1;
const D3D11_COMMONSHADER_CONSTANT_BUFFER_REGISTER_READ_PORTS = 0x1;
const D3D11_COMMONSHADER_FLOWCONTROL_NESTING_LIMIT = 0x40;
const D3D11_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_COMPONENTS = 0x4;
const D3D11_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_COUNT = 0x1;
const D3D11_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_READS_PER_INST = 0x1;
const D3D11_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_READ_PORTS = 0x1;
const D3D11_COMMONSHADER_IMMEDIATE_VALUE_COMPONENT_BIT_COUNT = 0x20;
const D3D11_COMMONSHADER_INPUT_RESOURCE_REGISTER_COMPONENTS = 0x1;
const D3D11_COMMONSHADER_INPUT_RESOURCE_REGISTER_COUNT = 0x80;
const D3D11_COMMONSHADER_INPUT_RESOURCE_REGISTER_READS_PER_INST = 0x1;
const D3D11_COMMONSHADER_INPUT_RESOURCE_REGISTER_READ_PORTS = 0x1;
const D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT = 0x80;
const D3D11_COMMONSHADER_SAMPLER_REGISTER_COMPONENTS = 0x1;
const D3D11_COMMONSHADER_SAMPLER_REGISTER_COUNT = 0x10;
const D3D11_COMMONSHADER_SAMPLER_REGISTER_READS_PER_INST = 0x1;
const D3D11_COMMONSHADER_SAMPLER_REGISTER_READ_PORTS = 0x1;
const D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT = 0x10;
const D3D11_COMMONSHADER_SUBROUTINE_NESTING_LIMIT = 0x20;
const D3D11_COMMONSHADER_TEMP_REGISTER_COMPONENTS = 0x4;
const D3D11_COMMONSHADER_TEMP_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_COMMONSHADER_TEMP_REGISTER_COUNT = 0x1000;
const D3D11_COMMONSHADER_TEMP_REGISTER_READS_PER_INST = 0x3;
const D3D11_COMMONSHADER_TEMP_REGISTER_READ_PORTS = 0x3;
const D3D11_COMMONSHADER_TEXCOORD_RANGE_REDUCTION_MAX = 0xa;
const D3D11_COMMONSHADER_TEXCOORD_RANGE_REDUCTION_MIN = 0xfffffff6;
const D3D11_COMMONSHADER_TEXEL_OFFSET_MAX_NEGATIVE = 0xfffffff8;
const D3D11_COMMONSHADER_TEXEL_OFFSET_MAX_POSITIVE = 0x7;
const D3D11_CS_4_X_BUCKET00_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0x100;
const D3D11_CS_4_X_BUCKET00_MAX_NUM_THREADS_PER_GROUP = 0x40;
const D3D11_CS_4_X_BUCKET01_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0xf0;
const D3D11_CS_4_X_BUCKET01_MAX_NUM_THREADS_PER_GROUP = 0x44;
const D3D11_CS_4_X_BUCKET02_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0xe0;
const D3D11_CS_4_X_BUCKET02_MAX_NUM_THREADS_PER_GROUP = 0x48;
const D3D11_CS_4_X_BUCKET03_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0xd0;
const D3D11_CS_4_X_BUCKET03_MAX_NUM_THREADS_PER_GROUP = 0x4c;
const D3D11_CS_4_X_BUCKET04_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0xc0;
const D3D11_CS_4_X_BUCKET04_MAX_NUM_THREADS_PER_GROUP = 0x54;
const D3D11_CS_4_X_BUCKET05_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0xb0;
const D3D11_CS_4_X_BUCKET05_MAX_NUM_THREADS_PER_GROUP = 0x5c;
const D3D11_CS_4_X_BUCKET06_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0xa0;
const D3D11_CS_4_X_BUCKET06_MAX_NUM_THREADS_PER_GROUP = 0x64;
const D3D11_CS_4_X_BUCKET07_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0x90;
const D3D11_CS_4_X_BUCKET07_MAX_NUM_THREADS_PER_GROUP = 0x70;
const D3D11_CS_4_X_BUCKET08_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0x80;
const D3D11_CS_4_X_BUCKET08_MAX_NUM_THREADS_PER_GROUP = 0x80;
const D3D11_CS_4_X_BUCKET09_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0x70;
const D3D11_CS_4_X_BUCKET09_MAX_NUM_THREADS_PER_GROUP = 0x90;
const D3D11_CS_4_X_BUCKET10_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0x60;
const D3D11_CS_4_X_BUCKET10_MAX_NUM_THREADS_PER_GROUP = 0xa8;
const D3D11_CS_4_X_BUCKET11_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0x50;
const D3D11_CS_4_X_BUCKET11_MAX_NUM_THREADS_PER_GROUP = 0xcc;
const D3D11_CS_4_X_BUCKET12_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0x40;
const D3D11_CS_4_X_BUCKET12_MAX_NUM_THREADS_PER_GROUP = 0x100;
const D3D11_CS_4_X_BUCKET13_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0x30;
const D3D11_CS_4_X_BUCKET13_MAX_NUM_THREADS_PER_GROUP = 0x154;
const D3D11_CS_4_X_BUCKET14_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0x20;
const D3D11_CS_4_X_BUCKET14_MAX_NUM_THREADS_PER_GROUP = 0x200;
const D3D11_CS_4_X_BUCKET15_MAX_BYTES_TGSM_WRITABLE_PER_THREAD = 0x10;
const D3D11_CS_4_X_BUCKET15_MAX_NUM_THREADS_PER_GROUP = 0x300;
const D3D11_CS_4_X_DISPATCH_MAX_THREAD_GROUPS_IN_Z_DIMENSION = 0x1;
const D3D11_CS_4_X_RAW_UAV_BYTE_ALIGNMENT = 0x100;
const D3D11_CS_4_X_THREAD_GROUP_MAX_THREADS_PER_GROUP = 0x300;
const D3D11_CS_4_X_THREAD_GROUP_MAX_X = 0x300;
const D3D11_CS_4_X_THREAD_GROUP_MAX_Y = 0x300;
const D3D11_CS_4_X_UAV_REGISTER_COUNT = 0x1;
const D3D11_CS_DISPATCH_MAX_THREAD_GROUPS_PER_DIMENSION = 0xffff;
const D3D11_CS_TGSM_REGISTER_COUNT = 0x2000;
const D3D11_CS_TGSM_REGISTER_READS_PER_INST = 0x1;
const D3D11_CS_TGSM_RESOURCE_REGISTER_COMPONENTS = 0x1;
const D3D11_CS_TGSM_RESOURCE_REGISTER_READ_PORTS = 0x1;
const D3D11_CS_THREADGROUPID_REGISTER_COMPONENTS = 0x3;
const D3D11_CS_THREADGROUPID_REGISTER_COUNT = 0x1;
const D3D11_CS_THREADIDINGROUPFLATTENED_REGISTER_COMPONENTS = 0x1;
const D3D11_CS_THREADIDINGROUPFLATTENED_REGISTER_COUNT = 0x1;
const D3D11_CS_THREADIDINGROUP_REGISTER_COMPONENTS = 0x3;
const D3D11_CS_THREADIDINGROUP_REGISTER_COUNT = 0x1;
const D3D11_CS_THREADID_REGISTER_COMPONENTS = 0x3;
const D3D11_CS_THREADID_REGISTER_COUNT = 0x1;
const D3D11_CS_THREAD_GROUP_MAX_THREADS_PER_GROUP = 0x400;
const D3D11_CS_THREAD_GROUP_MAX_X = 0x400;
const D3D11_CS_THREAD_GROUP_MAX_Y = 0x400;
const D3D11_CS_THREAD_GROUP_MAX_Z = 0x40;
const D3D11_CS_THREAD_GROUP_MIN_X = 0x1;
const D3D11_CS_THREAD_GROUP_MIN_Y = 0x1;
const D3D11_CS_THREAD_GROUP_MIN_Z = 0x1;
const D3D11_CS_THREAD_LOCAL_TEMP_REGISTER_POOL = 0x4000;
const D3D11_DEFAULT_BLEND_FACTOR_ALPHA = 0x3f800000;
const D3D11_DEFAULT_BLEND_FACTOR_BLUE = 0x3f800000;
const D3D11_DEFAULT_BLEND_FACTOR_GREEN = 0x3f800000;
const D3D11_DEFAULT_BLEND_FACTOR_RED = 0x3f800000;
const D3D11_DEFAULT_BORDER_COLOR_COMPONENT = 0x0;
const D3D11_DEFAULT_DEPTH_BIAS = 0x0;
const D3D11_DEFAULT_DEPTH_BIAS_CLAMP = 0x0;
const D3D11_DEFAULT_MAX_ANISOTROPY = 0x10;
const D3D11_DEFAULT_MIP_LOD_BIAS = 0x0;
const D3D11_DEFAULT_RENDER_TARGET_ARRAY_INDEX = 0x0;
const D3D11_DEFAULT_SAMPLE_MASK = 0xffffffff;
const D3D11_DEFAULT_SCISSOR_ENDX = 0x0;
const D3D11_DEFAULT_SCISSOR_ENDY = 0x0;
const D3D11_DEFAULT_SCISSOR_STARTX = 0x0;
const D3D11_DEFAULT_SCISSOR_STARTY = 0x0;
const D3D11_DEFAULT_SLOPE_SCALED_DEPTH_BIAS = 0x0;
const D3D11_DEFAULT_STENCIL_READ_MASK = 0xff;
const D3D11_DEFAULT_STENCIL_REFERENCE = 0x0;
const D3D11_DEFAULT_STENCIL_WRITE_MASK = 0xff;
const D3D11_DEFAULT_VIEWPORT_AND_SCISSORRECT_INDEX = 0x0;
const D3D11_DEFAULT_VIEWPORT_HEIGHT = 0x0;
const D3D11_DEFAULT_VIEWPORT_MAX_DEPTH = 0x0;
const D3D11_DEFAULT_VIEWPORT_MIN_DEPTH = 0x0;
const D3D11_DEFAULT_VIEWPORT_TOPLEFTX = 0x0;
const D3D11_DEFAULT_VIEWPORT_TOPLEFTY = 0x0;
const D3D11_DEFAULT_VIEWPORT_WIDTH = 0x0;
const D3D11_DS_INPUT_CONTROL_POINTS_MAX_TOTAL_SCALARS = 0xf80;
const D3D11_DS_INPUT_CONTROL_POINT_REGISTER_COMPONENTS = 0x4;
const D3D11_DS_INPUT_CONTROL_POINT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_DS_INPUT_CONTROL_POINT_REGISTER_COUNT = 0x20;
const D3D11_DS_INPUT_CONTROL_POINT_REGISTER_READS_PER_INST = 0x2;
const D3D11_DS_INPUT_CONTROL_POINT_REGISTER_READ_PORTS = 0x1;
const D3D11_DS_INPUT_DOMAIN_POINT_REGISTER_COMPONENTS = 0x3;
const D3D11_DS_INPUT_DOMAIN_POINT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_DS_INPUT_DOMAIN_POINT_REGISTER_COUNT = 0x1;
const D3D11_DS_INPUT_DOMAIN_POINT_REGISTER_READS_PER_INST = 0x2;
const D3D11_DS_INPUT_DOMAIN_POINT_REGISTER_READ_PORTS = 0x1;
const D3D11_DS_INPUT_PATCH_CONSTANT_REGISTER_COMPONENTS = 0x4;
const D3D11_DS_INPUT_PATCH_CONSTANT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_DS_INPUT_PATCH_CONSTANT_REGISTER_COUNT = 0x20;
const D3D11_DS_INPUT_PATCH_CONSTANT_REGISTER_READS_PER_INST = 0x2;
const D3D11_DS_INPUT_PATCH_CONSTANT_REGISTER_READ_PORTS = 0x1;
const D3D11_DS_INPUT_PRIMITIVE_ID_REGISTER_COMPONENTS = 0x1;
const D3D11_DS_INPUT_PRIMITIVE_ID_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_DS_INPUT_PRIMITIVE_ID_REGISTER_COUNT = 0x1;
const D3D11_DS_INPUT_PRIMITIVE_ID_REGISTER_READS_PER_INST = 0x2;
const D3D11_DS_INPUT_PRIMITIVE_ID_REGISTER_READ_PORTS = 0x1;
const D3D11_DS_OUTPUT_REGISTER_COMPONENTS = 0x4;
const D3D11_DS_OUTPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_DS_OUTPUT_REGISTER_COUNT = 0x20;
const D3D11_FLOAT16_FUSED_TOLERANCE_IN_ULP = 0x33333333;
const D3D11_FLOAT32_MAX = 0x7f7fffff;
const D3D11_FLOAT32_TO_INTEGER_TOLERANCE_IN_ULP = 0x3f19999a;
const D3D11_FLOAT_TO_SRGB_EXPONENT_DENOMINATOR = 0x4019999a;
const D3D11_FLOAT_TO_SRGB_EXPONENT_NUMERATOR = 0x3f800000;
const D3D11_FLOAT_TO_SRGB_OFFSET = 0x3d6147ae;
const D3D11_FLOAT_TO_SRGB_SCALE_1 = 0x414eb852;
const D3D11_FLOAT_TO_SRGB_SCALE_2 = 0x3f870a3d;
const D3D11_FLOAT_TO_SRGB_THRESHOLD = 0x3b4d2e1c;
const D3D11_FTOI_INSTRUCTION_MAX_INPUT = 0x4f000000;
const D3D11_FTOI_INSTRUCTION_MIN_INPUT = 0xcf000000;
const D3D11_FTOU_INSTRUCTION_MAX_INPUT = 0x4f800000;
const D3D11_FTOU_INSTRUCTION_MIN_INPUT = 0x0;
const D3D11_GS_INPUT_INSTANCE_ID_READS_PER_INST = 0x2;
const D3D11_GS_INPUT_INSTANCE_ID_READ_PORTS = 0x1;
const D3D11_GS_INPUT_INSTANCE_ID_REGISTER_COMPONENTS = 0x1;
const D3D11_GS_INPUT_INSTANCE_ID_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_GS_INPUT_INSTANCE_ID_REGISTER_COUNT = 0x1;
const D3D11_GS_INPUT_PRIM_CONST_REGISTER_COMPONENTS = 0x1;
const D3D11_GS_INPUT_PRIM_CONST_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_GS_INPUT_PRIM_CONST_REGISTER_COUNT = 0x1;
const D3D11_GS_INPUT_PRIM_CONST_REGISTER_READS_PER_INST = 0x2;
const D3D11_GS_INPUT_PRIM_CONST_REGISTER_READ_PORTS = 0x1;
const D3D11_GS_INPUT_REGISTER_COMPONENTS = 0x4;
const D3D11_GS_INPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_GS_INPUT_REGISTER_COUNT = 0x20;
const D3D11_GS_INPUT_REGISTER_READS_PER_INST = 0x2;
const D3D11_GS_INPUT_REGISTER_READ_PORTS = 0x1;
const D3D11_GS_INPUT_REGISTER_VERTICES = 0x20;
const D3D11_GS_MAX_INSTANCE_COUNT = 0x20;
const D3D11_GS_MAX_OUTPUT_VERTEX_COUNT_ACROSS_INSTANCES = 0x400;
const D3D11_GS_OUTPUT_ELEMENTS = 0x20;
const D3D11_GS_OUTPUT_REGISTER_COMPONENTS = 0x4;
const D3D11_GS_OUTPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_GS_OUTPUT_REGISTER_COUNT = 0x20;
const D3D11_HS_CONTROL_POINT_PHASE_INPUT_REGISTER_COUNT = 0x20;
const D3D11_HS_CONTROL_POINT_PHASE_OUTPUT_REGISTER_COUNT = 0x20;
const D3D11_HS_CONTROL_POINT_REGISTER_COMPONENTS = 0x4;
const D3D11_HS_CONTROL_POINT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_HS_CONTROL_POINT_REGISTER_READS_PER_INST = 0x2;
const D3D11_HS_CONTROL_POINT_REGISTER_READ_PORTS = 0x1;
const D3D11_HS_FORK_PHASE_INSTANCE_COUNT_UPPER_BOUND = 0xffffffff;
const D3D11_HS_INPUT_FORK_INSTANCE_ID_REGISTER_COMPONENTS = 0x1;
const D3D11_HS_INPUT_FORK_INSTANCE_ID_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_HS_INPUT_FORK_INSTANCE_ID_REGISTER_COUNT = 0x1;
const D3D11_HS_INPUT_FORK_INSTANCE_ID_REGISTER_READS_PER_INST = 0x2;
const D3D11_HS_INPUT_FORK_INSTANCE_ID_REGISTER_READ_PORTS = 0x1;
const D3D11_HS_INPUT_JOIN_INSTANCE_ID_REGISTER_COMPONENTS = 0x1;
const D3D11_HS_INPUT_JOIN_INSTANCE_ID_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_HS_INPUT_JOIN_INSTANCE_ID_REGISTER_COUNT = 0x1;
const D3D11_HS_INPUT_JOIN_INSTANCE_ID_REGISTER_READS_PER_INST = 0x2;
const D3D11_HS_INPUT_JOIN_INSTANCE_ID_REGISTER_READ_PORTS = 0x1;
const D3D11_HS_INPUT_PRIMITIVE_ID_REGISTER_COMPONENTS = 0x1;
const D3D11_HS_INPUT_PRIMITIVE_ID_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_HS_INPUT_PRIMITIVE_ID_REGISTER_COUNT = 0x1;
const D3D11_HS_INPUT_PRIMITIVE_ID_REGISTER_READS_PER_INST = 0x2;
const D3D11_HS_INPUT_PRIMITIVE_ID_REGISTER_READ_PORTS = 0x1;
const D3D11_HS_JOIN_PHASE_INSTANCE_COUNT_UPPER_BOUND = 0xffffffff;
const D3D11_HS_MAXTESSFACTOR_LOWER_BOUND = 0x3f800000;
const D3D11_HS_MAXTESSFACTOR_UPPER_BOUND = 0x42800000;
const D3D11_HS_OUTPUT_CONTROL_POINTS_MAX_TOTAL_SCALARS = 0xf80;
const D3D11_HS_OUTPUT_CONTROL_POINT_ID_REGISTER_COMPONENTS = 0x1;
const D3D11_HS_OUTPUT_CONTROL_POINT_ID_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_HS_OUTPUT_CONTROL_POINT_ID_REGISTER_COUNT = 0x1;
const D3D11_HS_OUTPUT_CONTROL_POINT_ID_REGISTER_READS_PER_INST = 0x2;
const D3D11_HS_OUTPUT_CONTROL_POINT_ID_REGISTER_READ_PORTS = 0x1;
const D3D11_HS_OUTPUT_PATCH_CONSTANT_REGISTER_COMPONENTS = 0x4;
const D3D11_HS_OUTPUT_PATCH_CONSTANT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_HS_OUTPUT_PATCH_CONSTANT_REGISTER_COUNT = 0x20;
const D3D11_HS_OUTPUT_PATCH_CONSTANT_REGISTER_READS_PER_INST = 0x2;
const D3D11_HS_OUTPUT_PATCH_CONSTANT_REGISTER_READ_PORTS = 0x1;
const D3D11_HS_OUTPUT_PATCH_CONSTANT_REGISTER_SCALAR_COMPONENTS = 0x80;
const D3D11_IA_DEFAULT_INDEX_BUFFER_OFFSET_IN_BYTES = 0x0;
const D3D11_IA_DEFAULT_PRIMITIVE_TOPOLOGY = 0x0;
const D3D11_IA_DEFAULT_VERTEX_BUFFER_OFFSET_IN_BYTES = 0x0;
const D3D11_IA_INDEX_INPUT_RESOURCE_SLOT_COUNT = 0x1;
const D3D11_IA_INSTANCE_ID_BIT_COUNT = 0x20;
const D3D11_IA_INTEGER_ARITHMETIC_BIT_COUNT = 0x20;
const D3D11_IA_PATCH_MAX_CONTROL_POINT_COUNT = 0x20;
const D3D11_IA_PRIMITIVE_ID_BIT_COUNT = 0x20;
const D3D11_IA_VERTEX_ID_BIT_COUNT = 0x20;
const D3D11_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT = 0x20;
const D3D11_IA_VERTEX_INPUT_STRUCTURE_ELEMENTS_COMPONENTS = 0x80;
const D3D11_IA_VERTEX_INPUT_STRUCTURE_ELEMENT_COUNT = 0x20;
const D3D11_INTEGER_DIVIDE_BY_ZERO_QUOTIENT = 0xffffffff;
const D3D11_INTEGER_DIVIDE_BY_ZERO_REMAINDER = 0xffffffff;
const D3D11_KEEP_RENDER_TARGETS_AND_DEPTH_STENCIL = 0xffffffff;
const D3D11_KEEP_UNORDERED_ACCESS_VIEWS = 0xffffffff;
const D3D11_LINEAR_GAMMA = 0x3f800000;
const D3D11_MAJOR_VERSION = 0xb;
const D3D11_MAX_BORDER_COLOR_COMPONENT = 0x3f800000;
const D3D11_MAX_DEPTH = 0x3f800000;
const D3D11_MAX_MAXANISOTROPY = 0x10;
const D3D11_MAX_MULTISAMPLE_SAMPLE_COUNT = 0x20;
const D3D11_MAX_POSITION_VALUE = 0x78d1b717;
const D3D11_MAX_TEXTURE_DIMENSION_2_TO_EXP = 0x11;
const D3D11_MINOR_VERSION = 0x0;
const D3D11_MIN_BORDER_COLOR_COMPONENT = 0x0;
const D3D11_MIN_DEPTH = 0x0;
const D3D11_MIN_MAXANISOTROPY = 0x0;
const D3D11_MIP_LOD_BIAS_MAX = 0x417fd70a;
const D3D11_MIP_LOD_BIAS_MIN = 0xc1800000;
const D3D11_MIP_LOD_FRACTIONAL_BIT_COUNT = 0x8;
const D3D11_MIP_LOD_RANGE_BIT_COUNT = 0x8;
const D3D11_MULTISAMPLE_ANTIALIAS_LINE_WIDTH = 0x3fb33333;
const D3D11_NONSAMPLE_FETCH_OUT_OF_RANGE_ACCESS_RESULT = 0x0;
const D3D11_PIXEL_ADDRESS_RANGE_BIT_COUNT = 0xf;
const D3D11_PRE_SCISSOR_PIXEL_ADDRESS_RANGE_BIT_COUNT = 0x10;
const D3D11_PS_CS_UAV_REGISTER_COMPONENTS = 0x1;
const D3D11_PS_CS_UAV_REGISTER_COUNT = 0x8;
const D3D11_PS_CS_UAV_REGISTER_READS_PER_INST = 0x1;
const D3D11_PS_CS_UAV_REGISTER_READ_PORTS = 0x1;
const D3D11_PS_FRONTFACING_DEFAULT_VALUE = 0xffffffff;
const D3D11_PS_FRONTFACING_FALSE_VALUE = 0x0;
const D3D11_PS_FRONTFACING_TRUE_VALUE = 0xffffffff;
const D3D11_PS_INPUT_REGISTER_COMPONENTS = 0x4;
const D3D11_PS_INPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_PS_INPUT_REGISTER_COUNT = 0x20;
const D3D11_PS_INPUT_REGISTER_READS_PER_INST = 0x2;
const D3D11_PS_INPUT_REGISTER_READ_PORTS = 0x1;
const D3D11_PS_LEGACY_PIXEL_CENTER_FRACTIONAL_COMPONENT = 0x0;
const D3D11_PS_OUTPUT_DEPTH_REGISTER_COMPONENTS = 0x1;
const D3D11_PS_OUTPUT_DEPTH_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_PS_OUTPUT_DEPTH_REGISTER_COUNT = 0x1;
const D3D11_PS_OUTPUT_MASK_REGISTER_COMPONENTS = 0x1;
const D3D11_PS_OUTPUT_MASK_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_PS_OUTPUT_MASK_REGISTER_COUNT = 0x1;
const D3D11_PS_OUTPUT_REGISTER_COMPONENTS = 0x4;
const D3D11_PS_OUTPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_PS_OUTPUT_REGISTER_COUNT = 0x8;
const D3D11_PS_PIXEL_CENTER_FRACTIONAL_COMPONENT = 0x3f000000;
const D3D11_RAW_UAV_SRV_BYTE_ALIGNMENT = 0x10;
const D3D11_REQ_BLEND_OBJECT_COUNT_PER_DEVICE = 0x1000;
const D3D11_REQ_BUFFER_RESOURCE_TEXEL_COUNT_2_TO_EXP = 0x1b;
const D3D11_REQ_CONSTANT_BUFFER_ELEMENT_COUNT = 0x1000;
const D3D11_REQ_DEPTH_STENCIL_OBJECT_COUNT_PER_DEVICE = 0x1000;
const D3D11_REQ_DRAWINDEXED_INDEX_COUNT_2_TO_EXP = 0x20;
const D3D11_REQ_DRAW_VERTEX_COUNT_2_TO_EXP = 0x20;
const D3D11_REQ_FILTERING_HW_ADDRESSABLE_RESOURCE_DIMENSION = 0x4000;
const D3D11_REQ_GS_INVOCATION_32BIT_OUTPUT_COMPONENT_LIMIT = 0x400;
const D3D11_REQ_IMMEDIATE_CONSTANT_BUFFER_ELEMENT_COUNT = 0x1000;
const D3D11_REQ_MAXANISOTROPY = 0x10;
const D3D11_REQ_MIP_LEVELS = 0xf;
const D3D11_REQ_MULTI_ELEMENT_STRUCTURE_SIZE_IN_BYTES = 0x800;
const D3D11_REQ_RASTERIZER_OBJECT_COUNT_PER_DEVICE = 0x1000;
const D3D11_REQ_RENDER_TO_BUFFER_WINDOW_WIDTH = 0x4000;
const D3D11_REQ_RESOURCE_SIZE_IN_MEGABYTES_EXPRESSION_A_TERM = 0x80;
const D3D11_REQ_RESOURCE_SIZE_IN_MEGABYTES_EXPRESSION_B_TERM = 0x3e800000;
const D3D11_REQ_RESOURCE_SIZE_IN_MEGABYTES_EXPRESSION_C_TERM = 0x800;
const D3D11_REQ_RESOURCE_VIEW_COUNT_PER_DEVICE_2_TO_EXP = 0x14;
const D3D11_REQ_SAMPLER_OBJECT_COUNT_PER_DEVICE = 0x1000;
const D3D11_REQ_TEXTURE1D_ARRAY_AXIS_DIMENSION = 0x800;
const D3D11_REQ_TEXTURE1D_U_DIMENSION = 0x4000;
const D3D11_REQ_TEXTURE2D_ARRAY_AXIS_DIMENSION = 0x800;
const D3D11_REQ_TEXTURE2D_U_OR_V_DIMENSION = 0x4000;
const D3D11_REQ_TEXTURE3D_U_V_OR_W_DIMENSION = 0x800;
const D3D11_REQ_TEXTURECUBE_DIMENSION = 0x4000;
const D3D11_RESINFO_INSTRUCTION_MISSING_COMPONENT_RETVAL = 0x0;
const D3D11_SHADER_MAJOR_VERSION = 0x5;
const D3D11_SHADER_MAX_INSTANCES = 0xffff;
const D3D11_SHADER_MAX_INTERFACES = 0xfd;
const D3D11_SHADER_MAX_INTERFACE_CALL_SITES = 0x1000;
const D3D11_SHADER_MAX_TYPES = 0xffff;
const D3D11_SHADER_MINOR_VERSION = 0x0;
const D3D11_SHIFT_INSTRUCTION_PAD_VALUE = 0x0;
const D3D11_SHIFT_INSTRUCTION_SHIFT_VALUE_BIT_COUNT = 0x5;
const D3D11_SIMULTANEOUS_RENDER_TARGET_COUNT = 0x8;
const D3D11_SO_BUFFER_MAX_STRIDE_IN_BYTES = 0x800;
const D3D11_SO_BUFFER_MAX_WRITE_WINDOW_IN_BYTES = 0x200;
const D3D11_SO_BUFFER_SLOT_COUNT = 0x4;
const D3D11_SO_DDI_REGISTER_INDEX_DENOTING_GAP = 0xffffffff;
const D3D11_SO_NO_RASTERIZED_STREAM = 0xffffffff;
const D3D11_SO_OUTPUT_COMPONENT_COUNT = 0x80;
const D3D11_SO_STREAM_COUNT = 0x4;
const D3D11_SPEC_DATE_DAY = 0x10;
const D3D11_SPEC_DATE_MONTH = 0x5;
const D3D11_SPEC_DATE_YEAR = 0x7db;
const D3D11_SPEC_VERSION = 0x51eb851f;
const D3D11_SRGB_GAMMA = 0x400ccccd;
const D3D11_SRGB_TO_FLOAT_DENOMINATOR_1 = 0x414eb852;
const D3D11_SRGB_TO_FLOAT_DENOMINATOR_2 = 0x3f870a3d;
const D3D11_SRGB_TO_FLOAT_EXPONENT = 0x4019999a;
const D3D11_SRGB_TO_FLOAT_OFFSET = 0x3d6147ae;
const D3D11_SRGB_TO_FLOAT_THRESHOLD = 0x3d25aee6;
const D3D11_SRGB_TO_FLOAT_TOLERANCE_IN_ULP = 0x3f000000;
const D3D11_STANDARD_COMPONENT_BIT_COUNT = 0x20;
const D3D11_STANDARD_COMPONENT_BIT_COUNT_DOUBLED = 0x40;
const D3D11_STANDARD_MAXIMUM_ELEMENT_ALIGNMENT_BYTE_MULTIPLE = 0x4;
const D3D11_STANDARD_PIXEL_COMPONENT_COUNT = 0x80;
const D3D11_STANDARD_PIXEL_ELEMENT_COUNT = 0x20;
const D3D11_STANDARD_VECTOR_SIZE = 0x4;
const D3D11_STANDARD_VERTEX_ELEMENT_COUNT = 0x20;
const D3D11_STANDARD_VERTEX_TOTAL_COMPONENT_COUNT = 0x40;
const D3D11_SUBPIXEL_FRACTIONAL_BIT_COUNT = 0x8;
const D3D11_SUBTEXEL_FRACTIONAL_BIT_COUNT = 0x8;
const D3D11_TESSELLATOR_MAX_EVEN_TESSELLATION_FACTOR = 0x40;
const D3D11_TESSELLATOR_MAX_ISOLINE_DENSITY_TESSELLATION_FACTOR = 0x40;
const D3D11_TESSELLATOR_MAX_ODD_TESSELLATION_FACTOR = 0x3f;
const D3D11_TESSELLATOR_MAX_TESSELLATION_FACTOR = 0x40;
const D3D11_TESSELLATOR_MIN_EVEN_TESSELLATION_FACTOR = 0x2;
const D3D11_TESSELLATOR_MIN_ISOLINE_DENSITY_TESSELLATION_FACTOR = 0x1;
const D3D11_TESSELLATOR_MIN_ODD_TESSELLATION_FACTOR = 0x1;
const D3D11_TEXEL_ADDRESS_RANGE_BIT_COUNT = 0x10;
const D3D11_UNBOUND_MEMORY_ACCESS_RESULT = 0x0;
const D3D11_VIEWPORT_AND_SCISSORRECT_MAX_INDEX = 0xf;
const D3D11_VIEWPORT_AND_SCISSORRECT_OBJECT_COUNT_PER_PIPELINE = 0x10;
const D3D11_VIEWPORT_BOUNDS_MAX = 0x7fff;
const D3D11_VIEWPORT_BOUNDS_MIN = 0xffff8000;
const D3D11_VS_INPUT_REGISTER_COMPONENTS = 0x4;
const D3D11_VS_INPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_VS_INPUT_REGISTER_COUNT = 0x20;
const D3D11_VS_INPUT_REGISTER_READS_PER_INST = 0x2;
const D3D11_VS_INPUT_REGISTER_READ_PORTS = 0x1;
const D3D11_VS_OUTPUT_REGISTER_COMPONENTS = 0x4;
const D3D11_VS_OUTPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D11_VS_OUTPUT_REGISTER_COUNT = 0x20;
const D3D11_WHQL_CONTEXT_COUNT_FOR_RESOURCE_LIMIT = 0xa;
const D3D11_WHQL_DRAWINDEXED_INDEX_COUNT_2_TO_EXP = 0x19;
const D3D11_WHQL_DRAW_VERTEX_COUNT_2_TO_EXP = 0x19;
const D3D11_1_UAV_SLOT_COUNT = 0x40;
const D3D11_2_TILED_RESOURCE_TILE_SIZE_IN_BYTES = 0x10000;
const D3D11_4_VIDEO_DECODER_MAX_HISTOGRAM_COMPONENTS = 0x4;
const D3D11_4_VIDEO_DECODER_HISTOGRAM_OFFSET_ALIGNMENT = 0x100;
const FACD3D11 = 0x87c;
const D3D11_APPEND_ALIGNED_ELEMENT = 0xffffffff;
const D3D11_FILTER_REDUCTION_TYPE_MASK = 0x3;
const D3D11_FILTER_REDUCTION_TYPE_SHIFT = 0x7;
const D3D11_FILTER_TYPE_MASK = 0x3;
const D3D11_MIN_FILTER_SHIFT = 0x4;
const D3D11_MAG_FILTER_SHIFT = 0x2;
const D3D11_MIP_FILTER_SHIFT = 0x0;
const D3D11_COMPARISON_FILTERING_BIT = 0x80;
const D3D11_ANISOTROPIC_FILTERING_BIT = 0x40;
const D3D11_DECODER_PROFILE_MPEG2_MOCOMP = 0x0;
const D3D11_DECODER_PROFILE_MPEG2_IDCT = 0x0;
const D3D11_DECODER_PROFILE_MPEG2_VLD = 0x0;
const D3D11_DECODER_PROFILE_MPEG1_VLD = 0x0;
const D3D11_DECODER_PROFILE_MPEG2and1_VLD = 0x0;
const D3D11_DECODER_PROFILE_H264_MOCOMP_NOFGT = 0x0;
const D3D11_DECODER_PROFILE_H264_MOCOMP_FGT = 0x0;
const D3D11_DECODER_PROFILE_H264_IDCT_NOFGT = 0x0;
const D3D11_DECODER_PROFILE_H264_IDCT_FGT = 0x0;
const D3D11_DECODER_PROFILE_H264_VLD_NOFGT = 0x0;
const D3D11_DECODER_PROFILE_H264_VLD_FGT = 0x0;
const D3D11_DECODER_PROFILE_H264_VLD_WITHFMOASO_NOFGT = 0x0;
const D3D11_DECODER_PROFILE_H264_VLD_STEREO_PROGRESSIVE_NOFGT = 0x0;
const D3D11_DECODER_PROFILE_H264_VLD_STEREO_NOFGT = 0x0;
const D3D11_DECODER_PROFILE_H264_VLD_MULTIVIEW_NOFGT = 0x0;
const D3D11_DECODER_PROFILE_WMV8_POSTPROC = 0x0;
const D3D11_DECODER_PROFILE_WMV8_MOCOMP = 0x0;
const D3D11_DECODER_PROFILE_WMV9_POSTPROC = 0x0;
const D3D11_DECODER_PROFILE_WMV9_MOCOMP = 0x0;
const D3D11_DECODER_PROFILE_WMV9_IDCT = 0x0;
const D3D11_DECODER_PROFILE_VC1_POSTPROC = 0x0;
const D3D11_DECODER_PROFILE_VC1_MOCOMP = 0x0;
const D3D11_DECODER_PROFILE_VC1_IDCT = 0x0;
const D3D11_DECODER_PROFILE_VC1_VLD = 0x0;
const D3D11_DECODER_PROFILE_VC1_D2010 = 0x0;
const D3D11_DECODER_PROFILE_MPEG4PT2_VLD_SIMPLE = 0x0;
const D3D11_DECODER_PROFILE_MPEG4PT2_VLD_ADVSIMPLE_NOGMC = 0x0;
const D3D11_DECODER_PROFILE_MPEG4PT2_VLD_ADVSIMPLE_GMC = 0x0;
const D3D11_DECODER_PROFILE_HEVC_VLD_MAIN = 0x0;
const D3D11_DECODER_PROFILE_HEVC_VLD_MAIN10 = 0x0;
const D3D11_DECODER_PROFILE_VP9_VLD_PROFILE0 = 0x0;
const D3D11_DECODER_PROFILE_VP9_VLD_10BIT_PROFILE2 = 0x0;
const D3D11_DECODER_PROFILE_VP8_VLD = 0x0;
const D3D11_DECODER_PROFILE_AV1_VLD_PROFILE0 = 0x0;
const D3D11_DECODER_PROFILE_AV1_VLD_PROFILE1 = 0x0;
const D3D11_DECODER_PROFILE_AV1_VLD_PROFILE2 = 0x0;
const D3D11_DECODER_PROFILE_AV1_VLD_12BIT_PROFILE2 = 0x0;
const D3D11_DECODER_PROFILE_AV1_VLD_12BIT_PROFILE2_420 = 0x0;
const D3D11_CRYPTO_TYPE_AES128_CTR = 0x0;
const D3D11_DECODER_ENCRYPTION_HW_CENC = 0x0;
const D3D11_DECODER_BITSTREAM_ENCRYPTION_TYPE_CENC = 0x0;
const D3D11_DECODER_BITSTREAM_ENCRYPTION_TYPE_CBCS = 0x0;
const D3D11_KEY_EXCHANGE_HW_PROTECTION = 0x0;
const D3D11_AUTHENTICATED_QUERY_PROTECTION = 0x0;
const D3D11_AUTHENTICATED_QUERY_CHANNEL_TYPE = 0x0;
const D3D11_AUTHENTICATED_QUERY_DEVICE_HANDLE = 0x0;
const D3D11_AUTHENTICATED_QUERY_CRYPTO_SESSION = 0x0;
const D3D11_AUTHENTICATED_QUERY_RESTRICTED_SHARED_RESOURCE_PROCESS_COUNT = 0x0;
const D3D11_AUTHENTICATED_QUERY_RESTRICTED_SHARED_RESOURCE_PROCESS = 0x0;
const D3D11_AUTHENTICATED_QUERY_UNRESTRICTED_PROTECTED_SHARED_RESOURCE_COUNT = 0x0;
const D3D11_AUTHENTICATED_QUERY_OUTPUT_ID_COUNT = 0x0;
const D3D11_AUTHENTICATED_QUERY_OUTPUT_ID = 0x0;
const D3D11_AUTHENTICATED_QUERY_ACCESSIBILITY_ATTRIBUTES = 0x0;
const D3D11_AUTHENTICATED_QUERY_ENCRYPTION_WHEN_ACCESSIBLE_GUID_COUNT = 0x0;
const D3D11_AUTHENTICATED_QUERY_ENCRYPTION_WHEN_ACCESSIBLE_GUID = 0x0;
const D3D11_AUTHENTICATED_QUERY_CURRENT_ENCRYPTION_WHEN_ACCESSIBLE = 0x0;
const D3D11_AUTHENTICATED_CONFIGURE_INITIALIZE = 0x0;
const D3D11_AUTHENTICATED_CONFIGURE_PROTECTION = 0x0;
const D3D11_AUTHENTICATED_CONFIGURE_CRYPTO_SESSION = 0x0;
const D3D11_AUTHENTICATED_CONFIGURE_SHARED_RESOURCE = 0x0;
const D3D11_AUTHENTICATED_CONFIGURE_ENCRYPTION_WHEN_ACCESSIBLE = 0x0;
const D3D11_KEY_EXCHANGE_RSAES_OAEP = 0x0;
const D3D11_SDK_VERSION = 0x7;
const D3D11_PACKED_TILE = 0xffffffff;
const D3D11_SDK_LAYERS_VERSION = 0x1;
const D3D11_DEBUG_FEATURE_FLUSH_PER_RENDER_OP = 0x1;
const D3D11_DEBUG_FEATURE_FINISH_PER_RENDER_OP = 0x2;
const D3D11_DEBUG_FEATURE_PRESENT_PER_RENDER_OP = 0x4;
const D3D11_DEBUG_FEATURE_ALWAYS_DISCARD_OFFERED_RESOURCE = 0x8;
const D3D11_DEBUG_FEATURE_NEVER_DISCARD_OFFERED_RESOURCE = 0x10;
const D3D11_DEBUG_FEATURE_AVOID_BEHAVIOR_CHANGING_DEBUG_AIDS = 0x40;
const D3D11_DEBUG_FEATURE_DISABLE_TILED_RESOURCE_MAPPING_TRACKING_AND_VALIDATION = 0x80;
const DXGI_DEBUG_D3D11 = 0x0;
const D3D11_INFO_QUEUE_DEFAULT_MESSAGE_COUNT_LIMIT = 0x400;
const D3D_RETURN_PARAMETER_INDEX = 0xffffffff;
const D3D_SHADER_REQUIRES_DOUBLES = 0x1;
const D3D_SHADER_REQUIRES_EARLY_DEPTH_STENCIL = 0x2;
const D3D_SHADER_REQUIRES_UAVS_AT_EVERY_STAGE = 0x4;
const D3D_SHADER_REQUIRES_64_UAVS = 0x8;
const D3D_SHADER_REQUIRES_MINIMUM_PRECISION = 0x10;
const D3D_SHADER_REQUIRES_11_1_DOUBLE_EXTENSIONS = 0x20;
const D3D_SHADER_REQUIRES_11_1_SHADER_EXTENSIONS = 0x40;
const D3D_SHADER_REQUIRES_LEVEL_9_COMPARISON_FILTERING = 0x80;
const D3D_SHADER_REQUIRES_TILED_RESOURCES = 0x100;
const D3D11_TRACE_COMPONENT_X = 0x1;
const D3D11_TRACE_COMPONENT_Y = 0x2;
const D3D11_TRACE_COMPONENT_Z = 0x4;
const D3D11_TRACE_COMPONENT_W = 0x8;
const D3D11_SHADER_TRACE_FLAG_RECORD_REGISTER_WRITES = 0x1;
const D3D11_SHADER_TRACE_FLAG_RECORD_REGISTER_READS = 0x2;
const D3D11_TRACE_REGISTER_FLAGS_RELATIVE_INDEXING = 0x1;
const D3D11_TRACE_MISC_GS_EMIT = 0x1;
const D3D11_TRACE_MISC_GS_CUT = 0x2;
const D3D11_TRACE_MISC_PS_DISCARD = 0x4;
const D3D11_TRACE_MISC_GS_EMIT_STREAM = 0x8;
const D3D11_TRACE_MISC_GS_CUT_STREAM = 0x10;
const D3D11_TRACE_MISC_HALT = 0x20;
const D3D11_TRACE_MISC_MESSAGE = 0x40;
const D3D_FL9_1_REQ_TEXTURE1D_U_DIMENSION = 0x800;
const D3D_FL9_3_REQ_TEXTURE1D_U_DIMENSION = 0x1000;
const D3D_FL9_1_REQ_TEXTURE2D_U_OR_V_DIMENSION = 0x800;
const D3D_FL9_3_REQ_TEXTURE2D_U_OR_V_DIMENSION = 0x1000;
const D3D_FL9_1_REQ_TEXTURECUBE_DIMENSION = 0x200;
const D3D_FL9_3_REQ_TEXTURECUBE_DIMENSION = 0x1000;
const D3D_FL9_1_REQ_TEXTURE3D_U_V_OR_W_DIMENSION = 0x100;
const D3D_FL9_1_DEFAULT_MAX_ANISOTROPY = 0x2;
const D3D_FL9_1_IA_PRIMITIVE_MAX_COUNT = 0xffff;
const D3D_FL9_2_IA_PRIMITIVE_MAX_COUNT = 0xfffff;
const D3D_FL9_1_SIMULTANEOUS_RENDER_TARGET_COUNT = 0x1;
const D3D_FL9_3_SIMULTANEOUS_RENDER_TARGET_COUNT = 0x4;
const D3D_FL9_1_MAX_TEXTURE_REPEAT = 0x80;
const D3D_FL9_2_MAX_TEXTURE_REPEAT = 0x800;
const D3D_FL9_3_MAX_TEXTURE_REPEAT = 0x2000;
const D3D_SHADER_FEATURE_DOUBLES = 0x1;
const D3D_SHADER_FEATURE_COMPUTE_SHADERS_PLUS_RAW_AND_STRUCTURED_BUFFERS_VIA_SHADER_4_X = 0x2;
const D3D_SHADER_FEATURE_UAVS_AT_EVERY_STAGE = 0x4;
const D3D_SHADER_FEATURE_64_UAVS = 0x8;
const D3D_SHADER_FEATURE_MINIMUM_PRECISION = 0x10;
const D3D_SHADER_FEATURE_11_1_DOUBLE_EXTENSIONS = 0x20;
const D3D_SHADER_FEATURE_11_1_SHADER_EXTENSIONS = 0x40;
const D3D_SHADER_FEATURE_LEVEL_9_COMPARISON_FILTERING = 0x80;
const D3D_SHADER_FEATURE_TILED_RESOURCES = 0x100;
const D3D_SHADER_FEATURE_STENCIL_REF = 0x200;
const D3D_SHADER_FEATURE_INNER_COVERAGE = 0x400;
const D3D_SHADER_FEATURE_TYPED_UAV_LOAD_ADDITIONAL_FORMATS = 0x800;
const D3D_SHADER_FEATURE_ROVS = 0x1000;
const D3D_SHADER_FEATURE_VIEWPORT_AND_RT_ARRAY_INDEX_FROM_ANY_SHADER_FEEDING_RASTERIZER = 0x2000;
const D3D_SHADER_FEATURE_WAVE_OPS = 0x4000;
const D3D_SHADER_FEATURE_INT64_OPS = 0x8000;
const D3D_SHADER_FEATURE_VIEW_ID = 0x10000;
const D3D_SHADER_FEATURE_BARYCENTRICS = 0x20000;
const D3D_SHADER_FEATURE_NATIVE_16BIT_OPS = 0x40000;
const D3D_SHADER_FEATURE_SHADING_RATE = 0x80000;
const D3D_SHADER_FEATURE_RAYTRACING_TIER_1_1 = 0x100000;
const D3D_SHADER_FEATURE_SAMPLER_FEEDBACK = 0x200000;
const D3D_SHADER_FEATURE_ATOMIC_INT64_ON_TYPED_RESOURCE = 0x400000;
const D3D_SHADER_FEATURE_ATOMIC_INT64_ON_GROUP_SHARED = 0x800000;
const D3D_SHADER_FEATURE_DERIVATIVES_IN_MESH_AND_AMPLIFICATION_SHADERS = 0x1000000;
const D3D_SHADER_FEATURE_RESOURCE_DESCRIPTOR_HEAP_INDEXING = 0x2000000;
const D3D_SHADER_FEATURE_SAMPLER_DESCRIPTOR_HEAP_INDEXING = 0x4000000;
const D3D_SHADER_FEATURE_WAVE_MMA = 0x8000000;
const D3D_SHADER_FEATURE_ATOMIC_INT64_ON_DESCRIPTOR_HEAP_RESOURCE = 0x10000000;
const WKPDID_D3DDebugObjectName = 0x0;
const WKPDID_D3DDebugObjectNameW = 0x0;
const WKPDID_CommentStringW = 0x0;
const WKPDID_D3D12UniqueObjectId = 0x0;
const D3D_COMPONENT_MASK_X = 0x1;
const D3D_COMPONENT_MASK_Y = 0x2;
const D3D_COMPONENT_MASK_Z = 0x4;
const D3D_COMPONENT_MASK_W = 0x8;
const D3D_TEXTURE_LAYOUT_ROW_MAJOR = 0x0;
const D3D_TEXTURE_LAYOUT_64KB_STANDARD_SWIZZLE = 0x0;
const D3DX11_FFT_MAX_PRECOMPUTE_BUFFERS = 0x4;
const D3DX11_FFT_MAX_TEMP_BUFFERS = 0x4;
const D3DX11_FFT_MAX_DIMENSIONS = 0x20;
