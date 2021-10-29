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

const D3D10_16BIT_INDEX_STRIP_CUT_VALUE = 0xffff;
const D3D10_32BIT_INDEX_STRIP_CUT_VALUE = 0xffffffff;
const D3D10_8BIT_INDEX_STRIP_CUT_VALUE = 0xff;
const D3D10_ARRAY_AXIS_ADDRESS_RANGE_BIT_COUNT = 0x9;
const D3D10_CLIP_OR_CULL_DISTANCE_COUNT = 0x8;
const D3D10_CLIP_OR_CULL_DISTANCE_ELEMENT_COUNT = 0x2;
const D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT = 0xe;
const D3D10_COMMONSHADER_CONSTANT_BUFFER_COMPONENTS = 0x4;
const D3D10_COMMONSHADER_CONSTANT_BUFFER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_COMMONSHADER_CONSTANT_BUFFER_HW_SLOT_COUNT = 0xf;
const D3D10_COMMONSHADER_CONSTANT_BUFFER_REGISTER_COMPONENTS = 0x4;
const D3D10_COMMONSHADER_CONSTANT_BUFFER_REGISTER_COUNT = 0xf;
const D3D10_COMMONSHADER_CONSTANT_BUFFER_REGISTER_READS_PER_INST = 0x1;
const D3D10_COMMONSHADER_CONSTANT_BUFFER_REGISTER_READ_PORTS = 0x1;
const D3D10_COMMONSHADER_FLOWCONTROL_NESTING_LIMIT = 0x40;
const D3D10_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_COMPONENTS = 0x4;
const D3D10_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_COUNT = 0x1;
const D3D10_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_READS_PER_INST = 0x1;
const D3D10_COMMONSHADER_IMMEDIATE_CONSTANT_BUFFER_REGISTER_READ_PORTS = 0x1;
const D3D10_COMMONSHADER_IMMEDIATE_VALUE_COMPONENT_BIT_COUNT = 0x20;
const D3D10_COMMONSHADER_INPUT_RESOURCE_REGISTER_COMPONENTS = 0x1;
const D3D10_COMMONSHADER_INPUT_RESOURCE_REGISTER_COUNT = 0x80;
const D3D10_COMMONSHADER_INPUT_RESOURCE_REGISTER_READS_PER_INST = 0x1;
const D3D10_COMMONSHADER_INPUT_RESOURCE_REGISTER_READ_PORTS = 0x1;
const D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT = 0x80;
const D3D10_COMMONSHADER_SAMPLER_REGISTER_COMPONENTS = 0x1;
const D3D10_COMMONSHADER_SAMPLER_REGISTER_COUNT = 0x10;
const D3D10_COMMONSHADER_SAMPLER_REGISTER_READS_PER_INST = 0x1;
const D3D10_COMMONSHADER_SAMPLER_REGISTER_READ_PORTS = 0x1;
const D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT = 0x10;
const D3D10_COMMONSHADER_SUBROUTINE_NESTING_LIMIT = 0x20;
const D3D10_COMMONSHADER_TEMP_REGISTER_COMPONENTS = 0x4;
const D3D10_COMMONSHADER_TEMP_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_COMMONSHADER_TEMP_REGISTER_COUNT = 0x1000;
const D3D10_COMMONSHADER_TEMP_REGISTER_READS_PER_INST = 0x3;
const D3D10_COMMONSHADER_TEMP_REGISTER_READ_PORTS = 0x3;
const D3D10_COMMONSHADER_TEXCOORD_RANGE_REDUCTION_MAX = 0xa;
const D3D10_COMMONSHADER_TEXCOORD_RANGE_REDUCTION_MIN = 0xfffffff6;
const D3D10_COMMONSHADER_TEXEL_OFFSET_MAX_NEGATIVE = 0xfffffff8;
const D3D10_COMMONSHADER_TEXEL_OFFSET_MAX_POSITIVE = 0x7;
const D3D10_DEFAULT_BLEND_FACTOR_ALPHA = 0x3f800000;
const D3D10_DEFAULT_BLEND_FACTOR_BLUE = 0x3f800000;
const D3D10_DEFAULT_BLEND_FACTOR_GREEN = 0x3f800000;
const D3D10_DEFAULT_BLEND_FACTOR_RED = 0x3f800000;
const D3D10_DEFAULT_BORDER_COLOR_COMPONENT = 0x0;
const D3D10_DEFAULT_DEPTH_BIAS = 0x0;
const D3D10_DEFAULT_DEPTH_BIAS_CLAMP = 0x0;
const D3D10_DEFAULT_MAX_ANISOTROPY = 0x41800000;
const D3D10_DEFAULT_MIP_LOD_BIAS = 0x0;
const D3D10_DEFAULT_RENDER_TARGET_ARRAY_INDEX = 0x0;
const D3D10_DEFAULT_SAMPLE_MASK = 0xffffffff;
const D3D10_DEFAULT_SCISSOR_ENDX = 0x0;
const D3D10_DEFAULT_SCISSOR_ENDY = 0x0;
const D3D10_DEFAULT_SCISSOR_STARTX = 0x0;
const D3D10_DEFAULT_SCISSOR_STARTY = 0x0;
const D3D10_DEFAULT_SLOPE_SCALED_DEPTH_BIAS = 0x0;
const D3D10_DEFAULT_STENCIL_READ_MASK = 0xff;
const D3D10_DEFAULT_STENCIL_REFERENCE = 0x0;
const D3D10_DEFAULT_STENCIL_WRITE_MASK = 0xff;
const D3D10_DEFAULT_VIEWPORT_AND_SCISSORRECT_INDEX = 0x0;
const D3D10_DEFAULT_VIEWPORT_HEIGHT = 0x0;
const D3D10_DEFAULT_VIEWPORT_MAX_DEPTH = 0x0;
const D3D10_DEFAULT_VIEWPORT_MIN_DEPTH = 0x0;
const D3D10_DEFAULT_VIEWPORT_TOPLEFTX = 0x0;
const D3D10_DEFAULT_VIEWPORT_TOPLEFTY = 0x0;
const D3D10_DEFAULT_VIEWPORT_WIDTH = 0x0;
const D3D10_FLOAT16_FUSED_TOLERANCE_IN_ULP = 0x33333333;
const D3D10_FLOAT32_MAX = 0x7f7fffff;
const D3D10_FLOAT32_TO_INTEGER_TOLERANCE_IN_ULP = 0x3f19999a;
const D3D10_FLOAT_TO_SRGB_EXPONENT_DENOMINATOR = 0x4019999a;
const D3D10_FLOAT_TO_SRGB_EXPONENT_NUMERATOR = 0x3f800000;
const D3D10_FLOAT_TO_SRGB_OFFSET = 0x3d6147ae;
const D3D10_FLOAT_TO_SRGB_SCALE_1 = 0x414eb852;
const D3D10_FLOAT_TO_SRGB_SCALE_2 = 0x3f870a3d;
const D3D10_FLOAT_TO_SRGB_THRESHOLD = 0x3b4d2e1c;
const D3D10_FTOI_INSTRUCTION_MAX_INPUT = 0x4f000000;
const D3D10_FTOI_INSTRUCTION_MIN_INPUT = 0xcf000000;
const D3D10_FTOU_INSTRUCTION_MAX_INPUT = 0x4f800000;
const D3D10_FTOU_INSTRUCTION_MIN_INPUT = 0x0;
const D3D10_GS_INPUT_PRIM_CONST_REGISTER_COMPONENTS = 0x1;
const D3D10_GS_INPUT_PRIM_CONST_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_GS_INPUT_PRIM_CONST_REGISTER_COUNT = 0x1;
const D3D10_GS_INPUT_PRIM_CONST_REGISTER_READS_PER_INST = 0x2;
const D3D10_GS_INPUT_PRIM_CONST_REGISTER_READ_PORTS = 0x1;
const D3D10_GS_INPUT_REGISTER_COMPONENTS = 0x4;
const D3D10_GS_INPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_GS_INPUT_REGISTER_COUNT = 0x10;
const D3D10_GS_INPUT_REGISTER_READS_PER_INST = 0x2;
const D3D10_GS_INPUT_REGISTER_READ_PORTS = 0x1;
const D3D10_GS_INPUT_REGISTER_VERTICES = 0x6;
const D3D10_GS_OUTPUT_ELEMENTS = 0x20;
const D3D10_GS_OUTPUT_REGISTER_COMPONENTS = 0x4;
const D3D10_GS_OUTPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_GS_OUTPUT_REGISTER_COUNT = 0x20;
const D3D10_IA_DEFAULT_INDEX_BUFFER_OFFSET_IN_BYTES = 0x0;
const D3D10_IA_DEFAULT_PRIMITIVE_TOPOLOGY = 0x0;
const D3D10_IA_DEFAULT_VERTEX_BUFFER_OFFSET_IN_BYTES = 0x0;
const D3D10_IA_INDEX_INPUT_RESOURCE_SLOT_COUNT = 0x1;
const D3D10_IA_INSTANCE_ID_BIT_COUNT = 0x20;
const D3D10_IA_INTEGER_ARITHMETIC_BIT_COUNT = 0x20;
const D3D10_IA_PRIMITIVE_ID_BIT_COUNT = 0x20;
const D3D10_IA_VERTEX_ID_BIT_COUNT = 0x20;
const D3D10_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT = 0x10;
const D3D10_IA_VERTEX_INPUT_STRUCTURE_ELEMENTS_COMPONENTS = 0x40;
const D3D10_IA_VERTEX_INPUT_STRUCTURE_ELEMENT_COUNT = 0x10;
const D3D10_INTEGER_DIVIDE_BY_ZERO_QUOTIENT = 0xffffffff;
const D3D10_INTEGER_DIVIDE_BY_ZERO_REMAINDER = 0xffffffff;
const D3D10_LINEAR_GAMMA = 0x3f800000;
const D3D10_MAX_BORDER_COLOR_COMPONENT = 0x3f800000;
const D3D10_MAX_DEPTH = 0x3f800000;
const D3D10_MAX_MAXANISOTROPY = 0x10;
const D3D10_MAX_MULTISAMPLE_SAMPLE_COUNT = 0x20;
const D3D10_MAX_POSITION_VALUE = 0x78d1b717;
const D3D10_MAX_TEXTURE_DIMENSION_2_TO_EXP = 0x11;
const D3D10_MIN_BORDER_COLOR_COMPONENT = 0x0;
const D3D10_MIN_DEPTH = 0x0;
const D3D10_MIN_MAXANISOTROPY = 0x0;
const D3D10_MIP_LOD_BIAS_MAX = 0x417fd70a;
const D3D10_MIP_LOD_BIAS_MIN = 0xc1800000;
const D3D10_MIP_LOD_FRACTIONAL_BIT_COUNT = 0x6;
const D3D10_MIP_LOD_RANGE_BIT_COUNT = 0x8;
const D3D10_MULTISAMPLE_ANTIALIAS_LINE_WIDTH = 0x3fb33333;
const D3D10_NONSAMPLE_FETCH_OUT_OF_RANGE_ACCESS_RESULT = 0x0;
const D3D10_PIXEL_ADDRESS_RANGE_BIT_COUNT = 0xd;
const D3D10_PRE_SCISSOR_PIXEL_ADDRESS_RANGE_BIT_COUNT = 0xf;
const D3D10_PS_FRONTFACING_DEFAULT_VALUE = 0xffffffff;
const D3D10_PS_FRONTFACING_FALSE_VALUE = 0x0;
const D3D10_PS_FRONTFACING_TRUE_VALUE = 0xffffffff;
const D3D10_PS_INPUT_REGISTER_COMPONENTS = 0x4;
const D3D10_PS_INPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_PS_INPUT_REGISTER_COUNT = 0x20;
const D3D10_PS_INPUT_REGISTER_READS_PER_INST = 0x2;
const D3D10_PS_INPUT_REGISTER_READ_PORTS = 0x1;
const D3D10_PS_LEGACY_PIXEL_CENTER_FRACTIONAL_COMPONENT = 0x0;
const D3D10_PS_OUTPUT_DEPTH_REGISTER_COMPONENTS = 0x1;
const D3D10_PS_OUTPUT_DEPTH_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_PS_OUTPUT_DEPTH_REGISTER_COUNT = 0x1;
const D3D10_PS_OUTPUT_REGISTER_COMPONENTS = 0x4;
const D3D10_PS_OUTPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_PS_OUTPUT_REGISTER_COUNT = 0x8;
const D3D10_PS_PIXEL_CENTER_FRACTIONAL_COMPONENT = 0x3f000000;
const D3D10_REQ_BLEND_OBJECT_COUNT_PER_CONTEXT = 0x1000;
const D3D10_REQ_BUFFER_RESOURCE_TEXEL_COUNT_2_TO_EXP = 0x1b;
const D3D10_REQ_CONSTANT_BUFFER_ELEMENT_COUNT = 0x1000;
const D3D10_REQ_DEPTH_STENCIL_OBJECT_COUNT_PER_CONTEXT = 0x1000;
const D3D10_REQ_DRAWINDEXED_INDEX_COUNT_2_TO_EXP = 0x20;
const D3D10_REQ_DRAW_VERTEX_COUNT_2_TO_EXP = 0x20;
const D3D10_REQ_FILTERING_HW_ADDRESSABLE_RESOURCE_DIMENSION = 0x2000;
const D3D10_REQ_GS_INVOCATION_32BIT_OUTPUT_COMPONENT_LIMIT = 0x400;
const D3D10_REQ_IMMEDIATE_CONSTANT_BUFFER_ELEMENT_COUNT = 0x1000;
const D3D10_REQ_MAXANISOTROPY = 0x10;
const D3D10_REQ_MIP_LEVELS = 0xe;
const D3D10_REQ_MULTI_ELEMENT_STRUCTURE_SIZE_IN_BYTES = 0x800;
const D3D10_REQ_RASTERIZER_OBJECT_COUNT_PER_CONTEXT = 0x1000;
const D3D10_REQ_RENDER_TO_BUFFER_WINDOW_WIDTH = 0x2000;
const D3D10_REQ_RESOURCE_SIZE_IN_MEGABYTES = 0x80;
const D3D10_REQ_RESOURCE_VIEW_COUNT_PER_CONTEXT_2_TO_EXP = 0x14;
const D3D10_REQ_SAMPLER_OBJECT_COUNT_PER_CONTEXT = 0x1000;
const D3D10_REQ_TEXTURE1D_ARRAY_AXIS_DIMENSION = 0x200;
const D3D10_REQ_TEXTURE1D_U_DIMENSION = 0x2000;
const D3D10_REQ_TEXTURE2D_ARRAY_AXIS_DIMENSION = 0x200;
const D3D10_REQ_TEXTURE2D_U_OR_V_DIMENSION = 0x2000;
const D3D10_REQ_TEXTURE3D_U_V_OR_W_DIMENSION = 0x800;
const D3D10_REQ_TEXTURECUBE_DIMENSION = 0x2000;
const D3D10_RESINFO_INSTRUCTION_MISSING_COMPONENT_RETVAL = 0x0;
const D3D10_SHADER_MAJOR_VERSION = 0x4;
const D3D10_SHADER_MINOR_VERSION = 0x0;
const D3D10_SHIFT_INSTRUCTION_PAD_VALUE = 0x0;
const D3D10_SHIFT_INSTRUCTION_SHIFT_VALUE_BIT_COUNT = 0x5;
const D3D10_SIMULTANEOUS_RENDER_TARGET_COUNT = 0x8;
const D3D10_SO_BUFFER_MAX_STRIDE_IN_BYTES = 0x800;
const D3D10_SO_BUFFER_MAX_WRITE_WINDOW_IN_BYTES = 0x100;
const D3D10_SO_BUFFER_SLOT_COUNT = 0x4;
const D3D10_SO_DDI_REGISTER_INDEX_DENOTING_GAP = 0xffffffff;
const D3D10_SO_MULTIPLE_BUFFER_ELEMENTS_PER_BUFFER = 0x1;
const D3D10_SO_SINGLE_BUFFER_COMPONENT_LIMIT = 0x40;
const D3D10_SRGB_GAMMA = 0x400ccccd;
const D3D10_SRGB_TO_FLOAT_DENOMINATOR_1 = 0x414eb852;
const D3D10_SRGB_TO_FLOAT_DENOMINATOR_2 = 0x3f870a3d;
const D3D10_SRGB_TO_FLOAT_EXPONENT = 0x4019999a;
const D3D10_SRGB_TO_FLOAT_OFFSET = 0x3d6147ae;
const D3D10_SRGB_TO_FLOAT_THRESHOLD = 0x3d25aee6;
const D3D10_SRGB_TO_FLOAT_TOLERANCE_IN_ULP = 0x3f000000;
const D3D10_STANDARD_COMPONENT_BIT_COUNT = 0x20;
const D3D10_STANDARD_COMPONENT_BIT_COUNT_DOUBLED = 0x40;
const D3D10_STANDARD_MAXIMUM_ELEMENT_ALIGNMENT_BYTE_MULTIPLE = 0x4;
const D3D10_STANDARD_PIXEL_COMPONENT_COUNT = 0x80;
const D3D10_STANDARD_PIXEL_ELEMENT_COUNT = 0x20;
const D3D10_STANDARD_VECTOR_SIZE = 0x4;
const D3D10_STANDARD_VERTEX_ELEMENT_COUNT = 0x10;
const D3D10_STANDARD_VERTEX_TOTAL_COMPONENT_COUNT = 0x40;
const D3D10_SUBPIXEL_FRACTIONAL_BIT_COUNT = 0x8;
const D3D10_SUBTEXEL_FRACTIONAL_BIT_COUNT = 0x6;
const D3D10_TEXEL_ADDRESS_RANGE_BIT_COUNT = 0x12;
const D3D10_UNBOUND_MEMORY_ACCESS_RESULT = 0x0;
const D3D10_VIEWPORT_AND_SCISSORRECT_MAX_INDEX = 0xf;
const D3D10_VIEWPORT_AND_SCISSORRECT_OBJECT_COUNT_PER_PIPELINE = 0x10;
const D3D10_VIEWPORT_BOUNDS_MAX = 0x3fff;
const D3D10_VIEWPORT_BOUNDS_MIN = 0xffffc000;
const D3D10_VS_INPUT_REGISTER_COMPONENTS = 0x4;
const D3D10_VS_INPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_VS_INPUT_REGISTER_COUNT = 0x10;
const D3D10_VS_INPUT_REGISTER_READS_PER_INST = 0x2;
const D3D10_VS_INPUT_REGISTER_READ_PORTS = 0x1;
const D3D10_VS_OUTPUT_REGISTER_COMPONENTS = 0x4;
const D3D10_VS_OUTPUT_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_VS_OUTPUT_REGISTER_COUNT = 0x10;
const D3D10_WHQL_CONTEXT_COUNT_FOR_RESOURCE_LIMIT = 0xa;
const D3D10_WHQL_DRAWINDEXED_INDEX_COUNT_2_TO_EXP = 0x19;
const D3D10_WHQL_DRAW_VERTEX_COUNT_2_TO_EXP = 0x19;
const D3D_MAJOR_VERSION = 0xa;
const D3D_MINOR_VERSION = 0x0;
const D3D_SPEC_DATE_DAY = 0x8;
const D3D_SPEC_DATE_MONTH = 0x8;
const D3D_SPEC_DATE_YEAR = 0x7d6;
const D3D_SPEC_VERSION = 0xafa2f06;
const D3D10_1_IA_VERTEX_INPUT_STRUCTURE_ELEMENT_COUNT = 0x10;
const D3D10_1_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT = 0x10;
const FACD3D10 = 0x879;
const D3D10_APPEND_ALIGNED_ELEMENT = 0xffffffff;
const D3D10_FILTER_TYPE_MASK = 0x3;
const D3D10_MIN_FILTER_SHIFT = 0x4;
const D3D10_MAG_FILTER_SHIFT = 0x2;
const D3D10_MIP_FILTER_SHIFT = 0x0;
const D3D10_COMPARISON_FILTERING_BIT = 0x80;
const D3D10_ANISOTROPIC_FILTERING_BIT = 0x40;
const D3D10_TEXT_1BIT_BIT = 0x80000000;
const D3D10_SDK_VERSION = 0x1d;
const D3D10_1_DEFAULT_SAMPLE_MASK = 0xffffffff;
const D3D10_1_FLOAT16_FUSED_TOLERANCE_IN_ULP = 0x33333333;
const D3D10_1_FLOAT32_TO_INTEGER_TOLERANCE_IN_ULP = 0x3f19999a;
const D3D10_1_GS_INPUT_REGISTER_COUNT = 0x20;
const D3D10_1_IA_VERTEX_INPUT_STRUCTURE_ELEMENTS_COMPONENTS = 0x80;
const D3D10_1_PS_OUTPUT_MASK_REGISTER_COMPONENTS = 0x1;
const D3D10_1_PS_OUTPUT_MASK_REGISTER_COMPONENT_BIT_COUNT = 0x20;
const D3D10_1_PS_OUTPUT_MASK_REGISTER_COUNT = 0x1;
const D3D10_1_SHADER_MAJOR_VERSION = 0x4;
const D3D10_1_SHADER_MINOR_VERSION = 0x1;
const D3D10_1_SO_BUFFER_MAX_STRIDE_IN_BYTES = 0x800;
const D3D10_1_SO_BUFFER_MAX_WRITE_WINDOW_IN_BYTES = 0x100;
const D3D10_1_SO_BUFFER_SLOT_COUNT = 0x4;
const D3D10_1_SO_MULTIPLE_BUFFER_ELEMENTS_PER_BUFFER = 0x1;
const D3D10_1_SO_SINGLE_BUFFER_COMPONENT_LIMIT = 0x40;
const D3D10_1_STANDARD_VERTEX_ELEMENT_COUNT = 0x20;
const D3D10_1_SUBPIXEL_FRACTIONAL_BIT_COUNT = 0x8;
const D3D10_1_VS_INPUT_REGISTER_COUNT = 0x20;
const D3D10_1_VS_OUTPUT_REGISTER_COUNT = 0x20;
const D3D10_SDK_LAYERS_VERSION = 0xb;
const D3D10_DEBUG_FEATURE_FLUSH_PER_RENDER_OP = 0x1;
const D3D10_DEBUG_FEATURE_FINISH_PER_RENDER_OP = 0x2;
const D3D10_DEBUG_FEATURE_PRESENT_PER_RENDER_OP = 0x4;
const DXGI_DEBUG_D3D10 = 0x0;
const D3D10_INFO_QUEUE_DEFAULT_MESSAGE_COUNT_LIMIT = 0x400;
const D3D10_SHADER_DEBUG = 0x1;
const D3D10_SHADER_SKIP_VALIDATION = 0x2;
const D3D10_SHADER_SKIP_OPTIMIZATION = 0x4;
const D3D10_SHADER_PACK_MATRIX_ROW_MAJOR = 0x8;
const D3D10_SHADER_PACK_MATRIX_COLUMN_MAJOR = 0x10;
const D3D10_SHADER_PARTIAL_PRECISION = 0x20;
const D3D10_SHADER_FORCE_VS_SOFTWARE_NO_OPT = 0x40;
const D3D10_SHADER_FORCE_PS_SOFTWARE_NO_OPT = 0x80;
const D3D10_SHADER_NO_PRESHADER = 0x100;
const D3D10_SHADER_AVOID_FLOW_CONTROL = 0x200;
const D3D10_SHADER_PREFER_FLOW_CONTROL = 0x400;
const D3D10_SHADER_ENABLE_STRICTNESS = 0x800;
const D3D10_SHADER_ENABLE_BACKWARDS_COMPATIBILITY = 0x1000;
const D3D10_SHADER_IEEE_STRICTNESS = 0x2000;
const D3D10_SHADER_WARNINGS_ARE_ERRORS = 0x40000;
const D3D10_SHADER_RESOURCES_MAY_ALIAS = 0x80000;
const D3D10_ENABLE_UNBOUNDED_DESCRIPTOR_TABLES = 0x100000;
const D3D10_ALL_RESOURCES_BOUND = 0x200000;
const D3D10_SHADER_DEBUG_NAME_FOR_SOURCE = 0x400000;
const D3D10_SHADER_DEBUG_NAME_FOR_BINARY = 0x800000;
const D3D10_SHADER_OPTIMIZATION_LEVEL0 = 0x4000;
const D3D10_SHADER_OPTIMIZATION_LEVEL1 = 0x0;
const D3D10_SHADER_OPTIMIZATION_LEVEL3 = 0x8000;
const D3D10_SHADER_FLAGS2_FORCE_ROOT_SIGNATURE_LATEST = 0x0;
const D3D10_SHADER_FLAGS2_FORCE_ROOT_SIGNATURE_1_0 = 0x10;
const D3D10_SHADER_FLAGS2_FORCE_ROOT_SIGNATURE_1_1 = 0x20;
const D3D10_EFFECT_COMPILE_CHILD_EFFECT = 0x1;
const D3D10_EFFECT_COMPILE_ALLOW_SLOW_OPS = 0x2;
const D3D10_EFFECT_SINGLE_THREADED = 0x8;
const D3D10_EFFECT_VARIABLE_POOLED = 0x1;
const D3D10_EFFECT_VARIABLE_ANNOTATION = 0x2;
const D3D10_EFFECT_VARIABLE_EXPLICIT_BIND_POINT = 0x4;
const GUID_DeviceType = 0x0;
