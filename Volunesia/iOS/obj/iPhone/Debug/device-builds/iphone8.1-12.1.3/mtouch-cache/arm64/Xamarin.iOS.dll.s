.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 5.14.0 (explicit/000780ca82c Fri Jan 11 12:38:08 EST 2019)"
	.asciz "Xamarin.iOS.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
ut_0:
add x0, x0, 16
b System_nint__ctor_long
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_0
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip System_nint__ctor_long
System_nint__ctor_long:
.file 1 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/NativeTypes/Primitives.cs"
.loc 1 62 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_0:
.text
ut_1:
add x0, x0, 16
b System_nint_op_Explicit_System_nint
.text
	.align 4
	.no_dead_strip System_nint_op_Explicit_System_nint
System_nint_op_Explicit_System_nint:
.loc 1 127 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1:
.text
ut_2:
add x0, x0, 16
b System_nint_op_Implicit_int
.text
	.align 4
	.no_dead_strip System_nint_op_Implicit_int
System_nint_op_Implicit_int:
.loc 1 248 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xb98013a0
.word 0x93407c00
.word 0xf9000fbf
.word 0xf9000fa0
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2:
.text
ut_3:
add x0, x0, 16
b System_nint_op_Explicit_System_nint_0
.text
	.align 4
	.no_dead_strip System_nint_op_Explicit_System_nint_0
System_nint_op_Explicit_System_nint_0:
.loc 1 259 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3:
.text
ut_4:
add x0, x0, 16
b System_nint_op_Explicit_long
.text
	.align 4
	.no_dead_strip System_nint_op_Explicit_long
System_nint_op_Explicit_long:
.loc 1 292 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf
.word 0xf9400ba0
.word 0xf9000fa0
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4:
.text
ut_5:
add x0, x0, 16
b System_nint_op_Implicit_System_nint
.text
	.align 4
	.no_dead_strip System_nint_op_Implicit_System_nint
System_nint_op_Implicit_System_nint:
.loc 1 303 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_5:
.text
ut_6:
add x0, x0, 16
b System_nint_op_Increment_System_nint
.text
	.align 4
	.no_dead_strip System_nint_op_Increment_System_nint
System_nint_op_Increment_System_nint:
.loc 1 409 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x91000400
.word 0xf9000fbf
.word 0xf9000fa0
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_6:
.text
ut_7:
add x0, x0, 16
b System_nint_op_Multiply_System_nint_System_nint
.text
	.align 4
	.no_dead_strip System_nint_op_Multiply_System_nint_System_nint
System_nint_op_Multiply_System_nint_System_nint:
.loc 1 428 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x9b017c00
.word 0xf90013bf
.word 0xf90013a0
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7:
.text
ut_8:
add x0, x0, 16
b System_nint_op_LessThan_System_nint_System_nint
.text
	.align 4
	.no_dead_strip System_nint_op_LessThan_System_nint_System_nint
System_nint_op_LessThan_System_nint_System_nint:
.loc 1 449 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xeb01001f
.word 0x9a9fa7e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8:
.text
ut_9:
add x0, x0, 16
b System_nint_op_GreaterThan_System_nint_System_nint
.text
	.align 4
	.no_dead_strip System_nint_op_GreaterThan_System_nint_System_nint
System_nint_op_GreaterThan_System_nint_System_nint:
.loc 1 450 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xeb01001f
.word 0x9a9fd7e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_9:
.text
ut_10:
add x0, x0, 16
b System_nint_CompareTo_System_nint
.text
	.align 4
	.no_dead_strip System_nint_CompareTo_System_nint
System_nint_CompareTo_System_nint:
.loc 1 455 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf90013a1
.word 0xf94013a1
.word 0xaa1a03f9
.word 0xaa0103fa
.word 0xf9400320
.word 0xeb01001f
.word 0x5400008a
.word 0x9280001a
.word 0xf2bffffa
.word 0x14000007
.word 0xf9400320
.word 0xeb1a001f
.word 0x5400006d
.word 0xd280003a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a:
.text
ut_11:
add x0, x0, 16
b System_nint_CompareTo_object
.text
	.align 4
	.no_dead_strip System_nint_CompareTo_object
System_nint_CompareTo_object:
.loc 1 458 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003f8
.loc 1 459 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000461
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xeb01001f
.word 0x10000011
.word 0x54000361
.word 0xf9400b41
.word 0xaa1903fa
.word 0xaa0103f9
.word 0xf9400340
.word 0xeb01001f
.word 0x5400008a
.word 0x9280001a
.word 0xf2bffffa
.word 0x14000007
.word 0xf9400340
.word 0xeb19001f
.word 0x5400006d
.word 0xd280003a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0x14000005
.loc 1 460 0
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_1
.word 0x93407c00
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_b:
.text
ut_12:
add x0, x0, 16
b System_nint_Equals_System_nint
.text
	.align 4
	.no_dead_strip System_nint_Equals_System_nint
System_nint_Equals_System_nint:
.loc 1 462 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c:
.text
ut_13:
add x0, x0, 16
b System_nint_Equals_object
.text
	.align 4
	.no_dead_strip System_nint_Equals_object
System_nint_Equals_object:
.loc 1 465 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb4000298
.loc 1 466 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000301
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xeb01001f
.word 0x10000011
.word 0x54000201
.word 0xf9400b41
.word 0xf94013a0
.word 0xf9400000
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x14000005
.loc 1 467 0
.word 0xf94013a0
.word 0xaa1a03e1
bl _p_3
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_d:
.text
ut_14:
add x0, x0, 16
b System_nint_GetHashCode
.text
	.align 4
	.no_dead_strip System_nint_GetHashCode
System_nint_GetHashCode:
.loc 1 469 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba1
.word 0xf9400020
.word 0x93407c00
.word 0xf9400021
.word 0x9360fc21
.word 0x93407c21
.word 0x4a010000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_e:
.text
ut_15:
add x0, x0, 16
b System_nint_ToString
.text
	.align 4
	.no_dead_strip System_nint_ToString
System_nint_ToString:
.loc 1 519 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_4
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_f:
.text
ut_16:
add x0, x0, 16
b System_nint_ToString_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_ToString_System_IFormatProvider
System_nint_ToString_System_IFormatProvider:
.loc 1 520 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_5
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_10:
.text
ut_17:
add x0, x0, 16
b System_nint_ToString_string_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_ToString_string_System_IFormatProvider
System_nint_ToString_string_System_IFormatProvider:
.loc 1 522 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_6
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_11:
.text
ut_18:
add x0, x0, 16
b System_nint_GetTypeCode
.text
	.align 4
	.no_dead_strip System_nint_GetTypeCode
System_nint_GetTypeCode:
.loc 1 524 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800160
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_12:
.text
ut_19:
add x0, x0, 16
b System_nint_System_IConvertible_ToBoolean_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToBoolean_System_IFormatProvider
System_nint_System_IConvertible_ToBoolean_System_IFormatProvider:
.loc 1 526 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #216]
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_13:
.text
ut_20:
add x0, x0, 16
b System_nint_System_IConvertible_ToByte_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToByte_System_IFormatProvider
System_nint_System_IConvertible_ToByte_System_IFormatProvider:
.loc 1 527 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928000f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_14:
.text
ut_21:
add x0, x0, 16
b System_nint_System_IConvertible_ToChar_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToChar_System_IFormatProvider
System_nint_System_IConvertible_ToChar_System_IFormatProvider:
.loc 1 528 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #232]
.word 0x928008f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53003c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_15:
.text
ut_22:
add x0, x0, 16
b System_nint_System_IConvertible_ToDateTime_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToDateTime_System_IFormatProvider
System_nint_System_IConvertible_ToDateTime_System_IFormatProvider:
.loc 1 529 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xf94013a0
.word 0xf9400000
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf9000840
.word 0x910043a0
.word 0xf9001ba0
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #240]
.word 0x928011f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bbe
.word 0xf90003c0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_16:
.text
ut_23:
add x0, x0, 16
b System_nint_System_IConvertible_ToDecimal_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToDecimal_System_IFormatProvider
System_nint_System_IConvertible_ToDecimal_System_IFormatProvider:
.loc 1 530 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xf94013a0
.word 0xf9400000
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf9000840
.word 0x910043a0
.word 0xf9001ba0
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #248]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_17:
.text
ut_24:
add x0, x0, 16
b System_nint_System_IConvertible_ToDouble_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToDouble_System_IFormatProvider
System_nint_System_IConvertible_ToDouble_System_IFormatProvider:
.loc 1 531 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #256]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_18:
.text
ut_25:
add x0, x0, 16
b System_nint_System_IConvertible_ToInt16_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToInt16_System_IFormatProvider
System_nint_System_IConvertible_ToInt16_System_IFormatProvider:
.loc 1 532 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #264]
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93403c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_19:
.text
ut_26:
add x0, x0, 16
b System_nint_System_IConvertible_ToInt32_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToInt32_System_IFormatProvider
System_nint_System_IConvertible_ToInt32_System_IFormatProvider:
.loc 1 533 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #272]
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1a:
.text
ut_27:
add x0, x0, 16
b System_nint_System_IConvertible_ToInt64_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToInt64_System_IFormatProvider
System_nint_System_IConvertible_ToInt64_System_IFormatProvider:
.loc 1 534 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #280]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1b:
.text
ut_28:
add x0, x0, 16
b System_nint_System_IConvertible_ToSByte_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToSByte_System_IFormatProvider
System_nint_System_IConvertible_ToSByte_System_IFormatProvider:
.loc 1 535 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #288]
.word 0x92800cf0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93401c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1c:
.text
ut_29:
add x0, x0, 16
b System_nint_System_IConvertible_ToSingle_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToSingle_System_IFormatProvider
System_nint_System_IConvertible_ToSingle_System_IFormatProvider:
.loc 1 536 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #296]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x1e204000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1d:
.text
ut_30:
add x0, x0, 16
b System_nint_System_IConvertible_ToUInt16_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToUInt16_System_IFormatProvider
System_nint_System_IConvertible_ToUInt16_System_IFormatProvider:
.loc 1 537 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53003c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1e:
.text
ut_31:
add x0, x0, 16
b System_nint_System_IConvertible_ToUInt32_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToUInt32_System_IFormatProvider
System_nint_System_IConvertible_ToUInt32_System_IFormatProvider:
.loc 1 538 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x92800df0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1f:
.text
ut_32:
add x0, x0, 16
b System_nint_System_IConvertible_ToUInt64_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToUInt64_System_IFormatProvider
System_nint_System_IConvertible_ToUInt64_System_IFormatProvider:
.loc 1 539 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #320]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_20:
.text
ut_33:
add x0, x0, 16
b System_nint_System_IConvertible_ToType_System_Type_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nint_System_IConvertible_ToType_System_Type_System_IFormatProvider
System_nint_System_IConvertible_ToType_System_Type_System_IFormatProvider:
.loc 1 542 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800301
bl _p_7
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9000860
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf9400063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #328]
.word 0x928009f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_21:
.text
ut_34:
add x0, x0, 16
b System_nint__cctor
.text
	.align 4
	.no_dead_strip System_nint__cctor
System_nint__cctor:
.loc 1 54 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xd280011e
.word 0xb900001e
.loc 1 56 0
.word 0xd29fffe1
.word 0xf2bfffe1
.word 0xf2dfffe1
.word 0xf2efffe1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xf9000001
.loc 1 57 0
.word 0xd2800001
.word 0xf2f00001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_22:
.text
ut_35:
add x0, x0, 16
b System_nuint__ctor_ulong
.text
	.align 4
	.no_dead_strip System_nuint__ctor_ulong
System_nuint__ctor_ulong:
.loc 1 609 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_23:
.text
ut_36:
add x0, x0, 16
b System_nuint_op_Implicit_byte
.text
	.align 4
	.no_dead_strip System_nuint_op_Implicit_byte
System_nuint_op_Implicit_byte:
.loc 1 685 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x394043a0
.word 0x2a0003e0
.word 0xf9000fbf
.word 0xf9000fa0
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_24:
.text
ut_37:
add x0, x0, 16
b System_nuint_op_Explicit_System_nuint
.text
	.align 4
	.no_dead_strip System_nuint_op_Explicit_System_nuint
System_nuint_op_Explicit_System_nuint:
.loc 1 784 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_25:
.text
ut_38:
add x0, x0, 16
b System_nuint_op_Implicit_uint
.text
	.align 4
	.no_dead_strip System_nuint_op_Implicit_uint
System_nuint_op_Implicit_uint:
.loc 1 795 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xb94013a0
.word 0x2a0003e0
.word 0xf9000fbf
.word 0xf9000fa0
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_26:
.text
ut_39:
add x0, x0, 16
b System_nuint_op_Explicit_ulong
.text
	.align 4
	.no_dead_strip System_nuint_op_Explicit_ulong
System_nuint_op_Explicit_ulong:
.loc 1 839 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf
.word 0xf9400ba0
.word 0xf9000fa0
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_27:
.text
ut_40:
add x0, x0, 16
b System_nuint_op_Implicit_System_nuint
.text
	.align 4
	.no_dead_strip System_nuint_op_Implicit_System_nuint
System_nuint_op_Implicit_System_nuint:
.loc 1 850 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_28:
.text
ut_41:
add x0, x0, 16
b System_nuint_op_Increment_System_nuint
.text
	.align 4
	.no_dead_strip System_nuint_op_Increment_System_nuint
System_nuint_op_Increment_System_nuint:
.loc 1 932 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x91000400
.word 0xf9000fbf
.word 0xf9000fa0
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_29:
.text
ut_42:
add x0, x0, 16
b System_nuint_op_LessThan_System_nuint_System_nuint
.text
	.align 4
	.no_dead_strip System_nuint_op_LessThan_System_nuint_System_nuint
System_nuint_op_LessThan_System_nuint_System_nuint:
.loc 1 972 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xeb01001f
.word 0x9a9f27e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2a:
.text
ut_43:
add x0, x0, 16
b System_nuint_CompareTo_System_nuint
.text
	.align 4
	.no_dead_strip System_nuint_CompareTo_System_nuint
System_nuint_CompareTo_System_nuint:
.loc 1 978 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf90013a1
.word 0xf94013a1
.word 0xaa1a03f9
.word 0xaa0103fa
.word 0xf9400320
.word 0xeb01001f
.word 0x54000082
.word 0x9280001a
.word 0xf2bffffa
.word 0x14000007
.word 0xf9400320
.word 0xeb1a001f
.word 0x54000069
.word 0xd280003a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2b:
.text
ut_44:
add x0, x0, 16
b System_nuint_CompareTo_object
.text
	.align 4
	.no_dead_strip System_nuint_CompareTo_object
System_nuint_CompareTo_object:
.loc 1 981 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003f8
.loc 1 982 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000461
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xeb01001f
.word 0x10000011
.word 0x54000361
.word 0xf9400b41
.word 0xaa1903fa
.word 0xaa0103f9
.word 0xf9400340
.word 0xeb01001f
.word 0x54000082
.word 0x9280001a
.word 0xf2bffffa
.word 0x14000007
.word 0xf9400340
.word 0xeb19001f
.word 0x54000069
.word 0xd280003a
.word 0x14000002
.word 0xd280001a
.word 0xaa1a03e0
.word 0x14000005
.loc 1 983 0
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_8
.word 0x93407c00
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_2c:
.text
ut_45:
add x0, x0, 16
b System_nuint_Equals_System_nuint
.text
	.align 4
	.no_dead_strip System_nuint_Equals_System_nuint
System_nuint_Equals_System_nuint:
.loc 1 985 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2d:
.text
ut_46:
add x0, x0, 16
b System_nuint_Equals_object
.text
	.align 4
	.no_dead_strip System_nuint_Equals_object
System_nuint_Equals_object:
.loc 1 988 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb4000298
.loc 1 989 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000301
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xeb01001f
.word 0x10000011
.word 0x54000201
.word 0xf9400b41
.word 0xf94013a0
.word 0xf9400000
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x14000005
.loc 1 990 0
.word 0xf94013a0
.word 0xaa1a03e1
bl _p_9
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_2e:
.text
ut_47:
add x0, x0, 16
b System_nuint_GetHashCode
.text
	.align 4
	.no_dead_strip System_nuint_GetHashCode
System_nuint_GetHashCode:
.loc 1 992 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba1
.word 0xf9400020
.word 0x93407c00
.word 0xf9400021
.word 0xd360fc21
.word 0x93407c21
.word 0x4a010000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2f:
.text
ut_48:
add x0, x0, 16
b System_nuint_ToString
.text
	.align 4
	.no_dead_strip System_nuint_ToString
System_nuint_ToString:
.loc 1 1042 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_10
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_30:
.text
ut_49:
add x0, x0, 16
b System_nuint_ToString_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_ToString_System_IFormatProvider
System_nuint_ToString_System_IFormatProvider:
.loc 1 1043 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_11
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_31:
.text
ut_50:
add x0, x0, 16
b System_nuint_ToString_string_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_ToString_string_System_IFormatProvider
System_nuint_ToString_string_System_IFormatProvider:
.loc 1 1045 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_12
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_32:
.text
ut_51:
add x0, x0, 16
b System_nuint_GetTypeCode
.text
	.align 4
	.no_dead_strip System_nuint_GetTypeCode
System_nuint_GetTypeCode:
.loc 1 1047 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800180
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_33:
.text
ut_52:
add x0, x0, 16
b System_nuint_System_IConvertible_ToBoolean_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToBoolean_System_IFormatProvider
System_nuint_System_IConvertible_ToBoolean_System_IFormatProvider:
.loc 1 1049 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #216]
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_34:
.text
ut_53:
add x0, x0, 16
b System_nuint_System_IConvertible_ToByte_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToByte_System_IFormatProvider
System_nuint_System_IConvertible_ToByte_System_IFormatProvider:
.loc 1 1050 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928000f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_35:
.text
ut_54:
add x0, x0, 16
b System_nuint_System_IConvertible_ToChar_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToChar_System_IFormatProvider
System_nuint_System_IConvertible_ToChar_System_IFormatProvider:
.loc 1 1051 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #232]
.word 0x928008f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53003c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_36:
.text
ut_55:
add x0, x0, 16
b System_nuint_System_IConvertible_ToDateTime_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToDateTime_System_IFormatProvider
System_nuint_System_IConvertible_ToDateTime_System_IFormatProvider:
.loc 1 1052 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xf94013a0
.word 0xf9400000
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf9000840
.word 0x910043a0
.word 0xf9001ba0
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #240]
.word 0x928011f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bbe
.word 0xf90003c0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_37:
.text
ut_56:
add x0, x0, 16
b System_nuint_System_IConvertible_ToDecimal_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToDecimal_System_IFormatProvider
System_nuint_System_IConvertible_ToDecimal_System_IFormatProvider:
.loc 1 1053 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xf94013a0
.word 0xf9400000
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf9000840
.word 0x910043a0
.word 0xf9001ba0
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #248]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_38:
.text
ut_57:
add x0, x0, 16
b System_nuint_System_IConvertible_ToDouble_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToDouble_System_IFormatProvider
System_nuint_System_IConvertible_ToDouble_System_IFormatProvider:
.loc 1 1054 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #256]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_39:
.text
ut_58:
add x0, x0, 16
b System_nuint_System_IConvertible_ToInt16_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToInt16_System_IFormatProvider
System_nuint_System_IConvertible_ToInt16_System_IFormatProvider:
.loc 1 1055 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #264]
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93403c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3a:
.text
ut_59:
add x0, x0, 16
b System_nuint_System_IConvertible_ToInt32_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToInt32_System_IFormatProvider
System_nuint_System_IConvertible_ToInt32_System_IFormatProvider:
.loc 1 1056 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #272]
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3b:
.text
ut_60:
add x0, x0, 16
b System_nuint_System_IConvertible_ToInt64_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToInt64_System_IFormatProvider
System_nuint_System_IConvertible_ToInt64_System_IFormatProvider:
.loc 1 1057 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #280]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3c:
.text
ut_61:
add x0, x0, 16
b System_nuint_System_IConvertible_ToSByte_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToSByte_System_IFormatProvider
System_nuint_System_IConvertible_ToSByte_System_IFormatProvider:
.loc 1 1058 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #288]
.word 0x92800cf0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93401c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3d:
.text
ut_62:
add x0, x0, 16
b System_nuint_System_IConvertible_ToSingle_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToSingle_System_IFormatProvider
System_nuint_System_IConvertible_ToSingle_System_IFormatProvider:
.loc 1 1059 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #296]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x1e204000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3e:
.text
ut_63:
add x0, x0, 16
b System_nuint_System_IConvertible_ToUInt16_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToUInt16_System_IFormatProvider
System_nuint_System_IConvertible_ToUInt16_System_IFormatProvider:
.loc 1 1060 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53003c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3f:
.text
ut_64:
add x0, x0, 16
b System_nuint_System_IConvertible_ToUInt32_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToUInt32_System_IFormatProvider
System_nuint_System_IConvertible_ToUInt32_System_IFormatProvider:
.loc 1 1061 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x92800df0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_40:
.text
ut_65:
add x0, x0, 16
b System_nuint_System_IConvertible_ToUInt64_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToUInt64_System_IFormatProvider
System_nuint_System_IConvertible_ToUInt64_System_IFormatProvider:
.loc 1 1062 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #320]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_41:
.text
ut_66:
add x0, x0, 16
b System_nuint_System_IConvertible_ToType_System_Type_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nuint_System_IConvertible_ToType_System_Type_System_IFormatProvider
System_nuint_System_IConvertible_ToType_System_Type_System_IFormatProvider:
.loc 1 1065 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xd2800301
bl _p_7
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9000860
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf9400063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #328]
.word 0x928009f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_42:
.text
ut_67:
add x0, x0, 16
b System_nuint__cctor
.text
	.align 4
	.no_dead_strip System_nuint__cctor
System_nuint__cctor:
.loc 1 601 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xd280011e
.word 0xb900001e
.loc 1 603 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #384]
.word 0x9280001e
.word 0xf2bffffe
.word 0xf900001e
.loc 1 604 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #392]
.word 0xf900001f
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_43:
.text
ut_68:
add x0, x0, 16
b System_nfloat__ctor_double
.text
	.align 4
	.no_dead_strip System_nfloat__ctor_double
System_nfloat__ctor_double:
.loc 1 1140 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd400fa0
.word 0xf9400ba0
.word 0xfd000000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_44:
.text
ut_69:
add x0, x0, 16
b System_nfloat_op_Explicit_System_nfloat
.text
	.align 4
	.no_dead_strip System_nfloat_op_Explicit_System_nfloat
System_nfloat_op_Explicit_System_nfloat:
.loc 1 1293 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd400ba0
.word 0x9e780000
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_45:
.text
ut_70:
add x0, x0, 16
b System_nfloat_op_Implicit_single
.text
	.align 4
	.no_dead_strip System_nfloat_op_Implicit_single
System_nfloat_op_Implicit_single:
.loc 1 1370 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xbd0013a0
.word 0xbd4013a0
.word 0x1e22c000
.word 0x9e6703e1
.word 0xfd000fa1
.word 0xfd000fa0
.word 0xfd400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_46:
.text
ut_71:
add x0, x0, 16
b System_nfloat_op_Explicit_System_nfloat_0
.text
	.align 4
	.no_dead_strip System_nfloat_op_Explicit_System_nfloat_0
System_nfloat_op_Explicit_System_nfloat_0:
.loc 1 1381 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd400ba0
.word 0x1e624000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_47:
.text
ut_72:
add x0, x0, 16
b System_nfloat_op_Explicit_double
.text
	.align 4
	.no_dead_strip System_nfloat_op_Explicit_double
System_nfloat_op_Explicit_double:
.loc 1 1392 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd400ba0
.word 0x9e6703e1
.word 0xfd000fa1
.word 0xfd000fa0
.word 0xfd400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_48:
.text
ut_73:
add x0, x0, 16
b System_nfloat_op_Implicit_System_nfloat
.text
	.align 4
	.no_dead_strip System_nfloat_op_Implicit_System_nfloat
System_nfloat_op_Implicit_System_nfloat:
.loc 1 1403 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd400ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_49:
.text
ut_74:
add x0, x0, 16
b System_nfloat_op_Equality_System_nfloat_System_nfloat
.text
	.align 4
	.no_dead_strip System_nfloat_op_Equality_System_nfloat_System_nfloat
System_nfloat_op_Equality_System_nfloat_System_nfloat:
.loc 1 1467 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd000fa1
.word 0xfd400ba0
.word 0xfd400fa1
.word 0x1e612000
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4a:
.text
ut_75:
add x0, x0, 16
b System_nfloat_op_Inequality_System_nfloat_System_nfloat
.text
	.align 4
	.no_dead_strip System_nfloat_op_Inequality_System_nfloat_System_nfloat
System_nfloat_op_Inequality_System_nfloat_System_nfloat:
.loc 1 1468 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd000fa1
.word 0xfd400ba0
.word 0xfd400fa1
.word 0x1e612000
.word 0x9a9f17e0
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4b:
.text
ut_76:
add x0, x0, 16
b System_nfloat_CompareTo_System_nfloat
.text
	.align 4
	.no_dead_strip System_nfloat_CompareTo_System_nfloat
System_nfloat_CompareTo_System_nfloat:
.loc 1 1475 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd400fa0
.word 0xf9400ba0
bl _p_13
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4c:
.text
ut_77:
add x0, x0, 16
b System_nfloat_CompareTo_object
.text
	.align 4
	.no_dead_strip System_nfloat_CompareTo_object
System_nfloat_CompareTo_object:
.loc 1 1478 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #400]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb4000278
.loc 1 1479 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540002e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #400]
.word 0xeb01001f
.word 0x10000011
.word 0x540001e1
.word 0xfd400b40
.word 0xf94013a0
bl _p_13
.word 0x93407c00
.word 0x14000005
.loc 1 1480 0
.word 0xf94013a0
.word 0xaa1a03e1
bl _p_14
.word 0x93407c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_4d:
.text
ut_78:
add x0, x0, 16
b System_nfloat_Equals_System_nfloat
.text
	.align 4
	.no_dead_strip System_nfloat_Equals_System_nfloat
System_nfloat_Equals_System_nfloat:
.loc 1 1482 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd400fa0
.word 0xf9400ba0
bl _p_15
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4e:
.text
ut_79:
add x0, x0, 16
b System_nfloat_Equals_object
.text
	.align 4
	.no_dead_strip System_nfloat_Equals_object
System_nfloat_Equals_object:
.loc 1 1485 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #400]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb4000278
.loc 1 1486 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540002e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #400]
.word 0xeb01001f
.word 0x10000011
.word 0x540001e1
.word 0xfd400b40
.word 0xf94013a0
bl _p_15
.word 0x53001c00
.word 0x14000005
.loc 1 1487 0
.word 0xf94013a0
.word 0xaa1a03e1
bl _p_16
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_4f:
.text
ut_80:
add x0, x0, 16
b System_nfloat_GetHashCode
.text
	.align 4
	.no_dead_strip System_nfloat_GetHashCode
System_nfloat_GetHashCode:
.loc 1 1489 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_17
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_50:
.text
ut_81:
add x0, x0, 16
b System_nfloat_ToString
.text
	.align 4
	.no_dead_strip System_nfloat_ToString
System_nfloat_ToString:
.loc 1 1549 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_18
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_51:
.text
ut_82:
add x0, x0, 16
b System_nfloat_ToString_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_ToString_System_IFormatProvider
System_nfloat_ToString_System_IFormatProvider:
.loc 1 1550 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_19
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_52:
.text
ut_83:
add x0, x0, 16
b System_nfloat_ToString_string_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_ToString_string_System_IFormatProvider
System_nfloat_ToString_string_System_IFormatProvider:
.loc 1 1552 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_20
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_53:
.text
ut_84:
add x0, x0, 16
b System_nfloat_GetTypeCode
.text
	.align 4
	.no_dead_strip System_nfloat_GetTypeCode
System_nfloat_GetTypeCode:
.loc 1 1554 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd28001c0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_54:
.text
ut_85:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToBoolean_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToBoolean_System_IFormatProvider
System_nfloat_System_IConvertible_ToBoolean_System_IFormatProvider:
.loc 1 1556 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #216]
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_55:
.text
ut_86:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToByte_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToByte_System_IFormatProvider
System_nfloat_System_IConvertible_ToByte_System_IFormatProvider:
.loc 1 1557 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928000f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_56:
.text
ut_87:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToChar_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToChar_System_IFormatProvider
System_nfloat_System_IConvertible_ToChar_System_IFormatProvider:
.loc 1 1558 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #232]
.word 0x928008f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53003c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_57:
.text
ut_88:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToDateTime_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToDateTime_System_IFormatProvider
System_nfloat_System_IConvertible_ToDateTime_System_IFormatProvider:
.loc 1 1559 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xf94013a0
.word 0xfd400000
.word 0xfd0023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4023a0
.word 0xfd000840
.word 0x910043a0
.word 0xf9001ba0
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #240]
.word 0x928011f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bbe
.word 0xf90003c0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_58:
.text
ut_89:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToDecimal_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToDecimal_System_IFormatProvider
System_nfloat_System_IConvertible_ToDecimal_System_IFormatProvider:
.loc 1 1560 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1
.word 0xf94013a0
.word 0xfd400000
.word 0xfd0023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4023a0
.word 0xfd000840
.word 0x910043a0
.word 0xf9001ba0
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #248]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_59:
.text
ut_90:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToDouble_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToDouble_System_IFormatProvider
System_nfloat_System_IConvertible_ToDouble_System_IFormatProvider:
.loc 1 1561 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #256]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5a:
.text
ut_91:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToInt16_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToInt16_System_IFormatProvider
System_nfloat_System_IConvertible_ToInt16_System_IFormatProvider:
.loc 1 1562 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #264]
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93403c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5b:
.text
ut_92:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToInt32_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToInt32_System_IFormatProvider
System_nfloat_System_IConvertible_ToInt32_System_IFormatProvider:
.loc 1 1563 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #272]
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5c:
.text
ut_93:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToInt64_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToInt64_System_IFormatProvider
System_nfloat_System_IConvertible_ToInt64_System_IFormatProvider:
.loc 1 1564 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #280]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5d:
.text
ut_94:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToSByte_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToSByte_System_IFormatProvider
System_nfloat_System_IConvertible_ToSByte_System_IFormatProvider:
.loc 1 1565 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #288]
.word 0x92800cf0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93401c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5e:
.text
ut_95:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToSingle_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToSingle_System_IFormatProvider
System_nfloat_System_IConvertible_ToSingle_System_IFormatProvider:
.loc 1 1566 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #296]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x1e204000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5f:
.text
ut_96:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToUInt16_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToUInt16_System_IFormatProvider
System_nfloat_System_IConvertible_ToUInt16_System_IFormatProvider:
.loc 1 1567 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #304]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x53003c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_60:
.text
ut_97:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToUInt32_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToUInt32_System_IFormatProvider
System_nfloat_System_IConvertible_ToUInt32_System_IFormatProvider:
.loc 1 1568 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #312]
.word 0x92800df0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_61:
.text
ut_98:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToUInt64_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToUInt64_System_IFormatProvider
System_nfloat_System_IConvertible_ToUInt64_System_IFormatProvider:
.loc 1 1569 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd0013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xfd4013a0
.word 0xfd000840
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #320]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_62:
.text
ut_99:
add x0, x0, 16
b System_nfloat_System_IConvertible_ToType_System_Type_System_IFormatProvider
.text
	.align 4
	.no_dead_strip System_nfloat_System_IConvertible_ToType_System_Type_System_IFormatProvider
System_nfloat_System_IConvertible_ToType_System_Type_System_IFormatProvider:
.loc 1 1572 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xfd400000
.word 0xfd001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xd2800301
bl _p_7
.word 0xaa0003e3
.word 0xfd401ba0
.word 0xfd000860
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf9400063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #328]
.word 0x928009f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_63:
.text
ut_100:
add x0, x0, 16
b System_nfloat__cctor
.text
	.align 4
	.no_dead_strip System_nfloat__cctor
System_nfloat__cctor:
.loc 1 1128 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #416]
.word 0xd280011e
.word 0xb900001e
.loc 1 1130 0
.word 0xd29ffffe
.word 0xf2bffffe
.word 0xf2dffffe
.word 0xf2effdfe
.word 0x9e6703c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #424]
.word 0xfd000000
.loc 1 1131 0
.word 0xd29ffffe
.word 0xf2bffffe
.word 0xf2dffffe
.word 0xf2fffdfe
.word 0x9e6703c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #432]
.word 0xfd000000
.loc 1 1132 0
.word 0xd280003e
.word 0x9e6703c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #440]
.word 0xfd000000
.loc 1 1133 0
.word 0xd280001e
.word 0xf2ffff1e
.word 0x9e6703c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #448]
.word 0xfd000000
.loc 1 1134 0
.word 0xd280001e
.word 0xf2fffe1e
.word 0x9e6703c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #456]
.word 0xfd000000
.loc 1 1135 0
.word 0xd280001e
.word 0xf2effe1e
.word 0x9e6703c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #464]
.word 0xfd000000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_64:
.text
ut_101:
add x0, x0, 16
b System_Drawing_Point_op_Equality_System_Drawing_Point_System_Drawing_Point
.text
	.align 4
	.no_dead_strip System_Drawing_Point_op_Equality_System_Drawing_Point_System_Drawing_Point
System_Drawing_Point_op_Equality_System_Drawing_Point_System_Drawing_Point:
.file 2 "/Users/builder/jenkins/workspace/xamarin-macios/xamarin-macios/external/mono/mcs/class/System.Drawing/System.Drawing/Point.cs"
.loc 2 153 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf90013a1
.word 0xb98013a0
.word 0xb98023a1
.word 0x6b01001f
.word 0x540000c1
.word 0xb98017a0
.word 0xb98027a1
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_65:
.text
ut_102:
add x0, x0, 16
b System_Drawing_Point__ctor_int_int
.text
	.align 4
	.no_dead_strip System_Drawing_Point__ctor_int_int
System_Drawing_Point__ctor_int_int:
.loc 2 258 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9000001
.loc 2 259 0
.word 0xb98023a1
.word 0xb9000401
.loc 2 260 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_66:
.text
ut_103:
add x0, x0, 16
b System_Drawing_Point_get_X
.text
	.align 4
	.no_dead_strip System_Drawing_Point_get_X
System_Drawing_Point_get_X:
.loc 2 291 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_67:
.text
ut_104:
add x0, x0, 16
b System_Drawing_Point_get_Y
.text
	.align 4
	.no_dead_strip System_Drawing_Point_get_Y
System_Drawing_Point_get_Y:
.loc 2 308 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9800400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_68:
.text
ut_105:
add x0, x0, 16
b System_Drawing_Point_Equals_object
.text
	.align 4
	.no_dead_strip System_Drawing_Point_Equals_object
System_Drawing_Point_Equals_object:
.loc 2 325 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #472]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000078
.loc 2 326 0
.word 0xd2800000
.word 0x1400001c
.loc 2 328 0
.word 0xf94013a0
.word 0xb9800001
.word 0xb90033a1
.word 0xb9800400
.word 0xb90037a0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540002e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #472]
.word 0xeb01001f
.word 0x10000011
.word 0x540001e1
.word 0x91004340
.word 0xb9800001
.word 0xb9002ba1
.word 0xb9800400
.word 0xb9002fa0
.word 0xf9401ba0
.word 0xf94017a1
bl _p_21
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_69:
.text
ut_106:
add x0, x0, 16
b System_Drawing_Point_GetHashCode
.text
	.align 4
	.no_dead_strip System_Drawing_Point_GetHashCode
System_Drawing_Point_GetHashCode:
.loc 2 341 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba1
.word 0xb9800020
.word 0xb9800421
.word 0x4a010000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_6a:
.text
ut_107:
add x0, x0, 16
b System_Drawing_Point_ToString
.text
	.align 4
	.no_dead_strip System_Drawing_Point_ToString
System_Drawing_Point_ToString:
.loc 2 368 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #480]
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #488]
.word 0x3980b410
.word 0xb5000050
bl _p_22

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #496]
.word 0xf9400001
.word 0xf9400ba0
bl _p_23
.word 0xf90027a0
.word 0xf9400ba0
.word 0x91001000
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #488]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf9402ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #496]
.word 0xf9400021
bl _p_23
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _p_24
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_6b:
.text
ut_108:
add x0, x0, 16
b System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF
System_Drawing_PointF_op_Equality_System_Drawing_PointF_System_Drawing_PointF:
.file 3 "/Users/builder/jenkins/workspace/xamarin-macios/xamarin-macios/external/mono/mcs/class/System.Drawing/System.Drawing/PointF.cs"
.loc 3 88 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xbd0013a0
.word 0xbd0017a1
.word 0xbd0053a2
.word 0xbd0057a3
.word 0xbd4013a0
.word 0xbd0093a0
.word 0xbd4093a0
.word 0xbd4053a1
.word 0xbd0093a1
.word 0xbd4093a1
.word 0x1e212000
.word 0x54000141
.word 0xbd4017a0
.word 0xbd0093a0
.word 0xbd4093a0
.word 0xbd4057a1
.word 0xbd0093a1
.word 0xbd4093a1
.word 0x1e212000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_6c:
.text
ut_109:
add x0, x0, 16
b System_Drawing_PointF_get_X
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_get_X
System_Drawing_PointF_get_X:
.loc 3 171 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_6d:
.text
ut_110:
add x0, x0, 16
b System_Drawing_PointF_get_Y
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_get_Y
System_Drawing_PointF_get_Y:
.loc 3 188 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_6e:
.text
ut_111:
add x0, x0, 16
b System_Drawing_PointF_Equals_object
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_Equals_object
System_Drawing_PointF_Equals_object:
.loc 3 205 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #504]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000078
.loc 3 206 0
.word 0xd2800000
.word 0x1400001e
.loc 3 208 0
.word 0xf94013a0
.word 0xb9800001
.word 0xb90033a1
.word 0xb9800400
.word 0xb90037a0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000321
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #504]
.word 0xeb01001f
.word 0x10000011
.word 0x54000221
.word 0x91004340
.word 0xb9800001
.word 0xb9002ba1
.word 0xb9800400
.word 0xb9002fa0
.word 0xbd4033a0
.word 0xbd4037a1
.word 0xbd402ba2
.word 0xbd402fa3
bl _p_25
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_6f:
.text
ut_112:
add x0, x0, 16
b System_Drawing_PointF_GetHashCode
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_GetHashCode
System_Drawing_PointF_GetHashCode:
.loc 3 221 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba1
.word 0xbd400020
.word 0x9e380000
.word 0x93407c00
.word 0xbd400420
.word 0x9e380001
.word 0x93407c21
.word 0x4a010000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_70:
.text
ut_113:
add x0, x0, 16
b System_Drawing_PointF_ToString
.text
	.align 4
	.no_dead_strip System_Drawing_PointF_ToString
System_Drawing_PointF_ToString:
.loc 3 234 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xf90023a0
bl _p_26
.word 0xaa0003e1
.word 0xf9400ba0
bl _p_27
.word 0xf90027a0
.word 0xf9400ba0
.word 0x91001000
.word 0xf9002ba0
bl _p_26
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_27
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _p_24
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_71:
.text
ut_114:
add x0, x0, 16
b System_Drawing_Rectangle_op_Equality_System_Drawing_Rectangle_System_Drawing_Rectangle
.text
	.align 4
	.no_dead_strip System_Drawing_Rectangle_op_Equality_System_Drawing_Rectangle_System_Drawing_Rectangle
System_Drawing_Rectangle_op_Equality_System_Drawing_Rectangle_System_Drawing_Rectangle:
.file 4 "/Users/builder/jenkins/workspace/xamarin-macios/xamarin-macios/external/mono/mcs/class/System.Drawing/System.Drawing/Rectangle.cs"
.loc 4 256 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0x910043a0
.word 0xb9800001
.word 0xb98017a0
.word 0xb9006bbf
.word 0xb9006fbf
.word 0xb9006ba1
.word 0xb9006fa0
.word 0xb9806ba0
.word 0xb9004ba0
.word 0xb9806fa0
.word 0xb9004fa0
.word 0x910083a0
.word 0xb9800001
.word 0xb98027a0
.word 0xb90063bf
.word 0xb90067bf
.word 0xb90063a1
.word 0xb90067a0
.word 0xb98063a0
.word 0xb90043a0
.word 0xb98067a0
.word 0xb90047a0
.word 0xf94027a0
.word 0xf94023a1
bl _p_21
.word 0x53001c00
.word 0x34000380
.word 0x910043a0
.word 0xb9800801
.word 0xb9801fa0
.word 0xb9005bbf
.word 0xb9005fbf
.word 0xb9005ba1
.word 0xb9005fa0
.word 0xb9805ba0
.word 0xb9003ba0
.word 0xb9805fa0
.word 0xb9003fa0
.word 0x910083a0
.word 0xb9800801
.word 0xb9802fa0
.word 0xb90053bf
.word 0xb90057bf
.word 0xb90053a1
.word 0xb90057a0
.word 0xb98053a0
.word 0xb90033a0
.word 0xb98057a0
.word 0xb90037a0
.word 0xf9401fa0
.word 0xf9401ba1
bl _p_28
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_72:
.text
ut_115:
add x0, x0, 16
b System_Drawing_Rectangle_get_Height
.text
	.align 4
	.no_dead_strip System_Drawing_Rectangle_get_Height
System_Drawing_Rectangle_get_Height:
.loc 4 342 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9800c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_73:
.text
ut_116:
add x0, x0, 16
b System_Drawing_Rectangle_get_Location
.text
	.align 4
	.no_dead_strip System_Drawing_Rectangle_get_Location
System_Drawing_Rectangle_get_Location:
.loc 4 390 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0xb9800001
.word 0xb9800400
.word 0xb9002bbf
.word 0xb9002fbf
.word 0xb9002ba1
.word 0xb9002fa0
.word 0xb9802ba0
.word 0xb90013a0
.word 0xb9802fa0
.word 0xb90017a0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_74:
.text
ut_117:
add x0, x0, 16
b System_Drawing_Rectangle_get_Size
.text
	.align 4
	.no_dead_strip System_Drawing_Rectangle_get_Size
System_Drawing_Rectangle_get_Size:
.loc 4 425 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0xb9800801
.word 0xb9800c00
.word 0xb9002bbf
.word 0xb9002fbf
.word 0xb9002ba1
.word 0xb9002fa0
.word 0xb9802ba0
.word 0xb90013a0
.word 0xb9802fa0
.word 0xb90017a0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_75:
.text
ut_118:
add x0, x0, 16
b System_Drawing_Rectangle_get_Width
.text
	.align 4
	.no_dead_strip System_Drawing_Rectangle_get_Width
System_Drawing_Rectangle_get_Width:
.loc 4 459 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9800800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_76:
.text
ut_119:
add x0, x0, 16
b System_Drawing_Rectangle_Equals_object
.text
	.align 4
	.no_dead_strip System_Drawing_Rectangle_Equals_object
System_Drawing_Rectangle_Equals_object:
.loc 4 551 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #520]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000078
.loc 4 552 0
.word 0xd2800000
.word 0x14000026
.loc 4 554 0
.word 0xf94013a0
.word 0xb9800001
.word 0xb9003ba1
.word 0xb9800401
.word 0xb9003fa1
.word 0xb9800801
.word 0xb90043a1
.word 0xb9800c00
.word 0xb90047a0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540003a1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #520]
.word 0xeb01001f
.word 0x10000011
.word 0x540002a1
.word 0x91004340
.word 0xb9800001
.word 0xb9002ba1
.word 0xb9800401
.word 0xb9002fa1
.word 0xb9800801
.word 0xb90033a1
.word 0xb9800c00
.word 0xb90037a0
.word 0xf9401fa0
.word 0xf94023a1
.word 0xf94017a2
.word 0xf9401ba3
bl _p_29
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_77:
.text
ut_120:
add x0, x0, 16
b System_Drawing_Rectangle_GetHashCode
.text
	.align 4
	.no_dead_strip System_Drawing_Rectangle_GetHashCode
System_Drawing_Rectangle_GetHashCode:
.loc 4 567 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9800f40
.word 0xb9800b41
.word 0xb010000
.word 0xb9800341
.word 0xb9800742
.word 0xb020021
.word 0x4a010000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_78:
.text
ut_121:
add x0, x0, 16
b System_Drawing_Rectangle_ToString
.text
	.align 4
	.no_dead_strip System_Drawing_Rectangle_ToString
System_Drawing_Rectangle_ToString:
.loc 4 628 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #528]
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800081
bl _p_30
.word 0xf90043a0
.word 0xf9003ba0
.word 0xb9800340
.word 0xf9003fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xd2800281
bl _p_7
.word 0xaa0003e2
.word 0xf9403fa0
.word 0xf94043a3
.word 0xb9001040
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf90037a0
.word 0xf9002fa0
.word 0xb9800740
.word 0xf90033a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xd2800281
bl _p_7
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a3
.word 0xb9001040
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xf90023a0
.word 0xb9800b40
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xd2800281
bl _p_7
.word 0xaa0003e2
.word 0xf94027a0
.word 0xf9402ba3
.word 0xb9001040
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94023a0
.word 0xf9001fa0
.word 0xf90017a0
.word 0xb9800f40
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xd2800281
bl _p_7
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa3
.word 0xb9001040
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94013a0
.word 0xf94017a1
bl _p_31
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_79:
.text
ut_122:
add x0, x0, 16
b System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF
System_Drawing_RectangleF_op_Equality_System_Drawing_RectangleF_System_Drawing_RectangleF:
.file 5 "/Users/builder/jenkins/workspace/xamarin-macios/xamarin-macios/external/mono/mcs/class/System.Drawing/System.Drawing/RectangleF.cs"
.loc 5 179 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xbd0013a0
.word 0xbd0017a1
.word 0xbd001ba2
.word 0xbd001fa3
.word 0xbd0053a4
.word 0xbd0057a5
.word 0xbd005ba6
.word 0xbd005fa7
.word 0xbd4013a0
.word 0xbd0093a0
.word 0xbd4093a0
.word 0xbd4053a1
.word 0xbd0093a1
.word 0xbd4093a1
.word 0x1e212000
.word 0x54000341
.word 0xbd4017a0
.word 0xbd0093a0
.word 0xbd4093a0
.word 0xbd4057a1
.word 0xbd0093a1
.word 0xbd4093a1
.word 0x1e212000
.word 0x54000241
.word 0xbd401ba0
.word 0xbd0093a0
.word 0xbd4093a0
.word 0xbd405ba1
.word 0xbd0093a1
.word 0xbd4093a1
.word 0x1e212000
.word 0x54000141
.word 0xbd401fa0
.word 0xbd0093a0
.word 0xbd4093a0
.word 0xbd405fa1
.word 0xbd0093a1
.word 0xbd4093a1
.word 0x1e212000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_7a:
.text
ut_123:
add x0, x0, 16
b System_Drawing_RectangleF_get_Height
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_get_Height
System_Drawing_RectangleF_get_Height:
.loc 5 278 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_7b:
.text
ut_124:
add x0, x0, 16
b System_Drawing_RectangleF_get_Width
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_get_Width
System_Drawing_RectangleF_get_Width:
.loc 5 396 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_7c:
.text
ut_125:
add x0, x0, 16
b System_Drawing_RectangleF_get_X
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_get_X
System_Drawing_RectangleF_get_X:
.loc 5 413 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_7d:
.text
ut_126:
add x0, x0, 16
b System_Drawing_RectangleF_get_Y
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_get_Y
System_Drawing_RectangleF_get_Y:
.loc 5 430 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_7e:
.text
ut_127:
add x0, x0, 16
b System_Drawing_RectangleF_Equals_object
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_Equals_object
System_Drawing_RectangleF_Equals_object:
.loc 5 488 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #552]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000078
.loc 5 489 0
.word 0xd2800000
.word 0x1400002a
.loc 5 491 0
.word 0xf94013a0
.word 0xb9800001
.word 0xb9003ba1
.word 0xb9800401
.word 0xb9003fa1
.word 0xb9800801
.word 0xb90043a1
.word 0xb9800c00
.word 0xb90047a0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000421
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #552]
.word 0xeb01001f
.word 0x10000011
.word 0x54000321
.word 0x91004340
.word 0xb9800001
.word 0xb9002ba1
.word 0xb9800401
.word 0xb9002fa1
.word 0xb9800801
.word 0xb90033a1
.word 0xb9800c00
.word 0xb90037a0
.word 0xbd403ba0
.word 0xbd403fa1
.word 0xbd4043a2
.word 0xbd4047a3
.word 0xbd402ba4
.word 0xbd402fa5
.word 0xbd4033a6
.word 0xbd4037a7
bl _p_32
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_7f:
.text
ut_128:
add x0, x0, 16
b System_Drawing_RectangleF_GetHashCode
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_GetHashCode
System_Drawing_RectangleF_GetHashCode:
.loc 5 504 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xbd400340
.word 0xbd400741
.word 0x1e212800
.word 0xbd400b41
.word 0x1e212800
.word 0xbd400f41
.word 0x1e212800
.word 0x9e380000
.word 0x93407c00
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_80:
.text
ut_129:
add x0, x0, 16
b System_Drawing_RectangleF_ToString
.text
	.align 4
	.no_dead_strip System_Drawing_RectangleF_ToString
System_Drawing_RectangleF_ToString:
.loc 5 564 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #528]
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800081
bl _p_30
.word 0xf9003fa0
.word 0xf9003ba0
.word 0xbd400340
.word 0xfd0043a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #560]
.word 0xd2800281
bl _p_7
.word 0xaa0003e2
.word 0xf9403fa3
.word 0xfd4043a0
.word 0xbd001040
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf90033a0
.word 0xf9002fa0
.word 0xbd400740
.word 0xfd0037a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #560]
.word 0xd2800281
bl _p_7
.word 0xaa0003e2
.word 0xf94033a3
.word 0xfd4037a0
.word 0xbd001040
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9402fa0
.word 0xf90027a0
.word 0xf90023a0
.word 0xbd400b40
.word 0xfd002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #560]
.word 0xd2800281
bl _p_7
.word 0xaa0003e2
.word 0xf94027a3
.word 0xfd402ba0
.word 0xbd001040
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf90017a0
.word 0xbd400f40
.word 0xfd001fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #560]
.word 0xd2800281
bl _p_7
.word 0xaa0003e2
.word 0xf9401ba3
.word 0xfd401fa0
.word 0xbd001040
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94013a0
.word 0xf94017a1
bl _p_31
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_81:
.text
ut_130:
add x0, x0, 16
b System_Drawing_Size_op_Equality_System_Drawing_Size_System_Drawing_Size
.text
	.align 4
	.no_dead_strip System_Drawing_Size_op_Equality_System_Drawing_Size_System_Drawing_Size
System_Drawing_Size_op_Equality_System_Drawing_Size_System_Drawing_Size:
.file 6 "/Users/builder/jenkins/workspace/xamarin-macios/xamarin-macios/external/mono/mcs/class/System.Drawing/System.Drawing/Size.cs"
.loc 6 152 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf90013a1
.word 0xb98013a0
.word 0xb98023a1
.word 0x6b01001f
.word 0x540000c1
.word 0xb98017a0
.word 0xb98027a1
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_82:
.text
ut_131:
add x0, x0, 16
b System_Drawing_Size_op_Inequality_System_Drawing_Size_System_Drawing_Size
.text
	.align 4
	.no_dead_strip System_Drawing_Size_op_Inequality_System_Drawing_Size_System_Drawing_Size
System_Drawing_Size_op_Inequality_System_Drawing_Size_System_Drawing_Size:
.loc 6 168 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf90013a1
.word 0xb98013a0
.word 0xb98023a1
.word 0x6b01001f
.word 0x54000121
.word 0xb98017a0
.word 0xb98027a1
.word 0x6b01001f
.word 0x9a9f17e0
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800020
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_83:
.text
ut_132:
add x0, x0, 16
b System_Drawing_Size__ctor_int_int
.text
	.align 4
	.no_dead_strip System_Drawing_Size__ctor_int_int
System_Drawing_Size__ctor_int_int:
.loc 6 243 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9000001
.loc 6 244 0
.word 0xb98023a1
.word 0xb9000401
.loc 6 245 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_84:
.text
ut_133:
add x0, x0, 16
b System_Drawing_Size_get_Width
.text
	.align 4
	.no_dead_strip System_Drawing_Size_get_Width
System_Drawing_Size_get_Width:
.loc 6 276 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_85:
.text
ut_134:
add x0, x0, 16
b System_Drawing_Size_get_Height
.text
	.align 4
	.no_dead_strip System_Drawing_Size_get_Height
System_Drawing_Size_get_Height:
.loc 6 293 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9800400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_86:
.text
ut_135:
add x0, x0, 16
b System_Drawing_Size_Equals_object
.text
	.align 4
	.no_dead_strip System_Drawing_Size_Equals_object
System_Drawing_Size_Equals_object:
.loc 6 310 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #568]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000078
.loc 6 311 0
.word 0xd2800000
.word 0x1400001c
.loc 6 313 0
.word 0xf94013a0
.word 0xb9800001
.word 0xb90033a1
.word 0xb9800400
.word 0xb90037a0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540002e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #568]
.word 0xeb01001f
.word 0x10000011
.word 0x540001e1
.word 0x91004340
.word 0xb9800001
.word 0xb9002ba1
.word 0xb9800400
.word 0xb9002fa0
.word 0xf9401ba0
.word 0xf94017a1
bl _p_28
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_87:
.text
ut_136:
add x0, x0, 16
b System_Drawing_Size_GetHashCode
.text
	.align 4
	.no_dead_strip System_Drawing_Size_GetHashCode
System_Drawing_Size_GetHashCode:
.loc 6 326 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba1
.word 0xb9800020
.word 0xb9800421
.word 0x4a010000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_88:
.text
ut_137:
add x0, x0, 16
b System_Drawing_Size_ToString
.text
	.align 4
	.no_dead_strip System_Drawing_Size_ToString
System_Drawing_Size_ToString:
.loc 6 339 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #576]
.word 0xf90023a0
.word 0xf9400ba0
.word 0xb9800000
.word 0xf9002fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xd2800281
bl _p_7
.word 0xf9402fa1
.word 0xb9001001
.word 0xf90027a0
.word 0xf9400ba0
.word 0xb9800400
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xd2800281
bl _p_7
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba3
.word 0xb9001043
bl _p_24
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_89:
.text
ut_138:
add x0, x0, 16
b System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF
System_Drawing_SizeF_op_Equality_System_Drawing_SizeF_System_Drawing_SizeF:
.file 7 "/Users/builder/jenkins/workspace/xamarin-macios/xamarin-macios/external/mono/mcs/class/System.Drawing/System.Drawing/SizeF.cs"
.loc 7 91 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xbd0013a0
.word 0xbd0017a1
.word 0xbd0053a2
.word 0xbd0057a3
.word 0xbd4013a0
.word 0xbd0093a0
.word 0xbd4093a0
.word 0xbd4053a1
.word 0xbd0093a1
.word 0xbd4093a1
.word 0x1e212000
.word 0x54000141
.word 0xbd4017a0
.word 0xbd0093a0
.word 0xbd4093a0
.word 0xbd4057a1
.word 0xbd0093a1
.word 0xbd4093a1
.word 0x1e212000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_8a:
.text
ut_139:
add x0, x0, 16
b System_Drawing_SizeF_get_Width
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_get_Width
System_Drawing_SizeF_get_Width:
.loc 7 215 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8b:
.text
ut_140:
add x0, x0, 16
b System_Drawing_SizeF_get_Height
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_get_Height
System_Drawing_SizeF_get_Height:
.loc 7 232 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xbd400400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8c:
.text
ut_141:
add x0, x0, 16
b System_Drawing_SizeF_Equals_object
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_Equals_object
System_Drawing_SizeF_Equals_object:
.loc 7 249 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #584]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000078
.loc 7 250 0
.word 0xd2800000
.word 0x1400001e
.loc 7 252 0
.word 0xf94013a0
.word 0xb9800001
.word 0xb90033a1
.word 0xb9800400
.word 0xb90037a0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000321
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #584]
.word 0xeb01001f
.word 0x10000011
.word 0x54000221
.word 0x91004340
.word 0xb9800001
.word 0xb9002ba1
.word 0xb9800400
.word 0xb9002fa0
.word 0xbd4033a0
.word 0xbd4037a1
.word 0xbd402ba2
.word 0xbd402fa3
bl _p_33
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_8d:
.text
ut_142:
add x0, x0, 16
b System_Drawing_SizeF_GetHashCode
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_GetHashCode
System_Drawing_SizeF_GetHashCode:
.loc 7 265 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba1
.word 0xbd400020
.word 0x9e380000
.word 0x93407c00
.word 0xbd400420
.word 0x9e380001
.word 0x93407c21
.word 0x4a010000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_8e:
.text
ut_143:
add x0, x0, 16
b System_Drawing_SizeF_ToString
.text
	.align 4
	.no_dead_strip System_Drawing_SizeF_ToString
System_Drawing_SizeF_ToString:
.loc 7 294 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #576]
.word 0xf90023a0
bl _p_26
.word 0xaa0003e1
.word 0xf9400ba0
bl _p_27
.word 0xf90027a0
.word 0xf9400ba0
.word 0x91001000
.word 0xf9002ba0
bl _p_26
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_27
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _p_24
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_8f:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_throw_ns_exception_intptr
ObjCRuntime_Runtime_throw_ns_exception_intptr:
.file 8 "/Users/builder/jenkins/workspace/xamarin-macios/xamarin-macios/runtime/Delegates.generated.cs"
.loc 8 128 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_34
.loc 8 129 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_90:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_rethrow_managed_exception_uint_int_
ObjCRuntime_Runtime_rethrow_managed_exception_uint_int_:
.loc 8 134 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb90023bf
.word 0xf90017bf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 136 0
.word 0xb94013a0
bl _p_35
.loc 8 137 0
.word 0x14000032
.word 0xf9001ba0
.word 0xf9401ba0
.word 0x910103a1
.word 0xf90027a1
.loc 8 138 0
.word 0xd2800041
bl _p_36
.word 0xf94027be
.word 0xf90003c0
.word 0xb98043a0
.word 0xb90023a0
.loc 8 139 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb9005ba1
.word 0xb9805ba1
.word 0xb9006ba1
.word 0xb9806ba1
.word 0xb9007ba1
.word 0xb9807ba1
.word 0xf90043bf
.word 0x910203a2
.word 0xf90047a2
.word 0xb90093a1
.word 0xf94047a1
.word 0xb98093a2
.word 0x93407c42
.word 0xf9000022
.word 0xf94043a1
.word 0xf9003ba1
.word 0xf9403ba1
.word 0xf90033a1
.word 0xf94033a1
.word 0xf9002ba1
.word 0xf9402ba1
.word 0xf90017a1
.word 0x9100a3a1
.word 0xf90053a1
.word 0xf94053a1
.word 0xf9400021
.word 0x93407c21
.word 0xb9009ba1
.word 0xb9809ba1
.word 0xb9000001
.loc 8 140 0
bl _p_37
.word 0xf90063a0
.word 0xf94063a0
.word 0xb4000060
.word 0xf94063a0
bl _p_38
.word 0x14000001
.loc 8 141 0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_91:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_create_ns_exception_intptr_int_
ObjCRuntime_Runtime_create_ns_exception_intptr_int_:
.loc 8 146 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9002bbf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 148 0
.word 0xf9400ba0
bl _p_39
.word 0x93407c00
.word 0xb9002ba0
.word 0x14000033
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 150 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 151 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 152 0
.word 0xb9002bbf
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 154 0
.word 0xb9802ba0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_92:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_unwrap_ns_exception_int_int_
ObjCRuntime_Runtime_unwrap_ns_exception_int_int_:
.loc 8 159 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017bf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 161 0
.word 0xb98013a0
bl _p_40
.word 0xf90017a0
.word 0x14000035
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 163 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 164 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 165 0
.word 0xd2800000
.word 0x93407c00
.word 0xf90017a0
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 167 0
.word 0xf94017a0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_93:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_create_block_proxy_intptr_intptr_int_
ObjCRuntime_Runtime_create_block_proxy_intptr_intptr_int_:
.loc 8 185 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9001bbf
.word 0xb9002bbf
.word 0xf9001fbf
.word 0xf94013a0
.word 0xb900001f
.loc 8 187 0
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_41
.word 0xf9001ba0
.word 0x14000035
.word 0xf90023a0
.word 0xf94023a0
.word 0x910143a1
.word 0xf9002fa1
.loc 8 189 0
.word 0xd2800041
bl _p_36
.word 0xf9402fbe
.word 0xf90003c0
.word 0xb98053a0
.word 0xb9002ba0
.loc 8 190 0
.word 0xf94013a0
.word 0xb9802ba1
.word 0xb9006ba1
.word 0xb9806ba1
.word 0xb9007ba1
.word 0xb9807ba1
.word 0xb9008ba1
.word 0xb9808ba1
.word 0xf9004bbf
.word 0x910243a2
.word 0xf9004fa2
.word 0xb900a3a1
.word 0xf9404fa1
.word 0xb980a3a2
.word 0x93407c42
.word 0xf9000022
.word 0xf9404ba1
.word 0xf90043a1
.word 0xf94043a1
.word 0xf9003ba1
.word 0xf9403ba1
.word 0xf90033a1
.word 0xf94033a1
.word 0xf9001fa1
.word 0x9100e3a1
.word 0xf9005ba1
.word 0xf9405ba1
.word 0xf9400021
.word 0x93407c21
.word 0xb900aba1
.word 0xb980aba1
.word 0xb9000001
.loc 8 191 0
.word 0xd2800000
.word 0x93407c00
.word 0xf9001ba0
bl _p_37
.word 0xf9006ba0
.word 0xf9406ba0
.word 0xb4000060
.word 0xf9406ba0
bl _p_38
.word 0x14000001
.loc 8 193 0
.word 0xf9401ba0
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_94:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_create_delegate_proxy_intptr_intptr_intptr_int_
ObjCRuntime_Runtime_create_delegate_proxy_intptr_intptr_intptr_int_:
.loc 8 198 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001fbf
.word 0xb90033bf
.word 0xf90023bf
.word 0xf94017a0
.word 0xb900001f
.loc 8 200 0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_42
.word 0xf9001fa0
.word 0x14000035
.word 0xf90027a0
.word 0xf94027a0
.word 0x910163a1
.word 0xf90033a1
.loc 8 202 0
.word 0xd2800041
bl _p_36
.word 0xf94033be
.word 0xf90003c0
.word 0xb9805ba0
.word 0xb90033a0
.loc 8 203 0
.word 0xf94017a0
.word 0xb98033a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xb90093a1
.word 0xb98093a1
.word 0xf9004fbf
.word 0x910263a2
.word 0xf90053a2
.word 0xb900aba1
.word 0xf94053a1
.word 0xb980aba2
.word 0x93407c42
.word 0xf9000022
.word 0xf9404fa1
.word 0xf90047a1
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf90023a1
.word 0x910103a1
.word 0xf9005fa1
.word 0xf9405fa1
.word 0xf9400021
.word 0x93407c21
.word 0xb900b3a1
.word 0xb980b3a1
.word 0xb9000001
.loc 8 204 0
.word 0xd2800000
.word 0x93407c00
.word 0xf9001fa0
bl _p_37
.word 0xf9006fa0
.word 0xf9406fa0
.word 0xb4000060
.word 0xf9406fa0
bl _p_38
.word 0x14000001
.loc 8 206 0
.word 0xf9401fa0
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_95:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_get_class_intptr_int_
ObjCRuntime_Runtime_get_class_intptr_int_:
.loc 8 223 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017bf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 225 0
.word 0xf9400ba0
bl _p_43
.word 0xf90017a0
.word 0x14000035
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 227 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 228 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 229 0
.word 0xd2800000
.word 0x93407c00
.word 0xf90017a0
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 231 0
.word 0xf94017a0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_96:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_get_selector_intptr_int_
ObjCRuntime_Runtime_get_selector_intptr_int_:
.loc 8 236 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017bf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 238 0
.word 0xf9400ba0
bl _p_44
.word 0xf90017a0
.word 0x14000035
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 240 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 241 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 242 0
.word 0xd2800000
.word 0x93407c00
.word 0xf90017a0
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 244 0
.word 0xf94017a0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_97:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_has_nsobject_intptr_int_
ObjCRuntime_Runtime_has_nsobject_intptr_int_:
.loc 8 274 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x3900a3bf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 276 0
.word 0xf9400ba0
bl _p_45
.word 0x53001c00
.word 0x3900a3a0
.word 0x14000034
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 278 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 279 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 280 0
.word 0xd2800000
.word 0x3900a3a0
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 282 0
.word 0x3940a3a0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_98:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_get_handle_for_inativeobject_intptr_int_
ObjCRuntime_Runtime_get_handle_for_inativeobject_intptr_int_:
.loc 8 287 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017bf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 289 0
.word 0xf9400ba0
bl _p_46
.word 0xf90017a0
.word 0x14000035
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 291 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 292 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 293 0
.word 0xd2800000
.word 0x93407c00
.word 0xf90017a0
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 295 0
.word 0xf94017a0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_99:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_unregister_nsobject_intptr_intptr_int_
ObjCRuntime_Runtime_unregister_nsobject_intptr_intptr_int_:
.loc 8 300 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb9002bbf
.word 0xf9001bbf
.word 0xf94013a0
.word 0xb900001f
.loc 8 302 0
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_47
.loc 8 303 0
.word 0x14000032
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 304 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb9002ba0
.loc 8 305 0
.word 0xf94013a0
.word 0xb9802ba1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 306 0
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 307 0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_9a:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_try_get_or_construct_nsobject_intptr_int_
ObjCRuntime_Runtime_try_get_or_construct_nsobject_intptr_int_:
.loc 8 312 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017bf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 314 0
.word 0xf9400ba0
bl _p_48
.word 0xf90017a0
.word 0x14000035
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 316 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 317 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 318 0
.word 0xd2800000
.word 0x93407c00
.word 0xf90017a0
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 320 0
.word 0xf94017a0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_9b:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_get_inative_object_dynamic_intptr_bool_intptr_int_
ObjCRuntime_Runtime_get_inative_object_dynamic_intptr_bool_intptr_int_:
.loc 8 325 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001fbf
.word 0xb90033bf
.word 0xf90023bf
.word 0xf94017a0
.word 0xb900001f
.loc 8 327 0
.word 0xf9400ba0
.word 0x394063a1
.word 0xf94013a2
bl _p_49
.word 0xf9001fa0
.word 0x14000035
.word 0xf90027a0
.word 0xf94027a0
.word 0x910163a1
.word 0xf90033a1
.loc 8 329 0
.word 0xd2800041
bl _p_36
.word 0xf94033be
.word 0xf90003c0
.word 0xb9805ba0
.word 0xb90033a0
.loc 8 330 0
.word 0xf94017a0
.word 0xb98033a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xb90093a1
.word 0xb98093a1
.word 0xf9004fbf
.word 0x910263a2
.word 0xf90053a2
.word 0xb900aba1
.word 0xf94053a1
.word 0xb980aba2
.word 0x93407c42
.word 0xf9000022
.word 0xf9404fa1
.word 0xf90047a1
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf90023a1
.word 0x910103a1
.word 0xf9005fa1
.word 0xf9405fa1
.word 0xf9400021
.word 0x93407c21
.word 0xb900b3a1
.word 0xb980b3a1
.word 0xb9000001
.loc 8 331 0
.word 0xd2800000
.word 0x93407c00
.word 0xf9001fa0
bl _p_37
.word 0xf9006fa0
.word 0xf9406fa0
.word 0xb4000060
.word 0xf9406fa0
bl _p_38
.word 0x14000001
.loc 8 333 0
.word 0xf9401fa0
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_9c:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_get_method_from_token_uint_int_
ObjCRuntime_Runtime_get_method_from_token_uint_int_:
.loc 8 338 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017bf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 340 0
.word 0xb94013a0
bl _p_50
.word 0xf90017a0
.word 0x14000035
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 342 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 343 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 344 0
.word 0xd2800000
.word 0x93407c00
.word 0xf90017a0
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 346 0
.word 0xf94017a0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_9d:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_get_generic_method_from_token_intptr_uint_int_
ObjCRuntime_Runtime_get_generic_method_from_token_intptr_uint_int_:
.loc 8 351 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9001bbf
.word 0xb9002bbf
.word 0xf9001fbf
.word 0xf94013a0
.word 0xb900001f
.loc 8 353 0
.word 0xf9400ba0
.word 0xb9401ba1
bl _p_51
.word 0xf9001ba0
.word 0x14000035
.word 0xf90023a0
.word 0xf94023a0
.word 0x910143a1
.word 0xf9002fa1
.loc 8 355 0
.word 0xd2800041
bl _p_36
.word 0xf9402fbe
.word 0xf90003c0
.word 0xb98053a0
.word 0xb9002ba0
.loc 8 356 0
.word 0xf94013a0
.word 0xb9802ba1
.word 0xb9006ba1
.word 0xb9806ba1
.word 0xb9007ba1
.word 0xb9807ba1
.word 0xb9008ba1
.word 0xb9808ba1
.word 0xf9004bbf
.word 0x910243a2
.word 0xf9004fa2
.word 0xb900a3a1
.word 0xf9404fa1
.word 0xb980a3a2
.word 0x93407c42
.word 0xf9000022
.word 0xf9404ba1
.word 0xf90043a1
.word 0xf94043a1
.word 0xf9003ba1
.word 0xf9403ba1
.word 0xf90033a1
.word 0xf94033a1
.word 0xf9001fa1
.word 0x9100e3a1
.word 0xf9005ba1
.word 0xf9405ba1
.word 0xf9400021
.word 0x93407c21
.word 0xb900aba1
.word 0xb980aba1
.word 0xb9000001
.loc 8 357 0
.word 0xd2800000
.word 0x93407c00
.word 0xf9001ba0
bl _p_37
.word 0xf9006ba0
.word 0xf9406ba0
.word 0xb4000060
.word 0xf9406ba0
bl _p_38
.word 0x14000001
.loc 8 359 0
.word 0xf9401ba0
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_9e:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_get_inative_object_static_intptr_bool_string_string_int_
ObjCRuntime_Runtime_get_inative_object_static_intptr_bool_string_string_int_:
.loc 8 364 0 prologue_end
.word 0xa9b17bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf90023bf
.word 0xb9003bbf
.word 0xf90027bf
.word 0xf9401ba0
.word 0xb900001f
.loc 8 366 0
.word 0xf9400ba0
.word 0x394063a1
.word 0xf94013a2
.word 0xf94017a3
bl _p_52
.word 0xf90023a0
.word 0x14000035
.word 0xf9002ba0
.word 0xf9402ba0
.word 0x910183a1
.word 0xf90037a1
.loc 8 368 0
.word 0xd2800041
bl _p_36
.word 0xf94037be
.word 0xf90003c0
.word 0xb98063a0
.word 0xb9003ba0
.loc 8 369 0
.word 0xf9401ba0
.word 0xb9803ba1
.word 0xb9007ba1
.word 0xb9807ba1
.word 0xb9008ba1
.word 0xb9808ba1
.word 0xb9009ba1
.word 0xb9809ba1
.word 0xf90053bf
.word 0x910283a2
.word 0xf90057a2
.word 0xb900b3a1
.word 0xf94057a1
.word 0xb980b3a2
.word 0x93407c42
.word 0xf9000022
.word 0xf94053a1
.word 0xf9004ba1
.word 0xf9404ba1
.word 0xf90043a1
.word 0xf94043a1
.word 0xf9003ba1
.word 0xf9403ba1
.word 0xf90027a1
.word 0x910123a1
.word 0xf90063a1
.word 0xf94063a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900bba1
.word 0xb980bba1
.word 0xb9000001
.loc 8 370 0
.word 0xd2800000
.word 0x93407c00
.word 0xf90023a0
bl _p_37
.word 0xf90073a0
.word 0xf94073a0
.word 0xb4000060
.word 0xf94073a0
bl _p_38
.word 0x14000001
.loc 8 372 0
.word 0xf94023a0
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0

Lme_9f:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_get_nsobject_with_type_intptr_intptr_bool__intptr_intptr_int_
ObjCRuntime_Runtime_get_nsobject_with_type_intptr_intptr_bool__intptr_intptr_int_:
.loc 8 377 0 prologue_end
.word 0xa9b17bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf9001fa5
.word 0xf90027bf
.word 0xb90043bf
.word 0xf9002bbf
.word 0xf9401fa0
.word 0xb900001f
.loc 8 379 0
.word 0xf94013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94017a3
.word 0xf9401ba4
bl _p_53
.word 0xf90027a0
.word 0x14000037
.word 0xf9002fa0
.word 0xf9402fa0
.word 0x9101a3a1
.word 0xf9003ba1
.loc 8 381 0
.word 0xd2800041
bl _p_36
.word 0xf9403bbe
.word 0xf90003c0
.word 0xb9806ba0
.word 0xb90043a0
.loc 8 382 0
.word 0xf9401fa0
.word 0xb98043a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xb90093a1
.word 0xb98093a1
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xf90057bf
.word 0x9102a3a2
.word 0xf9005ba2
.word 0xb900bba1
.word 0xf9405ba1
.word 0xb980bba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94057a1
.word 0xf9004fa1
.word 0xf9404fa1
.word 0xf90047a1
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf9002ba1
.word 0x910143a1
.word 0xf90067a1
.word 0xf94067a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900c3a1
.word 0xb980c3a1
.word 0xb9000001
.loc 8 383 0
.word 0xf94013a0
.word 0x3900001f
.loc 8 384 0
.word 0xd2800000
.word 0x93407c00
.word 0xf90027a0
bl _p_37
.word 0xf90077a0
.word 0xf94077a0
.word 0xb4000060
.word 0xf94077a0
bl _p_38
.word 0x14000001
.loc 8 386 0
.word 0xf94027a0
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0

Lme_a0:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_dispose_intptr_int_
ObjCRuntime_Runtime_dispose_intptr_int_:
.loc 8 391 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb90023bf
.word 0xf90017bf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 393 0
.word 0xf9400ba0
bl _p_54
.loc 8 394 0
.word 0x14000032
.word 0xf9001ba0
.word 0xf9401ba0
.word 0x910103a1
.word 0xf90027a1
.loc 8 395 0
.word 0xd2800041
bl _p_36
.word 0xf94027be
.word 0xf90003c0
.word 0xb98043a0
.word 0xb90023a0
.loc 8 396 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb9005ba1
.word 0xb9805ba1
.word 0xb9006ba1
.word 0xb9806ba1
.word 0xb9007ba1
.word 0xb9807ba1
.word 0xf90043bf
.word 0x910203a2
.word 0xf90047a2
.word 0xb90093a1
.word 0xf94047a1
.word 0xb98093a2
.word 0x93407c42
.word 0xf9000022
.word 0xf94043a1
.word 0xf9003ba1
.word 0xf9403ba1
.word 0xf90033a1
.word 0xf94033a1
.word 0xf9002ba1
.word 0xf9402ba1
.word 0xf90017a1
.word 0x9100a3a1
.word 0xf90053a1
.word 0xf94053a1
.word 0xf9400021
.word 0x93407c21
.word 0xb9009ba1
.word 0xb9809ba1
.word 0xb9000001
.loc 8 397 0
bl _p_37
.word 0xf90063a0
.word 0xf94063a0
.word 0xb4000060
.word 0xf94063a0
bl _p_38
.word 0x14000001
.loc 8 398 0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_a1:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_create_product_exception_for_error_int_string_int_
ObjCRuntime_Runtime_create_product_exception_for_error_int_string_int_:
.loc 8 441 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb90033bf
.word 0xb9002bbf
.word 0xf9001fbf
.word 0xf94013a0
.word 0xb900001f
.loc 8 443 0
.word 0xb98013a0
.word 0xf9400fa1
bl _p_55
.word 0x93407c00
.word 0xb90033a0
.word 0x14000033
.word 0xf90023a0
.word 0xf94023a0
.word 0x910143a1
.word 0xf9002fa1
.loc 8 445 0
.word 0xd2800041
bl _p_36
.word 0xf9402fbe
.word 0xf90003c0
.word 0xb98053a0
.word 0xb9002ba0
.loc 8 446 0
.word 0xf94013a0
.word 0xb9802ba1
.word 0xb9006ba1
.word 0xb9806ba1
.word 0xb9007ba1
.word 0xb9807ba1
.word 0xb9008ba1
.word 0xb9808ba1
.word 0xf9004bbf
.word 0x910243a2
.word 0xf9004fa2
.word 0xb900a3a1
.word 0xf9404fa1
.word 0xb980a3a2
.word 0x93407c42
.word 0xf9000022
.word 0xf9404ba1
.word 0xf90043a1
.word 0xf94043a1
.word 0xf9003ba1
.word 0xf9403ba1
.word 0xf90033a1
.word 0xf94033a1
.word 0xf9001fa1
.word 0x9100e3a1
.word 0xf9005ba1
.word 0xf9405ba1
.word 0xf9400021
.word 0x93407c21
.word 0xb900aba1
.word 0xb980aba1
.word 0xb9000001
.loc 8 447 0
.word 0xb90033bf
bl _p_37
.word 0xf9006ba0
.word 0xf9406ba0
.word 0xb4000060
.word 0xf9406ba0
bl _p_38
.word 0x14000001
.loc 8 449 0
.word 0xb98033a0
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_a2:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_reflection_type_get_full_name_intptr_int_
ObjCRuntime_Runtime_reflection_type_get_full_name_intptr_int_:
.loc 8 454 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017bf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 456 0
.word 0xf9400ba0
bl _p_56
.word 0xf90017a0
.word 0x14000035
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 458 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 459 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 460 0
.word 0xd2800000
.word 0x93407c00
.word 0xf90017a0
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 462 0
.word 0xf94017a0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_a3:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_lookup_managed_type_name_intptr_int_
ObjCRuntime_Runtime_lookup_managed_type_name_intptr_int_:
.loc 8 467 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90017bf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 469 0
.word 0xf9400ba0
bl _p_57
.word 0xf90017a0
.word 0x14000035
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 471 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 472 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 473 0
.word 0xd2800000
.word 0x93407c00
.word 0xf90017a0
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 475 0
.word 0xf94017a0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_a4:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_on_marshal_managed_exception_int_int_
ObjCRuntime_Runtime_on_marshal_managed_exception_int_int_:
.loc 8 480 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9002bbf
.word 0xb90023bf
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xb900001f
.loc 8 482 0
.word 0xb98013a0
bl _p_58
.word 0x93407c00
.word 0xb9002ba0
.word 0x14000033
.word 0xf9001fa0
.word 0xf9401fa0
.word 0x910123a1
.word 0xf9002ba1
.loc 8 484 0
.word 0xd2800041
bl _p_36
.word 0xf9402bbe
.word 0xf90003c0
.word 0xb9804ba0
.word 0xb90023a0
.loc 8 485 0
.word 0xf9400fa0
.word 0xb98023a1
.word 0xb90063a1
.word 0xb98063a1
.word 0xb90073a1
.word 0xb98073a1
.word 0xb90083a1
.word 0xb98083a1
.word 0xf90047bf
.word 0x910223a2
.word 0xf9004ba2
.word 0xb9009ba1
.word 0xf9404ba1
.word 0xb9809ba2
.word 0x93407c42
.word 0xf9000022
.word 0xf94047a1
.word 0xf9003fa1
.word 0xf9403fa1
.word 0xf90037a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0xf9402fa1
.word 0xf9001ba1
.word 0x9100c3a1
.word 0xf90057a1
.word 0xf94057a1
.word 0xf9400021
.word 0x93407c21
.word 0xb900a3a1
.word 0xb980a3a1
.word 0xb9000001
.loc 8 486 0
.word 0xb9002bbf
bl _p_37
.word 0xf90067a0
.word 0xf94067a0
.word 0xb4000060
.word 0xf94067a0
bl _p_38
.word 0x14000001
.loc 8 488 0
.word 0xb9802ba0
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_a5:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_on_marshal_objectivec_exception_intptr_bool_int_
ObjCRuntime_Runtime_on_marshal_objectivec_exception_intptr_bool_int_:
.loc 8 493 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb90033bf
.word 0xb9002bbf
.word 0xf9001fbf
.word 0xf94013a0
.word 0xb900001f
.loc 8 495 0
.word 0xf9400ba0
.word 0x394063a1
bl _p_59
.word 0x93407c00
.word 0xb90033a0
.word 0x14000033
.word 0xf90023a0
.word 0xf94023a0
.word 0x910143a1
.word 0xf9002fa1
.loc 8 497 0
.word 0xd2800041
bl _p_36
.word 0xf9402fbe
.word 0xf90003c0
.word 0xb98053a0
.word 0xb9002ba0
.loc 8 498 0
.word 0xf94013a0
.word 0xb9802ba1
.word 0xb9006ba1
.word 0xb9806ba1
.word 0xb9007ba1
.word 0xb9807ba1
.word 0xb9008ba1
.word 0xb9808ba1
.word 0xf9004bbf
.word 0x910243a2
.word 0xf9004fa2
.word 0xb900a3a1
.word 0xf9404fa1
.word 0xb980a3a2
.word 0x93407c42
.word 0xf9000022
.word 0xf9404ba1
.word 0xf90043a1
.word 0xf94043a1
.word 0xf9003ba1
.word 0xf9403ba1
.word 0xf90033a1
.word 0xf94033a1
.word 0xf9001fa1
.word 0x9100e3a1
.word 0xf9005ba1
.word 0xf9405ba1
.word 0xf9400021
.word 0x93407c21
.word 0xb900aba1
.word 0xb980aba1
.word 0xb9000001
.loc 8 499 0
.word 0xb90033bf
bl _p_37
.word 0xf9006ba0
.word 0xf9406ba0
.word 0xb4000060
.word 0xf9406ba0
bl _p_38
.word 0x14000001
.loc 8 501 0
.word 0xb98033a0
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_a6:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_create_runtime_exception_int_intptr_int_
ObjCRuntime_Runtime_create_runtime_exception_int_intptr_int_:
.loc 8 532 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb90033bf
.word 0xb9002bbf
.word 0xf9001fbf
.word 0xf94013a0
.word 0xb900001f
.loc 8 534 0
.word 0xb98013a0
.word 0xf9400fa1
bl _p_60
.word 0x93407c00
.word 0xb90033a0
.word 0x14000033
.word 0xf90023a0
.word 0xf94023a0
.word 0x910143a1
.word 0xf9002fa1
.loc 8 536 0
.word 0xd2800041
bl _p_36
.word 0xf9402fbe
.word 0xf90003c0
.word 0xb98053a0
.word 0xb9002ba0
.loc 8 537 0
.word 0xf94013a0
.word 0xb9802ba1
.word 0xb9006ba1
.word 0xb9806ba1
.word 0xb9007ba1
.word 0xb9807ba1
.word 0xb9008ba1
.word 0xb9808ba1
.word 0xf9004bbf
.word 0x910243a2
.word 0xf9004fa2
.word 0xb900a3a1
.word 0xf9404fa1
.word 0xb980a3a2
.word 0x93407c42
.word 0xf9000022
.word 0xf9404ba1
.word 0xf90043a1
.word 0xf94043a1
.word 0xf9003ba1
.word 0xf9403ba1
.word 0xf90033a1
.word 0xf94033a1
.word 0xf9001fa1
.word 0x9100e3a1
.word 0xf9005ba1
.word 0xf9405ba1
.word 0xf9400021
.word 0x93407c21
.word 0xb900aba1
.word 0xb980aba1
.word 0xb9000001
.loc 8 538 0
.word 0xb90033bf
bl _p_37
.word 0xf9006ba0
.word 0xf9406ba0
.word 0xb4000060
.word 0xf9406ba0
bl _p_38
.word 0x14000001
.loc 8 540 0
.word 0xb98033a0
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_a7:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_RegisterDelegates_ObjCRuntime_Runtime_InitializationOptions_
ObjCRuntime_Runtime_RegisterDelegates_ObjCRuntime_Runtime_InitializationOptions_:
.loc 8 546 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9400740
.word 0xf9006fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #592]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #600]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #608]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #616]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9406fa0
.word 0xf9000801
.loc 8 547 0
.word 0xf9400740
.word 0xf9006ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #624]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #632]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #640]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #648]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9406ba0
.word 0xf9000c01
.loc 8 548 0
.word 0xf9400740
.word 0xf90067a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #664]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #672]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #680]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94067a0
.word 0xf9001001
.loc 8 549 0
.word 0xf9400740
.word 0xf90063a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #688]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #696]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #704]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #712]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94063a0
.word 0xf9001401
.loc 8 550 0
.word 0xf9400740
.word 0xf9005fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #720]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #728]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #736]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #744]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9405fa0
.word 0xf9001c01
.loc 8 551 0
.word 0xf9400740
.word 0xf9005ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #752]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #760]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #768]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #776]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9405ba0
.word 0xf9002001
.loc 8 552 0
.word 0xf9400740
.word 0xf90057a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #784]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #792]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #800]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #808]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94057a0
.word 0xf9002801
.loc 8 553 0
.word 0xf9400740
.word 0xf90053a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #824]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #832]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94053a0
.word 0xf9002c01
.loc 8 554 0
.word 0xf9400740
.word 0xf9004fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #848]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #856]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #864]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #872]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9404fa0
.word 0xf9003801
.loc 8 555 0
.word 0xf9400740
.word 0xf9004ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #880]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #888]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #896]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #904]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9404ba0
.word 0xf9003c01
.loc 8 556 0
.word 0xf9400740
.word 0xf90047a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #912]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #920]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #928]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #936]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf9004001
.loc 8 557 0
.word 0xf9400740
.word 0xf90043a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #944]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #952]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #960]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #968]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94043a0
.word 0xf9004401
.loc 8 558 0
.word 0xf9400740
.word 0xf9003fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #976]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #984]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #992]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1000]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9004801
.loc 8 559 0
.word 0xf9400740
.word 0xf9003ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1008]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1016]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1024]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1032]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9403ba0
.word 0xf9004c01
.loc 8 560 0
.word 0xf9400740
.word 0xf90037a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1040]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1048]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1056]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1064]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94037a0
.word 0xf9005001
.loc 8 561 0
.word 0xf9400740
.word 0xf90033a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1072]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1080]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1088]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1096]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94033a0
.word 0xf9005401
.loc 8 562 0
.word 0xf9400740
.word 0xf9002fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1104]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1112]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1120]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1128]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9402fa0
.word 0xf9005801
.loc 8 563 0
.word 0xf9400740
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1136]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1144]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1152]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1160]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9402ba0
.word 0xf9005c01
.loc 8 564 0
.word 0xf9400740
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1168]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1176]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1184]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1192]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94027a0
.word 0xf9006c01
.loc 8 565 0
.word 0xf9400740
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1200]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1208]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1216]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1224]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94023a0
.word 0xf9007001
.loc 8 566 0
.word 0xf9400740
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1232]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1240]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1248]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1256]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9401fa0
.word 0xf9007401
.loc 8 567 0
.word 0xf9400740
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1264]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1272]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1280]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1288]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xf9007801
.loc 8 568 0
.word 0xf9400740
.word 0xf90017a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1296]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1304]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1312]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1320]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94017a0
.word 0xf9007c01
.loc 8 569 0
.word 0xf9400740
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1328]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1336]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1344]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1352]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
bl _p_61
.word 0xaa0003e1
.word 0xf94013a0
.word 0xf9008801
.loc 8 574 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_a8:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_Initialize_ObjCRuntime_Runtime_InitializationOptions_
ObjCRuntime_Runtime_Initialize_ObjCRuntime_Runtime_InitializationOptions_:
.file 9 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/Runtime.cs"
.loc 9 189 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9800340
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1360]
bl _p_62
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94023a0
.word 0x6b01001f
.word 0x54001541
.loc 9 229 0
.word 0xd2800100
.word 0xd2800101
.word 0x6b01001f
.word 0x54000f01
.loc 9 236 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1368]
.word 0xd2800201
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1376]
.word 0xf9000001
.loc 9 237 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1384]
.word 0xd2800201
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1392]
.word 0xf9000001
.loc 9 239 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xf900001a
.loc 9 240 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1408]
.word 0xd2800401
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1416]
.word 0xf9400000
.word 0xf9000820
.word 0x91004022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1424]
.word 0xf9000001
.loc 9 241 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1376]
.word 0xf9400000
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1432]
.word 0xd2800901
bl _p_7
.word 0xf94027a1
.word 0xf90023a0
bl _p_63
.word 0xf94023a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0xf9000001
.loc 9 242 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1448]
.word 0xd2800201
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1456]
.word 0xf9000001
.loc 9 244 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1464]
.word 0x3980b410
.word 0xb5000050
bl _p_22

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1472]
.word 0xf9400001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1480]
.word 0xf9000001
.loc 9 248 0
.word 0xaa1a03e0
bl _p_64
.loc 9 249 0
.word 0xaa1a03e0
bl _p_65
.loc 9 250 0
.word 0xaa1a03e0
bl _p_66
.loc 9 253 0
.word 0xd2800020
bl _p_67
.loc 9 256 0
.word 0xb9802341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1488]
.word 0xb9000001
.loc 9 257 0
.word 0xb9802741

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1496]
.word 0xb9000001
.loc 9 259 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1504]
.word 0xd280003e
.word 0x3900001e
.loc 9 263 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.loc 9 230 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2803301
bl _p_68
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2805ae1
bl _p_68
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2805ba1
bl _p_68
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _p_24
.word 0xaa0003fa
.loc 9 232 0
bl _p_69
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9403450
.word 0xd63f0200
.loc 9 233 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283e940
.word 0xaa1a03e1
bl _p_70
bl _p_38

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.loc 9 190 0
.word 0xd2801821
bl _p_68
.word 0xaa0003fa
.loc 9 191 0
bl _p_69
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9403450
.word 0xd63f0200
.loc 9 226 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283e820
.word 0xaa1a03e1
bl _p_70
bl _p_38

Lme_a9:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_set_UseAutoreleasePoolInThreadPool_bool
ObjCRuntime_Runtime_set_UseAutoreleasePoolInThreadPool_bool:
.loc 9 272 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0x394063a0
.word 0x35000060
.word 0xd2800019
.word 0x14000017

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1536]
.word 0xd2800e01
bl _p_7

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1544]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1552]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1560]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
.word 0xaa0003f9

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1568]
.word 0xf9000019
.loc 9 273 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1576]
.word 0x394063a1
.word 0x39000001
.loc 9 274 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_aa:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_ThreadPoolDispatcher_System_Func_1_bool
ObjCRuntime_Runtime_ThreadPoolDispatcher_System_Func_1_bool:
.loc 9 279 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fbf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_71
.word 0xf90023a0
bl _p_72
.word 0xf94023a0
.word 0xf9000fa0
.loc 9 280 0
.word 0xaa1a03e0
.word 0xf9400f50
.word 0xd63f0200
.word 0x53001c00
.word 0x53001c1a
.word 0xf90013bf
.word 0x94000005
.word 0xf94013a0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf9001fbe
.word 0xf9400fa0
.word 0xb4000160
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401fbe
.word 0xd61f03c0
.loc 9 281 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_ab:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_OnMarshalObjectiveCException_intptr_bool
ObjCRuntime_Runtime_OnMarshalObjectiveCException_intptr_bool:
.loc 9 309 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x3400011a

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1600]
.word 0xf9400000
.word 0xb5000060
.loc 9 310 0
.word 0xd2800040
.word 0x1400003c
.loc 9 312 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1600]
.word 0xf9400000
.word 0xb4000660
.loc 9 313 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1608]
.word 0xaa1903e0
bl _p_74
.word 0xaa0003f9
.loc 9 314 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1616]
.word 0xd2800401
bl _p_7
.word 0x3940001e
.word 0xf9000819
.word 0x91004001
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f9
.word 0xaa0003f8
.word 0x350000da

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1488]
.word 0xb980001a
.word 0x14000002
.word 0xd280005a
.word 0x3940031e
.word 0xb9001b1a
.word 0xaa1903fa
.loc 9 320 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1600]
.word 0xf9400003
.word 0xaa0303e0
.word 0xd2800001
.word 0xaa1903e2
.word 0xf9001ba3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf9401ba0
.loc 9 321 0
.word 0x3940033e
.word 0xb9801b20
.word 0x14000005
.loc 9 323 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1488]
.word 0xb9800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ac:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_OnMarshalManagedException_int
ObjCRuntime_Runtime_OnMarshalManagedException_int:
.loc 9 328 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xb90023bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1624]
.word 0xf9400000
.word 0xb40007e0
.loc 9 329 0
.word 0x93407f40
.word 0x910083a1
.word 0xf90017a1
bl _p_75
.word 0xf94017be
.word 0xf90003c0
.word 0x910083a0
bl _p_76
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1632]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800019
.word 0xaa1903fa
.loc 9 330 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1640]
.word 0xd2800401
bl _p_7
.word 0xaa0003e2
.word 0x3940005e
.word 0xf9000859
.word 0x91004040
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1496]
.word 0xb9800000
.word 0x3940005e
.word 0xb9001840
.word 0xaa0203fa
.loc 9 335 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1624]
.word 0xf9400003
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9001ba3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf9401ba0
.loc 9 336 0
.word 0x3940035e
.word 0xb9801b40
.word 0x14000005
.loc 9 338 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1496]
.word 0xb9800000
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ad:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetFunctionPointer_System_Delegate
ObjCRuntime_Runtime_GetFunctionPointer_System_Delegate:
.loc 9 343 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1424]
.word 0xf9400000
.word 0xaa0003f9
.word 0xf9401bb8
.word 0x3940001e
.word 0xf9400b37
.word 0xb9801b36
.word 0xb9801f21
.word 0x11000421
.word 0xb9001c01
.word 0xb9801ae0
.word 0x6b0002df
.word 0x54000142
.word 0x110006c0
.word 0xb9001b20
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xaa1803e2
.word 0xf94002e3
.word 0xf9407870
.word 0xd63f0200
.word 0x14000004
.word 0xaa1903e0
.word 0xaa1803e1
bl _p_77
.loc 9 344 0
.word 0xf9401ba0
bl _p_78
.word 0xa9415fb6
.word 0xa94267b8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ae:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_ThrowNSException_intptr
ObjCRuntime_Runtime_ThrowNSException_intptr:
.loc 9 398 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1648]
bl _p_71
.word 0xf90017a0
.word 0xf9400ba1
bl _p_79

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1656]
.word 0xd2801201
bl _p_7
.word 0xf94017a1
.word 0xf90013a0
bl _p_80
.word 0xf94013a0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_af:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_RethrowManagedException_uint
ObjCRuntime_Runtime_RethrowManagedException_uint:
.loc 9 404 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xb9001bbf
.word 0x2a1a03e0
.word 0x910063a1
.word 0xf90013a1
bl _p_75
.word 0xf94013be
.word 0xf90003c0
.word 0x910063a0
bl _p_76
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1632]
.word 0xeb01001f
.word 0x10000011
.word 0x54000161
.word 0xaa1a03e0
.loc 9 405 0
bl _p_81
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_82
.loc 9 406 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_b0:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_CreateNSException_intptr
ObjCRuntime_Runtime_CreateNSException_intptr:
.loc 9 414 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1608]
.word 0xf9400ba0
bl _p_74
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1656]
.word 0xd2801201
bl _p_7
.word 0xf9401fa1
.word 0xf9001ba0
bl _p_80
.word 0xf9401ba0
.word 0x910063a1
.word 0xf90013a1
.loc 9 416 0
bl _p_83
.word 0xf94013be
.word 0xf90003c0
.word 0xb9801ba0
.word 0x93407c00
.word 0x93407c00
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b1:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_CreateRuntimeException_int_intptr
ObjCRuntime_Runtime_CreateRuntimeException_int_intptr:
.loc 9 421 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
bl _p_84
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf9401ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xb98013a0
bl _p_70
.word 0x910083a1
.word 0xf90017a1
.loc 9 422 0
bl _p_83
.word 0xf94017be
.word 0xf90003c0
.word 0xb98023a0
.word 0x93407c00
.word 0x93407c00
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b2:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_UnwrapNSException_int
ObjCRuntime_Runtime_UnwrapNSException_int:
.loc 9 427 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xb90023bf
.word 0x93407f40
.word 0x910083a1
.word 0xf90017a1
bl _p_75
.word 0xf94017be
.word 0xf90003c0
.word 0x910083a0
bl _p_76
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1664]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800019
.word 0xaa1903fa
.loc 9 433 0
.word 0xb40001d9
.loc 9 434 0
.word 0x3940035e
.word 0xf9404741
.word 0xaa0103e0
.word 0x3940003e
bl _p_85
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_86
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400800
.word 0x14000005
.loc 9 436 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b3:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_CreateBlockProxy_intptr_intptr
ObjCRuntime_Runtime_CreateBlockProxy_intptr_intptr:
.loc 9 447 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xaa1903e0
bl _p_87
.word 0xaa0003f9
.word 0xb4000179
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1680]
.word 0xeb01001f
.word 0x10000011
.word 0x54000121
.word 0xaa1903e0
.word 0xf9400fa1
bl _p_88
bl _p_89
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_b4:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_CreateDelegateProxy_intptr_intptr_intptr
ObjCRuntime_Runtime_CreateDelegateProxy_intptr_intptr_intptr:
.loc 9 452 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xaa1803e0
bl _p_87
.word 0xaa0003f8
.word 0xb4000178
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1680]
.word 0xeb01001f
.word 0x10000011
.word 0x540001c1
.word 0xf9400fa0
bl _p_87
.word 0xf9001ba0
.word 0xf94013a0
bl _p_84
.word 0xaa0003e2
.word 0xf9401ba1
.word 0xaa1803e0
bl _p_90
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_b5:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetClass_intptr
ObjCRuntime_Runtime_GetClass_intptr:
.loc 9 616 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1688]
.word 0xd2800301
bl _p_7
.word 0xf9400ba1
.word 0xf9000801
bl _p_89
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b6:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetSelector_intptr
ObjCRuntime_Runtime_GetSelector_intptr:
.loc 9 621 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1696]
.word 0xd2800401
bl _p_7
.word 0xf90013a0
.word 0xf9400ba1
bl _p_91
.word 0xf94013a0
bl _p_89
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b7:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_HasNSObject_intptr
ObjCRuntime_Runtime_HasNSObject_intptr:
.loc 9 637 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_92
.word 0xd2800001
.word 0xeb01001f
.word 0x9a9f97e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_b8:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetHandleForINativeObject_intptr
ObjCRuntime_Runtime_GetHandleForINativeObject_intptr:
.loc 9 642 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xaa1a03e0
bl _p_87
.word 0xaa0003fa
.word 0xb400031a
.word 0xf9400340
.word 0xb9402801

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #1704]
.word 0xeb02003f
.word 0x10000011
.word 0x540003a3
.word 0xf9401000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1704]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xeb1f001f
.word 0x10000011
.word 0x540001c0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_b9:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_UnregisterNSObject_intptr_intptr
ObjCRuntime_Runtime_UnregisterNSObject_intptr_intptr:
.loc 9 647 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03e0
bl _p_87
.word 0xaa0003fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1720]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xf94013a0
.word 0xaa1803e1
bl _p_93
.loc 9 648 0
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_ba:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetMethodFromToken_uint
ObjCRuntime_Runtime_GetMethodFromToken_uint:
.loc 9 652 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xf90017a0
.word 0xb9402ba0
.word 0xd2800001
.word 0xf2a0c001
bl _p_94
.word 0xaa0003f9
.loc 9 654 0
.word 0xaa1903f8
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1728]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xaa1703f8
.loc 9 655 0
.word 0xaa1903e0
.word 0xd2800001
bl _p_95
.word 0x53001c00
.word 0x340000c0
.word 0xaa1803e0
.word 0xd2800001
bl _p_96
.word 0x53001c00
.word 0x35000240
.loc 9 658 0
.word 0xaa1903e0
.word 0xd2800001
bl _p_95
.word 0x53001c00
.word 0x34000080
.loc 9 659 0
.word 0xaa1903e0
bl _p_89
.word 0x14000005
.loc 9 661 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 9 656 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2805c61
bl _p_68
.word 0xf9002fa0
.word 0xd28024a0
bl _p_97
.word 0xb9402ba1
.word 0xb9001001
.word 0xf90033a0
.word 0xf9400320
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9402fa0
.word 0xf94033a1
bl _p_24
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf9402ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eac0
bl _p_70
bl _p_38

Lme_bb:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetGenericMethodFromToken_intptr_uint
ObjCRuntime_Runtime_GetGenericMethodFromToken_intptr_uint:
.loc 9 666 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xaa0003f9
.word 0xf9001ba1
.word 0xb94033a0
.word 0xd2800001
.word 0xf2a0c001
bl _p_94
.word 0xaa0003f8
.loc 9 667 0
.word 0xaa1803e0
.word 0xd2800001
bl _p_98
.word 0x53001c00
.word 0x340000c0
.loc 9 668 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0x1400002b
.loc 9 670 0
.word 0xaa1803f7
.word 0xeb1f031f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1728]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xaa1703f6
.loc 9 671 0
.word 0xaa1703e0
.word 0xd2800001
bl _p_96
.word 0x53001c00
.word 0x350003a0
.loc 9 674 0
.word 0xaa1903e0
bl _p_87
.word 0xaa0003f9
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1720]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.loc 9 675 0
.word 0xaa1803f9
.word 0xb4000658
.loc 9 678 0
.word 0xf9400320
.word 0xf9400c00
.word 0xaa1603e1
bl _p_99
bl _p_89
.word 0xa9415fb6
.word 0xa94267b8
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.loc 9 672 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2805c61
bl _p_68
.word 0xf90047a0
.word 0xd28024a0
bl _p_97
.word 0xb94033a1
.word 0xb9001001
.word 0xf9004ba0
.word 0xf9400300
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94047a0
.word 0xf9404ba1
bl _p_24
.word 0xf90043a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf94043a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eac0
bl _p_70
bl _p_38
.loc 9 676 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2807c01
bl _p_68
.word 0xf90047a0
.word 0xaa1603e0
.word 0xf94002c1
.word 0xf9405430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xf9004ba0
.word 0xaa1603e0
.word 0xf94002c1
.word 0xf9405830
.word 0xd63f0200
.word 0xf9004fa0
.word 0xd28024a0
bl _p_97
.word 0xaa0003e3
.word 0xf94047a0
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xb94033a4
.word 0xb9001064
bl _p_100
.word 0xf90043a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf94043a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eae0
bl _p_70
bl _p_38

Lme_bc:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_TryGetOrConstructNSObjectWrapped_intptr
ObjCRuntime_Runtime_TryGetOrConstructNSObjectWrapped_intptr:
.loc 9 683 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0x93407c03
.word 0xd2800000
.word 0x93407c04
.word 0xf9400ba0
.word 0xd2800041
.word 0xd2800022
bl _p_101
bl _p_89
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_bd:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetINativeObject_Dynamic_intptr_bool_intptr
ObjCRuntime_Runtime_GetINativeObject_Dynamic_intptr_bool_intptr:
.loc 9 692 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xaa0203fa
.word 0xaa1a03e0
bl _p_87
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1736]
.word 0xeb01001f
.word 0x10000011
.word 0x54000181
.word 0xf90017ba
.loc 9 693 0
.word 0xf9400fa0
.word 0x394083a1
.word 0xf94017a2
.word 0xd2800003
bl _p_102
bl _p_89
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_be:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetINativeObject_Static_intptr_bool_string_string
ObjCRuntime_Runtime_GetINativeObject_Static_intptr_bool_string_string:
.loc 9 702 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf94017a0
.word 0xd2800021
bl _p_103
.word 0xf9001ba0
.loc 9 703 0
.word 0xf94013a0
.word 0xd2800021
bl _p_103
.word 0xaa0003e3
.word 0xf9401ba2
.loc 9 704 0
.word 0xf9400ba0
.word 0x394063a1
bl _p_102
bl _p_89
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_bf:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetNSObjectWithType_intptr_intptr_bool__intptr_intptr
ObjCRuntime_Runtime_GetNSObjectWithType_intptr_intptr_bool__intptr_intptr:
.loc 9 710 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fa0
.word 0xaa0103f7
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xaa1703e0
bl _p_87
.word 0xaa0003f7
.word 0xb4000177
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1736]
.word 0xeb01001f
.word 0x10000011
.word 0x540001e1
.word 0xf9001fb7
.loc 9 711 0
.word 0xf9400fa0
.word 0xf9401fa1
.word 0xd2800002
.word 0xd2800023
.word 0xf94013a4
.word 0xf94017a5
.word 0xf9401ba6
bl _p_104
bl _p_89
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_c0:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_Dispose_intptr
ObjCRuntime_Runtime_Dispose_intptr:
.loc 9 716 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xaa1a03e0
bl _p_87
.word 0xaa0003fa
.word 0xb400031a
.word 0xf9400340
.word 0xb9402801

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #1744]
.word 0xeb02003f
.word 0x10000011
.word 0x540003a3
.word 0xf9401000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1744]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xeb1f001f
.word 0x10000011
.word 0x540001c0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.loc 9 717 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_c1:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_CreateProductException_int_string
ObjCRuntime_Runtime_CreateProductException_int_string:
.loc 9 750 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xb98013a0
.word 0xf9400fa1
bl _p_70
.word 0x910083a1
.word 0xf90017a1
.loc 9 751 0
.word 0xd2800041
bl _p_36
.word 0xf94017be
.word 0xf90003c0
.word 0xb98023a0
.word 0x93407c00
.word 0x93407c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c2:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_TypeGetFullName_intptr
ObjCRuntime_Runtime_TypeGetFullName_intptr:
.loc 9 756 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xaa1a03e0
bl _p_87
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1736]
.word 0xeb01001f
.word 0x10000011
.word 0x54000141
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf941bc30
.word 0xd63f0200
bl _p_105
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_c3:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_LookupManagedTypeName_intptr
ObjCRuntime_Runtime_LookupManagedTypeName_intptr:
.loc 9 761 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_106
bl _p_105
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_c4:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_CreateBlockProxy_System_Reflection_MethodInfo_intptr
ObjCRuntime_Runtime_CreateBlockProxy_System_Reflection_MethodInfo_intptr:
.loc 9 905 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800021
bl _p_30
.word 0xf90017a0
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1752]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94017a3
.word 0xf900085a
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94013a2
.word 0xf9400fa0
.word 0xd2800001
.word 0xf9400fa3
.word 0x3940007e
bl _p_107
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1760]
.word 0xeb01001f
.word 0x10000011
.word 0x540000c1
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_c5:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetDelegateForBlock_intptr_System_Type
ObjCRuntime_Runtime_GetDelegateForBlock_intptr_System_Type:
.loc 9 915 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90033bf
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90037bf
.word 0x3901c3bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1768]
.word 0xf9400000
.word 0xb50001a0
.loc 9 916 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1776]
.word 0xd2800901
bl _p_7
.word 0xf9005ba0
bl _p_108
.word 0xf9405ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1768]
.word 0xf9000001
.loc 9 922 0
.word 0x910143a0
.word 0xf9002bb9
.word 0xf9002fba
.word 0x91002000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 9 923 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1768]
.word 0xf9400000
.word 0xf90037a0
.word 0xd2800000
.word 0x3901c3a0
.word 0xf94037b8
.word 0x9101c3b7
.word 0xaa1803e0
.word 0xaa1703e1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_109
.loc 9 924 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1768]
.word 0xf9400004
.word 0xf9402ba0
.word 0xf90023a0
.word 0xf9402fa0
.word 0xf90027a0
.word 0x910183a3
.word 0xaa0403e0
.word 0xf94023a1
.word 0xf94027a2
.word 0x3940009e
bl _p_110
.word 0x53001c00
.word 0x34000100
.loc 9 925 0
.word 0xf94033ba
.word 0xf9003fbf
.word 0x9400000b
.word 0xf9403fa0
.word 0xb4000040
bl _p_73
.word 0x1400003f
.loc 9 926 0
.word 0xf9003fbf
.word 0x94000005
.word 0xf9403fa0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf9004fbe
.word 0x3941c3a0
.word 0x34000060
.word 0xf94037a0
bl _p_111
.word 0xf9404fbe
.word 0xd61f03c0
.loc 9 928 0
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_112
.word 0xf90033a0
.loc 9 930 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1768]
.word 0xf9400000
.word 0xf90037a0
.word 0xd2800000
.word 0x3901c3a0
.word 0xf94037ba
.word 0x9101c3b9
.word 0xaa1a03e0
.word 0xaa1903e1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1a03e0
.word 0xaa1903e1
bl _p_109
.loc 9 931 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1768]
.word 0xf9400004
.word 0xf9402ba0
.word 0xf9001ba0
.word 0xf9402fa0
.word 0xf9001fa0
.word 0xf94033a3
.word 0xaa0403e0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0x3940009e
bl _p_113
.loc 9 932 0
.word 0xf90043bf
.word 0x94000005
.word 0xf94043a0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf90057be
.word 0x3941c3a0
.word 0x34000060
.word 0xf94037a0
bl _p_111
.word 0xf94057be
.word 0xd61f03c0
.loc 9 933 0
.word 0xf94033a0
.word 0x14000002
.loc 9 934 0
.word 0xaa1a03e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_c6:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_UnregisterNSObject_intptr
ObjCRuntime_Runtime_UnregisterNSObject_intptr:
.loc 9 986 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0
.word 0xf90017bf
.word 0x3900c3bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1456]
.word 0xf9400000
.word 0xf90017a0
.word 0xd2800000
.word 0x3900c3a0
.word 0xf94017b9
.word 0x9100c3b8
.word 0xaa1903e0
.word 0xaa1803e1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1903e0
.word 0xaa1803e1
bl _p_109
.loc 9 987 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0xf9400002
.word 0xaa0203e0
.word 0xf94013a1
.word 0x3940005e
bl _p_114
.loc 9 988 0
.word 0xf9001fbf
.word 0x94000005
.word 0xf9401fa0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf9002bbe
.word 0x3940c3a0
.word 0x34000060
.word 0xf94017a0
bl _p_111
.word 0xf9402bbe
.word 0xd61f03c0
.loc 9 989 0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_c7:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_NativeObjectHasDied_intptr_Foundation_NSObject
ObjCRuntime_Runtime_NativeObjectHasDied_intptr_Foundation_NSObject:
.loc 9 993 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xf90017a0
.word 0xaa0103fa
.word 0xf9001bbf
.word 0x3900e3bf
.word 0xf90023bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1456]
.word 0xf9400000
.word 0xf9001ba0
.word 0xd2800000
.word 0x3900e3a0
.word 0xf9401bb8
.word 0x9100e3b7
.word 0xaa1803e0
.word 0xaa1703e1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_109
.loc 9 995 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0xf9400003
.word 0x910103a2
.word 0xaa0303e0
.word 0xf94017a1
.word 0x3940007e
bl _p_115
.word 0x53001c00
.word 0x34000220
.loc 9 996 0
.word 0xb400011a
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9404030
.word 0xd63f0200
.word 0xeb1a001f
.word 0x54000121
.loc 9 997 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0xf9400002
.word 0xaa0203e0
.word 0xf94017a1
.word 0x3940005e
bl _p_114
.loc 9 1001 0
.word 0xb40000fa
.loc 9 1002 0
.word 0x3940035e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xf9000b40
.loc 9 1003 0
.word 0xf90027bf
.word 0x94000005
.word 0xf94027a0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf90033be
.word 0x3940e3a0
.word 0x34000060
.word 0xf9401ba0
bl _p_111
.word 0xf94033be
.word 0xd61f03c0
.loc 9 1004 0
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_c8:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_RegisterNSObject_Foundation_NSObject_intptr
ObjCRuntime_Runtime_RegisterNSObject_Foundation_NSObject_intptr:
.loc 9 1007 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xaa0003f9
.word 0xf90017a1
.word 0xf9001bbf
.word 0x3900e3bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1456]
.word 0xf9400000
.word 0xf9001ba0
.word 0xd2800000
.word 0x3900e3a0
.word 0xf9401bb8
.word 0x9100e3b7
.word 0xaa1803e0
.word 0xaa1703e1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_109
.loc 9 1008 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0xf9400000
.word 0xf90037a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1784]
bl _p_71
.word 0xf90033a0
.word 0xaa1903e1
.word 0xd2800022
bl _p_116
.word 0xf94033a2
.word 0xf94037a3
.word 0xaa0303e0
.word 0xf94017a1
.word 0x3940007e
bl _p_117
.loc 9 1009 0
.word 0xaa1903e0
.word 0xf94017a1
.word 0x3940033e
bl _p_118
.loc 9 1010 0
.word 0xf90023bf
.word 0x94000005
.word 0xf94023a0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf9002fbe
.word 0x3940e3a0
.word 0x34000060
.word 0xf9401ba0
bl _p_111
.word 0xf9402fbe
.word 0xd61f03c0
.loc 9 1011 0
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_c9:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_MissingCtor_intptr_intptr_System_Type_ObjCRuntime_Runtime_MissingCtorResolution_intptr_intptr
ObjCRuntime_Runtime_MissingCtor_intptr_intptr_System_Type_ObjCRuntime_Runtime_MissingCtorResolution_intptr_intptr:
.loc 9 1029 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xaa0303f8
.word 0xaa0403f9
.word 0xaa0503fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9401ba0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000080
.loc 9 1030 0
.word 0xf94017a0
bl _p_119
.word 0xf9001ba0
.loc 9 1032 0
.word 0xf90023b8
.word 0xd280007e
.word 0x6b1e031f
.word 0x54001322
.word 0xf94023a0
.word 0xd37df000
.word 0x2a0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1792]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.loc 9 1034 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x24, [x16, #1800]
.loc 9 1038 0
.word 0x14000004
.loc 9 1040 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x24, [x16, #1808]
.loc 9 1050 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xaa1903e0
bl _p_120
.word 0x53001c00
.word 0x35000120

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xaa1a03e0
bl _p_120
.word 0x53001c00
.word 0x340000e0
.loc 9 1051 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1816]
.word 0xaa1803e0
bl _p_121
.word 0xaa0003f8
.loc 9 1053 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xaa1903e0
bl _p_120
.word 0x53001c00
.word 0x340001c0
.loc 9 1054 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1824]
.word 0xf9002ba0
.word 0xaa1903e0
bl _p_122
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e1
.word 0xaa1803e0
bl _p_121
.word 0xaa0003f8
.loc 9 1055 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xaa1a03e0
bl _p_120
.word 0x53001c00
.word 0x340004c0
.loc 9 1056 0
.word 0xaa1a03e0
bl _p_87
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1728]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800019
.word 0xaa1903fa
.loc 9 1057 0
.word 0xaa1903e0
.word 0xd2800001
bl _p_124
.word 0x53001c00
.word 0x34000200
.loc 9 1058 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1832]
.word 0xf9002ba0
.word 0xaa1a03e0
.word 0x3940035e
bl _p_125
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e1
.word 0xaa1803e0
bl _p_121
.word 0xaa0003f8
.word 0x14000001
.loc 9 1061 0
.word 0x9100a3a0
.word 0xf90037a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2813da1
bl _p_68
.word 0xaa0003e1
.word 0xf94037a0
bl _p_126
.word 0xf9002fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1688]
.word 0xd2800301
bl _p_7
.word 0xf9401ba1
.word 0xf9000801
bl _p_127
.word 0xf90033a0
.word 0xf9401fa0
.word 0xf9401fa1
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e3
.word 0xf9402fa1
.word 0xf94033a2
.word 0xaa1803e0
bl _p_100
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf9402ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eb60
bl _p_70
bl _p_38
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_ca:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_ConstructNSObject_intptr_intptr_ObjCRuntime_Runtime_MissingCtorResolution_intptr_intptr
ObjCRuntime_Runtime_ConstructNSObject_intptr_intptr_ObjCRuntime_Runtime_MissingCtorResolution_intptr_intptr:
.loc 9 1066 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fa0
.word 0xaa0103f7
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xaa1703e0
bl _p_128
.word 0xaa0003f7
.loc 9 1068 0
.word 0xaa1703e0
.word 0xd2800001
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000160
.loc 9 1069 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1840]
.word 0xf9400fa0
.word 0xaa1703e1
.word 0xb98023a2
.word 0xf94017a3
.word 0xf9401ba4
bl _p_129
.word 0x14000009
.loc 9 1071 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1464]
bl _p_71
.word 0xf90023a0
.word 0xf9400fa1
bl _p_130
.word 0xf94023a0
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_cb:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_ConstructNSObject_T_REF_intptr_System_Type_ObjCRuntime_Runtime_MissingCtorResolution_intptr_intptr
ObjCRuntime_Runtime_ConstructNSObject_T_REF_intptr_System_Type_ObjCRuntime_Runtime_MissingCtorResolution_intptr_intptr:
.loc 9 1084 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90023af
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xd2800001
.word 0xf94013a0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000720
.loc 9 1087 0
.word 0xf94013a0
bl _p_131
.word 0xaa0003f5
.loc 9 1089 0
.word 0xaa1503e0
.word 0xd2800001
bl _p_132
.word 0x53001c00
.word 0x340001a0
.loc 9 1090 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400fa0
.word 0xf94013a2
.word 0xb9802ba3
.word 0xf9401ba4
.word 0xf9401fa5
bl _p_133
.loc 9 1091 0
.word 0xd2800000
.word 0x14000021
.loc 9 1094 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800021
bl _p_30
.word 0xf90033a0
.word 0xf9002fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1752]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94033a3
.word 0xf9400fa0
.word 0xf9000840
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9402fa1
.word 0xaa1503e0
.word 0x394002be
bl _p_134
.word 0xf9002ba0
.word 0xf94023a0
bl _p_135
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9400441
bl _p_136
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 9 1085 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2813e21
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_cc:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_ConstructINativeObject_T_REF_intptr_bool_System_Type_ObjCRuntime_Runtime_MissingCtorResolution
ObjCRuntime_Runtime_ConstructINativeObject_T_REF_intptr_bool_System_Type_ObjCRuntime_Runtime_MissingCtorResolution:
.loc 9 1100 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xf9000fb9
.word 0xf9001faf
.word 0xf90013a0
.word 0xf90017a1
.word 0xaa0203f9
.word 0xf9001ba3
.word 0xd2800000
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x35000ae0
.loc 9 1103 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_137
.word 0x53001c00
.word 0x340000c0
.loc 9 1104 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940a430
.word 0xd63f0200
.word 0xaa0003f9
.loc 9 1106 0
.word 0xaa1903e0
bl _p_138
.loc 9 1108 0
.word 0xaa0003e1
.word 0xf90023a1
.word 0xd2800001
bl _p_132
.word 0xf94023a1
.word 0x53001c00
.word 0xaa0103f6
.word 0x340001a0
.loc 9 1109 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xd2800000
.word 0x93407c04
.word 0xd2800000
.word 0x93407c05
.word 0xf94013a0
.word 0xaa1903e2
.word 0xb98033a3
bl _p_133

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800041
bl _p_30
.word 0xf90033a0
.loc 9 1111 0
.word 0xf9002fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1752]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94033a3
.word 0xf94013a0
.word 0xf9000840
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xf90027a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1848]
.word 0xd2800221
bl _p_7
.word 0xaa0003e2
.word 0xf9402ba3
.word 0x3940a3a0
.word 0x39004040
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94027a1
.word 0xaa1603e0
.word 0x394002de
bl _p_134
.word 0xf90023a0
.word 0xf9401fa0
bl _p_139
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf9400441
bl _p_136
.word 0xf9400bb6
.word 0xf9400fb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 9 1101 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2813e21
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_cd:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetIntPtrConstructor_System_Type
ObjCRuntime_Runtime_GetIntPtrConstructor_System_Type:
.loc 9 1116 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xd28006c1
.word 0xf9400342
.word 0xf9419850
.word 0xd63f0200
.word 0xaa0003fa
.loc 9 1117 0
.word 0xd2800019
.word 0x1400002f
.loc 9 1118 0
.word 0x93407f20
.word 0xb9801b41
.word 0xeb00003f
.word 0x10000011
.word 0x54000669
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400001
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9409c30
.word 0xd63f0200
.word 0xaa0003f8
.loc 9 1119 0
.word 0xaa1803e0
.word 0xb9801800
.word 0xd2800021
.word 0x6b01001f
.word 0x54000361
.word 0xd2800001
.word 0xb9801b00
.word 0xeb01001f
.word 0x10000011
.word 0x54000409
.word 0xf9401301
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405c30
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1856]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000160
.loc 9 1120 0
.word 0x93407f20
.word 0xb9801b41
.word 0xeb00003f
.word 0x10000011
.word 0x54000209
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400000
.word 0x14000006
.loc 9 1117 0
.word 0x11000739
.word 0xb9801b40
.word 0x6b00033f
.word 0x54fffa0b
.loc 9 1122 0
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_ce:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetIntPtr_BoolConstructor_System_Type
ObjCRuntime_Runtime_GetIntPtr_BoolConstructor_System_Type:
.loc 9 1127 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xd28006c1
.word 0xf9400342
.word 0xf9419850
.word 0xd63f0200
.word 0xaa0003fa
.loc 9 1128 0
.word 0xd2800019
.word 0x1400003f
.loc 9 1129 0
.word 0x93407f20
.word 0xb9801b41
.word 0xeb00003f
.word 0x10000011
.word 0x54000869
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400001
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9409c30
.word 0xd63f0200
.word 0xaa0003f8
.loc 9 1130 0
.word 0xaa1803e0
.word 0xb9801800
.word 0xd2800041
.word 0x6b01001f
.word 0x54000561
.word 0xd2800001
.word 0xb9801b00
.word 0xeb01001f
.word 0x10000011
.word 0x54000609
.word 0xf9401301
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405c30
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1856]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000360
.word 0xd2800021
.word 0xb9801b00
.word 0xeb01001f
.word 0x10000011
.word 0x54000409
.word 0xf9401701
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405c30
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1864]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000160
.loc 9 1131 0
.word 0x93407f20
.word 0xb9801b41
.word 0xeb00003f
.word 0x10000011
.word 0x54000209
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400000
.word 0x14000006
.loc 9 1128 0
.word 0x11000739
.word 0xb9801b40
.word 0x6b00033f
.word 0x54fff80b
.loc 9 1133 0
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_cf:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_TryGetNSObject_intptr
ObjCRuntime_Runtime_TryGetNSObject_intptr:
.loc 9 1138 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800001
bl _p_140
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d0:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_TryGetNSObject_intptr_bool
ObjCRuntime_Runtime_TryGetNSObject_intptr_bool:
.loc 9 1143 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9001bbf
.word 0x3900e3bf
.word 0xf90023bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1456]
.word 0xf9400000
.word 0xf9001ba0
.word 0xd2800000
.word 0x3900e3a0
.word 0xf9401bb8
.word 0x9100e3b7
.word 0xaa1803e0
.word 0xaa1703e1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_109
.loc 9 1145 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0xf9400003
.word 0x910103a2
.word 0xaa0303e0
.word 0xaa1903e1
.word 0x3940007e
bl _p_115
.word 0x53001c00
.word 0x34000920
.loc 9 1146 0
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9404030
.word 0xd63f0200
.word 0xaa0003f9
.word 0xb4000179
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1720]
.word 0xeb01001f
.word 0x10000011
.word 0x540009a1
.word 0xaa1903f8
.loc 9 1147 0
.word 0xb5000119
.loc 9 1148 0
.word 0xd280001a
.word 0xf90027bf
.word 0x94000039
.word 0xf94027a0
.word 0xb4000040
bl _p_73
.word 0x1400003e
.loc 9 1150 0
.word 0x3940031e
.word 0x39408300
.word 0xd280021e
.word 0xa1e0000
.word 0xd2800201
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000400
.loc 9 1151 0
.word 0x3500011a
.loc 9 1153 0
.word 0xd280001a
.word 0xf90027bf
.word 0x94000029
.word 0xf94027a0
.word 0xb4000040
bl _p_73
.word 0x1400002e
.loc 9 1156 0
.word 0x3940031e
.word 0x39408300
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000200
.word 0x3940031e
.word 0x39408300
.word 0xd280011e
.word 0xa1e0000
.word 0xd2800101
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x35000100
.loc 9 1164 0
.word 0xd280001a
.word 0xf90027bf
.word 0x94000012
.word 0xf94027a0
.word 0xb4000040
bl _p_73
.word 0x14000017
.loc 9 1168 0
.word 0xaa1803fa
.word 0xf90027bf
.word 0x9400000b
.word 0xf94027a0
.word 0xb4000040
bl _p_73
.word 0x14000010
.loc 9 1170 0
.word 0xf90027bf
.word 0x94000005
.word 0xf94027a0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf90033be
.word 0x3940e3a0
.word 0x34000060
.word 0xf9401ba0
bl _p_111
.word 0xf94033be
.word 0xd61f03c0
.loc 9 1172 0
.word 0xd2800000
.word 0x14000002
.loc 9 1173 0
.word 0xaa1a03e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_d1:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetNSObject_intptr
ObjCRuntime_Runtime_GetNSObject_intptr:
.loc 9 1176 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0x93407c03
.word 0xd2800000
.word 0x93407c04
.word 0xf9400ba0
.word 0xd2800001
.word 0xd2800002
bl _p_101
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_d2:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetNSObject_intptr_ObjCRuntime_Runtime_MissingCtorResolution_bool_intptr_intptr
ObjCRuntime_Runtime_GetNSObject_intptr_ObjCRuntime_Runtime_MissingCtorResolution_bool_intptr_intptr:
.loc 9 1180 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xf9000fb8
.word 0xaa0003f6
.word 0xf90013a1
.word 0xaa0203f8
.word 0xf90017a3
.word 0xf9001ba4

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb0002df
.word 0x9a9f17e0
.word 0x34000060
.loc 9 1181 0
.word 0xd2800000
.word 0x14000011
.loc 9 1183 0
.word 0xaa1603e0
.word 0xaa1803e1
bl _p_140
.word 0xaa0003f8
.loc 9 1185 0
.word 0xaa1803e0
.word 0xb4000060
.loc 9 1186 0
.word 0xaa1803e0
.word 0x14000009
.loc 9 1188 0
.word 0xaa1603e0
bl _p_119
.word 0xaa0003e1
.word 0xaa1603e0
.word 0xb98023a2
.word 0xf94017a3
.word 0xf9401ba4
bl _p_141
.word 0xf9400bb6
.word 0xf9400fb8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_d3:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetNSObject_T_REF_intptr
ObjCRuntime_Runtime_GetNSObject_T_REF_intptr:
.loc 9 1193 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013af
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34000060
.loc 9 1194 0
.word 0xd2800000
.word 0x1400006b
.loc 9 1196 0
.word 0xaa1a03e0
bl _p_92
.word 0xaa0003f9
.loc 9 1199 0
.word 0xaa1903e0
.word 0xb5000aa0
.loc 9 1201 0
.word 0xaa1a03e0
bl _p_119
.word 0xaa0003f9
.loc 9 1205 0
.word 0xaa1903e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1480]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x340006c0
.loc 9 1206 0
.word 0xaa1903e0
bl _p_128
.word 0xaa0003f9
.loc 9 1207 0
.word 0xaa1903e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1872]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340000a0
.loc 9 1208 0
.word 0xf94013a0
bl _p_142
.word 0xaa0003f9
.word 0x1400002b
.loc 9 1209 0
.word 0xf94013a0
bl _p_142
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940f030
.word 0xd63f0200
.word 0x53001c00
.word 0x340000a0
.loc 9 1210 0
.word 0xf94013a0
bl _p_142
.word 0xaa0003f9
.word 0x1400001e
.loc 9 1211 0
.word 0xf94013a0
bl _p_142
.word 0xaa0003e1
.word 0xaa1903e0
.word 0xf9400322
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0x350002a0
.loc 9 1213 0
adrp x0, L_OBJC_SELECTOR_REFERENCES_0@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_0@PAGEOFF
ldr x0, [x0]
.word 0xf9001ba0
.word 0xf94013a0
bl _p_142
bl _p_143
.word 0xaa0003e2
.word 0xf9401ba1
.word 0xaa1a03e0
bl _p_144
.word 0x53001c00
.word 0x34000100
.loc 9 1216 0
.word 0xf94013a0
bl _p_142
.word 0xaa0003f9
.loc 9 1218 0
.word 0x14000004
.loc 9 1219 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x25, [x16, #1872]
.loc 9 1221 0
.word 0xd2800000
.word 0x93407c00
.word 0xf9001ba0
.word 0xd2800000
.word 0x93407c00
.word 0xf9001fa0
.word 0xf94013a0
bl _p_145
.word 0xaa0003ef
.word 0xf9401ba3
.word 0xf9401fa4
.word 0xaa1a03e0
.word 0xaa1903e1
.word 0xd2800002
bl _p_146
.word 0xaa0003fa
.loc 9 1222 0
.word 0x14000011
.loc 9 1223 0
.word 0xf94013a0
bl _p_147
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1903e0
bl _p_148
.word 0xf9001ba0
.word 0xf94013a0
bl _p_147
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9400441
bl _p_136
.word 0xaa0003fa
.loc 9 1224 0
.word 0xaa1a03e0
.word 0xb40000c0
.loc 9 1228 0
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 9 1225 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2814321
bl _p_68
.word 0xf9001ba0
.word 0xf9400320
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xf9001fa0
.word 0xf94013a0
bl _p_142
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
bl _p_24
.word 0xaa0003e1
.word 0xd2801d80
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_d4:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetNSObject_intptr_System_Type_ObjCRuntime_Runtime_MissingCtorResolution_bool_bool__intptr_intptr
ObjCRuntime_Runtime_GetNSObject_intptr_System_Type_ObjCRuntime_Runtime_MissingCtorResolution_bool_bool__intptr_intptr:
.loc 9 1260 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xf90013b7
.word 0xaa0003f5
.word 0xaa0103f6
.word 0xf90017a2
.word 0xaa0303f7
.word 0xf9001ba4
.word 0xf9001fa5
.word 0xf90023a6
.word 0xf9401ba0
.word 0x3900001f
.loc 9 1262 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb0002bf
.word 0x9a9f17e0
.word 0x34000060
.loc 9 1263 0
.word 0xd2800000
.word 0x14000044
.loc 9 1265 0
.word 0xaa1503e0
.word 0xaa1703e1
bl _p_140
.word 0xaa0003f7
.loc 9 1267 0
.word 0xaa1703e0
.word 0xb4000060
.loc 9 1268 0
.word 0xaa1703e0
.word 0x1400003c
.loc 9 1271 0
.word 0xaa1503e0
bl _p_119
.word 0xaa0003f7
.loc 9 1275 0
.word 0xaa1703e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1480]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000440
.loc 9 1276 0
.word 0xaa1703e0
bl _p_128
.word 0xaa0003f7
.loc 9 1277 0
.word 0xaa1703e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1880]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000360
.loc 9 1279 0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xf94002e2
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0x34000060
.loc 9 1280 0
.word 0xaa1703f6
.loc 9 1281 0
.word 0x14000012
adrp x0, L_OBJC_SELECTOR_REFERENCES_0@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_0@PAGEOFF
ldr x0, [x0]
.word 0xf9002ba0
.word 0xaa1603e0
bl _p_143
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xaa1503e0
bl _p_144
.word 0x53001c00
.word 0x350000c0
.loc 9 1284 0
.word 0xaa1703f6
.loc 9 1286 0
.word 0x14000004
.loc 9 1287 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x22, [x16, #1880]
.loc 9 1290 0
.word 0xf9401ba0
.word 0xd280003e
.word 0x3900001e
.loc 9 1291 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1840]
.word 0xaa1503e0
.word 0xaa1603e1
.word 0xd2800002
.word 0xf9401fa3
.word 0xf94023a4
bl _p_129
.word 0xa9415bb5
.word 0xf94013b7
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_d5:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_LookupINativeObjectImplementation_intptr_System_Type_System_Type
ObjCRuntime_Runtime_LookupINativeObjectImplementation_intptr_System_Type_System_Type:
.loc 9 1296 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #1880]
.word 0xaa0203e0
.word 0xaa1903e1
.word 0xf9400042
.word 0xf9407450
.word 0xd63f0200
.word 0x53001c00
.word 0x35000060
.loc 9 1302 0
.word 0xaa1903fa
.loc 9 1303 0
.word 0x14000023
.loc 9 1305 0
.word 0xaa1803e0
bl _p_119
.word 0xaa0003f8
.loc 9 1307 0
.word 0xaa1803e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1480]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340000e0
.loc 9 1308 0
.word 0xd2800000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34000280
.loc 9 1309 0
.word 0xaa1903fa
.loc 9 1310 0
.word 0x14000012
.loc 9 1311 0
.word 0xaa1803e0
bl _p_128
.word 0xaa0003f8
.loc 9 1313 0
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xf9400322
.word 0xf9407450
.word 0xd63f0200
.word 0x53001c00
.word 0x34000060
.loc 9 1314 0
.word 0xaa1803fa
.loc 9 1315 0
.word 0x14000006
.word 0xd2800000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34000040
.loc 9 1316 0
.word 0xaa1903fa
.loc 9 1321 0
.word 0xaa1a03e0
.word 0x3940035e
bl _p_149
.word 0x53001c00
.word 0x34000080
.loc 9 1322 0
.word 0xaa1a03e0
bl _p_150
.word 0xaa0003fa
.loc 9 1324 0
.word 0xaa1a03e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d6:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetINativeObject_intptr_bool_System_Type_System_Type
ObjCRuntime_Runtime_GetINativeObject_intptr_bool_System_Type_System_Type:
.loc 9 1332 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xa901ebb9
.word 0xf90017a0
.word 0xf9001ba1
.word 0xaa0203f9
.word 0xaa0303fa
.word 0xf94017a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 9 1333 0
.word 0xd2800000
.word 0x1400003a
.loc 9 1335 0
.word 0xf94017a0
bl _p_92
.word 0xaa0003f7
.loc 9 1336 0
.word 0xaa1703e0
.word 0xb4000160
.word 0xf94002e0
.word 0xf9400c01
.word 0xaa1903e0
.word 0xf9400322
.word 0xf9407450
.word 0xd63f0200
.word 0x53001c00
.word 0x34000060
.loc 9 1338 0
.word 0xaa1703e0
.word 0x1400002b
.loc 9 1341 0
.word 0xb40000d7
.loc 9 1343 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_149
.word 0x53001c00
.word 0x34000540
.loc 9 1350 0
.word 0xf94017a0
.word 0xaa1903e1
.word 0xaa1a03e2
bl _p_151
.word 0xaa0003fa
.loc 9 1352 0
.word 0xaa1a03e2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1880]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0x340001c0
.loc 9 1353 0
.word 0xb5000697
.loc 9 1361 0
.word 0xf94017a0
.word 0xd2800001
.word 0x93407c23
.word 0xd2800001
.word 0x93407c24

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1888]
.word 0xaa1a03e1
.word 0xd2800002
bl _p_152
.word 0x14000009
.loc 9 1364 0
.word 0xf94017a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1896]
.word 0x3940c3a1
.word 0xaa1a03e2
.word 0xd2800023
bl _p_153
.word 0xf9400bb7
.word 0xa941ebb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.loc 9 1345 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2814fa1
bl _p_68
.word 0xf90023a0
.word 0xf94002e0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xf90027a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _p_24
.word 0xaa0003e1
.word 0xd2801d80
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 9 1357 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2815c61
bl _p_68
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800081
bl _p_30
.word 0xf9004ba0
.word 0xf90047a0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9404ba3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf9003ba0
.word 0x9100a3a0
.word 0xf90043a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2813da1
bl _p_68
.word 0xaa0003e1
.word 0xf94043a0
bl _p_126
.word 0xaa0003e2
.word 0xf9403fa3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf90037a0
.word 0xf9002fa0
.word 0xf94017a0
bl _p_119
bl _p_154
.word 0xf90033a0
.word 0xd2802840
bl _p_97
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a3
.word 0xf9000840
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xf90027a0
.word 0xf94002e0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9402ba3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94023a1
.word 0xf94027a2
.word 0xd283e880
bl _p_70
bl _p_38

Lme_d7:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetINativeObject_T_REF_intptr_bool
ObjCRuntime_Runtime_GetINativeObject_T_REF_intptr_bool:
.loc 9 1370 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf9001baf
.word 0xf90013a0
.word 0xf90017a1
.word 0xf94013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 9 1371 0
.word 0xd2800000
.word 0x1400005c
.loc 9 1373 0
.word 0xf94013a0
bl _p_92
.word 0xaa0003f9
.loc 9 1374 0
.word 0xaa1903e0
.word 0xf90027a0
.word 0xf9401ba0
bl _p_155
.word 0xaa0003e2
.word 0xf94027a0
.word 0xf9400441
bl _p_148
.word 0xf90023a0
.word 0xf9401ba0
bl _p_155
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf9400441
bl _p_136
.word 0xaa0003f8
.loc 9 1375 0
.word 0xaa1803e0
.word 0xb4000060
.loc 9 1377 0
.word 0xaa1803e0
.word 0x14000045
.loc 9 1380 0
.word 0xb4000299
.loc 9 1382 0
.word 0xf9401ba0
bl _p_156
bl _p_149
.word 0x53001c00
.word 0x350001e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1904]
.word 0xf90023a0
.word 0xf9401ba0
bl _p_156
.word 0xaa0003e1
.word 0xf94023a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9407450
.word 0xd63f0200
.word 0x53001c00
.word 0x350006a0
.loc 9 1389 0
.word 0xf94013a0
.word 0xf90023a0
.word 0xf9401ba0
bl _p_156
.word 0xaa0003e1
.word 0xf94023a0
.word 0xd2800002
bl _p_151
.word 0xaa0003f8
.loc 9 1391 0
.word 0xaa1803e2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1904]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0x34000280
.loc 9 1392 0
.word 0xb50007d9
.loc 9 1400 0
.word 0xf94013a0
.word 0xf90023a0
.word 0xd2800000
.word 0x93407c00
.word 0xf90027a0
.word 0xd2800000
.word 0x93407c00
.word 0xf9002ba0
.word 0xf9401ba0
bl _p_157
.word 0xaa0003ef
.word 0xf94023a0
.word 0xf94027a3
.word 0xf9402ba4
.word 0xaa1803e1
.word 0xd2800002
bl _p_158
.word 0x1400000b
.loc 9 1403 0
.word 0xf94013a0
.word 0xf90023a0
.word 0xf9401ba0
bl _p_159
.word 0xaa0003ef
.word 0xf94023a0
.word 0x3940a3a1
.word 0xaa1803e2
.word 0xd2800023
bl _p_160
.word 0xa94167b8
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.loc 9 1384 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2814fa1
bl _p_68
.word 0xf90023a0
.word 0xf9400320
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xf90027a0
.word 0xf9401ba0
bl _p_156
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _p_24
.word 0xaa0003e1
.word 0xd2801d80
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 9 1396 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2815c61
bl _p_68
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800081
bl _p_30
.word 0xf9004ba0
.word 0xf90047a0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9404ba3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf9003ba0
.word 0x910083a0
.word 0xf90043a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2813da1
bl _p_68
.word 0xaa0003e1
.word 0xf94043a0
bl _p_126
.word 0xaa0003e2
.word 0xf9403fa3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf90037a0
.word 0xf9002fa0
.word 0xf94013a0
bl _p_119
bl _p_154
.word 0xf90033a0
.word 0xd2802840
bl _p_97
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a3
.word 0xf9000840
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xf90027a0
.word 0xf9400320
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9402ba3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94023a1
.word 0xf94027a2
.word 0xd283e880
bl _p_70
bl _p_38

Lme_d8:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_FindProtocolWrapperType_System_Type
ObjCRuntime_Runtime_FindProtocolWrapperType_System_Type:
.loc 9 1408 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xd2800000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x350000c0
.word 0xaa1a03e0
.word 0x3940035e
bl _p_149
.word 0x53001c00
.word 0x35000060
.loc 9 1409 0
.word 0xd2800000
.word 0x14000056
.loc 9 1413 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xf9400000
.word 0xf9400c00
.loc 9 1414 0
.word 0xd2800001
.word 0x2a0103e1
.word 0xeb01001f
.word 0x54000480
.loc 9 1415 0
.word 0xaa1a03e0
.word 0xd2800001
bl _p_161
.word 0xaa0003f9
.loc 9 1416 0
.word 0xaa1903e0
.word 0x92800001
.word 0xf2bfffe1
.word 0x6b01001f
.word 0x54000360
.loc 9 1417 0
.word 0xaa1903e0
bl _p_162
.word 0xaa0003f9
.loc 9 1418 0
.word 0xaa1903e0
.word 0x92800001
.word 0xf2bfffe1
.word 0x6b01001f
.word 0x54000260
.loc 9 1419 0
.word 0xaa1903e0
.word 0xd2800001
.word 0xf2a04001
bl _p_94
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1736]
.word 0xeb01001f
.word 0x10000011
.word 0x540009c1
.word 0xaa1a03e0
.word 0x1400002a
.loc 9 1425 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1912]
.word 0xaa1a03e0
.word 0xd2800002
.word 0xf9400343
.word 0xf9404870
.word 0xd63f0200
.word 0xaa0003f9
.loc 9 1427 0
.word 0xaa1903e0
.word 0xb9801800
.word 0x35000060
.word 0xd2800018
.word 0x14000007
.word 0xd2800001
.word 0xb9801b20
.word 0xeb01001f
.word 0x10000011
.word 0x54000789
.word 0xf9401338
.word 0xb4000178
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1920]
.word 0xeb01001f
.word 0x10000011
.word 0x540005a1
.word 0xaa1803f9
.loc 9 1428 0
.word 0xb40001d8
.word 0x3940033e
.word 0xf9400b20
.word 0xd2800001
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000100
.loc 9 1432 0
.word 0x3940033e
.word 0xf9400b20
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.loc 9 1429 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2818381
bl _p_68
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800021
bl _p_30
.word 0xf90023a0
.word 0xf9001fa0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94023a3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xd28203a0
bl _p_70
bl _p_38
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_d9:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_StringEquals_intptr_string
ObjCRuntime_Runtime_StringEquals_intptr_string:
.loc 9 1577 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013b8
.word 0xf90017ba
.word 0xf9001ba0
.word 0xaa0103fa
.word 0xf9401bb8
.loc 9 1578 0
.word 0xd2800017
.word 0x1400001d
.loc 9 1579 0
.word 0x93407ee0
.word 0x8b000300
.word 0x39400000
.word 0x53001c16
.loc 9 1580 0
.word 0xaa1603e0
.word 0xd2800fe1
.word 0x6b01001f
.word 0x540000ed
.loc 9 1582 0
.word 0xf9401ba0
bl _p_163
.word 0xaa1a03e1
bl _p_164
.word 0x53001c00
.word 0x14000019
.loc 9 1584 0
.word 0x93407ee0
.word 0xb9801341
.word 0xeb00003f
.word 0x10000011
.word 0x54000349
.word 0xd37ff800
.word 0x8b1a0000
.word 0x79402800
.word 0x93403c00
.word 0x6b0002df
.word 0x54000060
.loc 9 1585 0
.word 0xd2800000
.word 0x1400000c
.loc 9 1578 0
.word 0x110006f7
.word 0xb9801340
.word 0x6b0002ff
.word 0x54fffc4b
.loc 9 1587 0
.word 0xb9801340
.word 0x93407c00
.word 0x8b000300
.word 0x39400000
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9f17e0
.word 0xa9415fb6
.word 0xf94013b8
.word 0xf94017ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_db:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_FindClosedMethod_System_Type_System_Reflection_MethodBase
ObjCRuntime_Runtime_FindClosedMethod_System_Type_System_Reflection_MethodBase:
.loc 9 1594 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9407c30
.word 0xd63f0200
.word 0x53001c00
.word 0x350001c0
.loc 9 1595 0
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1680]
.word 0xeb01001f
.word 0x10000011
.word 0x54001061
.word 0xaa1a03e0
.word 0x1400004d
.loc 9 1598 0
.word 0xaa1903f8
.loc 9 1600 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf940f030
.word 0xd63f0200
.word 0x53001c00
.word 0x34000220
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9409c30
.word 0xd63f0200
.word 0xf90023a0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9405430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94023a0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 9 1601 0
.word 0xaa1803f9
.loc 9 1602 0
.word 0x1400000e
.loc 9 1604 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf941ac30
.word 0xd63f0200
.word 0xaa0003f8
.loc 9 1605 0
.word 0xaa1803e0
.word 0xd2800001
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x35fffbc0
.loc 9 1608 0
.word 0xaa1903e0
.word 0xd28007c1
.word 0xf9400322
.word 0xf9418050
.word 0xd63f0200
.word 0xaa0003f8
.word 0xd2800017
.word 0x1400001d
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540009a9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.loc 9 1609 0
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9404030
.word 0xd63f0200
.word 0x93407c00
.word 0xf90023a0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9404030
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94023a0
.word 0x6b01001f
.word 0x54000061
.loc 9 1610 0
.word 0xaa1603e0
.word 0x14000006
.word 0x110006f7
.loc 9 1608 0
.word 0xb9801b00
.word 0x6b0002ff
.word 0x5400010a
.word 0x17ffffe1
.loc 9 1614 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd281a221
bl _p_68
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800041
bl _p_30
.word 0xf90033a0
.word 0xf9002fa0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94033a3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xf90027a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9402ba3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94023a1
.word 0xf94027a2
.word 0xd283e860
bl _p_70
bl _p_38
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_dc:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_InitializePlatform_ObjCRuntime_Runtime_InitializationOptions_
ObjCRuntime_Runtime_InitializePlatform_ObjCRuntime_Runtime_InitializationOptions_:
.file 10 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/Runtime.iOS.cs"
.loc 10 50 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9800400
.word 0xd280021e
.word 0xa1e0000
.word 0xd2800201
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340000c0
.loc 10 51 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1928]
.word 0xd280003e
.word 0xb900001e
.loc 10 53 0
bl _p_165
.loc 10 54 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_de:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime__cctor
ObjCRuntime_Runtime__cctor:
.loc 9 1539 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.loc 9 1540 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1944]
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_df:
.text
ut_320:
add x0, x0, 16
b ObjCRuntime_Runtime_InitializationOptions_get_IsSimulator
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_InitializationOptions_get_IsSimulator
ObjCRuntime_Runtime_InitializationOptions_get_IsSimulator:
.loc 9 158 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9800400
.word 0xd280021e
.word 0xa1e0000
.word 0xd2800201
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_140:
.text
	.align 4
	.no_dead_strip ObjCRuntime_BaseWrapper__ctor_intptr_bool
ObjCRuntime_BaseWrapper__ctor_intptr_bool:
.file 11 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/BaseWrapper.cs"
.loc 11 16 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 11 17 0
.word 0x394083a0
.word 0x350000e0
.loc 11 18 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_1@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_1@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 11 19 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_141:
.text
	.align 4
	.no_dead_strip ObjCRuntime_BaseWrapper_Finalize
ObjCRuntime_BaseWrapper_Finalize:
.loc 11 23 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba2
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9001fbe
.loc 11 24 0
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9401fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_142:
.text
	.align 4
	.no_dead_strip ObjCRuntime_BaseWrapper_get_Handle
ObjCRuntime_BaseWrapper_get_Handle:
.loc 11 26 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_143:
.text
	.align 4
	.no_dead_strip ObjCRuntime_BaseWrapper_set_Handle_intptr
ObjCRuntime_BaseWrapper_set_Handle_intptr:
.loc 11 26 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_144:
.text
	.align 4
	.no_dead_strip ObjCRuntime_BaseWrapper_Dispose
ObjCRuntime_BaseWrapper_Dispose:
.loc 11 30 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800021
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.loc 11 31 0
.word 0xf9400ba0
bl _p_167
.loc 11 32 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_145:
.text
	.align 4
	.no_dead_strip ObjCRuntime_BaseWrapper_Dispose_bool
ObjCRuntime_BaseWrapper_Dispose_bool:
.loc 11 36 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x340001a0
.loc 11 37 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_2@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_2@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 11 38 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400ba0
.word 0xf9000801
.loc 11 40 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_146:
.text
	.align 4
	.no_dead_strip ObjCRuntime_BlockProxyAttribute__ctor_System_Type
ObjCRuntime_BlockProxyAttribute__ctor_System_Type:
.file 12 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/BlockProxyAttribute.cs"
.loc 12 23 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_147:
.text
	.align 4
	.no_dead_strip ObjCRuntime_BlockProxyAttribute_set_Type_System_Type
ObjCRuntime_BlockProxyAttribute_set_Type_System_Type:
.loc 12 24 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_148:
.text
	.align 4
	.no_dead_strip ObjCRuntime_DelegateProxyAttribute_get_DelegateType
ObjCRuntime_DelegateProxyAttribute_get_DelegateType:
.loc 12 33 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_149:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Libraries_Foundation__cctor
ObjCRuntime_Libraries_Foundation__cctor:
.file 13 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/Libraries.g.cs"
.loc 13 160 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1952]
.word 0xd2800001
bl _p_168
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1960]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_14a:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Dlfcn_dlopen_string_int
ObjCRuntime_Dlfcn_dlopen_string_int:
.file 14 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/Dlfcn.cs"
.loc 14 93 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1
.word 0xaa1903e0
.word 0xb98023a1
bl _p_169
.word 0xaa0003f8
.loc 14 94 0
.word 0xaa1803e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000060
.loc 14 95 0
.word 0xaa1803e0
.word 0x1400002e
.loc 14 100 0
.word 0xaa1903e0
.word 0xd28005e1
.word 0x3940033e
bl _p_170
.word 0x93407c00
.word 0x92800001
.word 0xf2bfffe1
.word 0x6b01001f
.word 0x54000421
.loc 14 101 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1968]
.word 0x39400000
.word 0x35000140
.loc 14 102 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1976]
bl _p_171
.loc 14 103 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1968]
.word 0xd280003e
.word 0x3900001e
.loc 14 106 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1984]
.word 0xaa1903e1
bl _p_121
.word 0xb98023a1
bl _p_169
.word 0xaa0003f8
.loc 14 107 0
.word 0xaa1803e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000060
.loc 14 108 0
.word 0xaa1803e0
.word 0x14000005
.loc 14 110 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_14d:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Dlfcn_GetStringConstant_intptr_string
ObjCRuntime_Dlfcn_GetStringConstant_intptr_string:
.loc 14 132 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xaa1a03e1
bl _p_172
.word 0xaa0003fa
.loc 14 133 0
.word 0xaa1a03e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 14 134 0
.word 0xd2800000
.word 0x1400001d
.loc 14 135 0
.word 0xaa1a03e0
bl _p_173
.word 0xaa0003fa
.loc 14 136 0
.word 0xaa1a03e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 14 137 0
.word 0xd2800000
.word 0x14000010
.loc 14 138 0
.word 0xaa1a03e0
bl _p_174
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1992]
.word 0xeb01001f
.word 0x10000011
.word 0x540000c1
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_14f:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Dlfcn_GetIntPtr_intptr_string
ObjCRuntime_Dlfcn_GetIntPtr_intptr_string:
.loc 14 315 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xaa1a03e1
bl _p_172
.word 0xaa0003fa
.loc 14 316 0
.word 0xaa1a03e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340000c0
.loc 14 317 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0x14000003
.loc 14 318 0
.word 0xaa1a03e0
bl _p_173
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_150:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Dlfcn_GetDouble_intptr_string
ObjCRuntime_Dlfcn_GetDouble_intptr_string:
.loc 14 390 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xaa1a03e1
bl _p_172
.word 0xaa0003fa
.loc 14 391 0
.word 0xaa1a03e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 14 392 0
.word 0x9e6703e0
.word 0x14000003
.loc 14 394 0
.word 0xaa1a03f9
.loc 14 396 0
.word 0xfd400340
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_151:
.text
	.align 4
	.no_dead_strip ObjCRuntime_ErrorHelper_CreateError_int_string_object__
ObjCRuntime_ErrorHelper_CreateError_int_string_object__:
.file 15 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/ErrorHelper.cs"
.loc 15 95 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2000]
.word 0xd2801201
bl _p_7
.word 0xf9001ba0
.word 0xb98013a1
.word 0xd2800022
.word 0xf9400fa3
.word 0xf94013a4
bl _p_175
.word 0xf9401ba0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_152:
.text
	.align 4
	.no_dead_strip ObjCRuntime_MarshalObjectiveCExceptionEventArgs_set_Exception_Foundation_NSException
ObjCRuntime_MarshalObjectiveCExceptionEventArgs_set_Exception_Foundation_NSException:
.file 16 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/Exceptions.cs"
.loc 16 16 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_157:
.text
	.align 4
	.no_dead_strip ObjCRuntime_MarshalObjectiveCExceptionEventArgs_get_ExceptionMode
ObjCRuntime_MarshalObjectiveCExceptionEventArgs_get_ExceptionMode:
.loc 16 17 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_158:
.text
	.align 4
	.no_dead_strip ObjCRuntime_MarshalObjectiveCExceptionEventArgs_set_ExceptionMode_ObjCRuntime_MarshalObjectiveCExceptionMode
ObjCRuntime_MarshalObjectiveCExceptionEventArgs_set_ExceptionMode_ObjCRuntime_MarshalObjectiveCExceptionMode:
.loc 16 17 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9001801
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_159:
.text
	.align 4
	.no_dead_strip ObjCRuntime_MarshalObjectiveCExceptionEventArgs__ctor
ObjCRuntime_MarshalObjectiveCExceptionEventArgs__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_15a:
.text
	.align 4
	.no_dead_strip ObjCRuntime_MarshalManagedExceptionEventArgs_set_Exception_System_Exception
ObjCRuntime_MarshalManagedExceptionEventArgs_set_Exception_System_Exception:
.loc 16 23 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_15f:
.text
	.align 4
	.no_dead_strip ObjCRuntime_MarshalManagedExceptionEventArgs_get_ExceptionMode
ObjCRuntime_MarshalManagedExceptionEventArgs_get_ExceptionMode:
.loc 16 24 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_160:
.text
	.align 4
	.no_dead_strip ObjCRuntime_MarshalManagedExceptionEventArgs_set_ExceptionMode_ObjCRuntime_MarshalManagedExceptionMode
ObjCRuntime_MarshalManagedExceptionEventArgs_set_ExceptionMode_ObjCRuntime_MarshalManagedExceptionMode:
.loc 16 24 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9001801
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_161:
.text
	.align 4
	.no_dead_strip ObjCRuntime_MarshalManagedExceptionEventArgs__ctor
ObjCRuntime_MarshalManagedExceptionEventArgs__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_162:
.text
ut_355:
add x0, x0, 16
b ObjCRuntime_ObjectWrapper_Convert_object
.text
	.align 4
	.no_dead_strip ObjCRuntime_ObjectWrapper_Convert_object
ObjCRuntime_ObjectWrapper_Convert_object:
.file 17 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/ObjectWrapper.cs"
.loc 17 11 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf
.word 0xf9400ba0
.word 0xb50000c0
.loc 17 12 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0x14000010
.loc 17 14 0
.word 0xf9000fbf
.loc 17 16 0
.word 0x910063a1
.word 0xf9400ba0
.word 0xf9000fa0
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 17 18 0
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_163:
.text
ut_356:
add x0, x0, 16
b ObjCRuntime_ObjectWrapper_Convert_intptr
.text
	.align 4
	.no_dead_strip ObjCRuntime_ObjectWrapper_Convert_intptr
ObjCRuntime_ObjectWrapper_Convert_intptr:
.loc 17 23 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf
.word 0xf9000fbf
.loc 17 25 0
.word 0xf9400ba0
.word 0xf9000fa0
.loc 17 27 0
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_164:
.text
	.align 4
	.no_dead_strip ObjCRuntime_IntPtrEqualityComparer_Equals_intptr_intptr
ObjCRuntime_IntPtrEqualityComparer_Equals_intptr_intptr:
.loc 9 1637 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa0
.word 0xf94013a1
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_165:
.text
	.align 4
	.no_dead_strip ObjCRuntime_IntPtrEqualityComparer_GetHashCode_intptr
ObjCRuntime_IntPtrEqualityComparer_GetHashCode_intptr:
.loc 9 1641 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_166:
.text
	.align 4
	.no_dead_strip ObjCRuntime_IntPtrEqualityComparer__ctor
ObjCRuntime_IntPtrEqualityComparer__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_167:
.text
	.align 4
	.no_dead_strip ObjCRuntime_TypeEqualityComparer_Equals_System_Type_System_Type
ObjCRuntime_TypeEqualityComparer_Equals_System_Type_System_Type:
.loc 9 1649 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa0
.word 0xf94013a1
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_168:
.text
	.align 4
	.no_dead_strip ObjCRuntime_TypeEqualityComparer_GetHashCode_System_Type
ObjCRuntime_TypeEqualityComparer_GetHashCode_System_Type:
.loc 9 1653 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2800001
.word 0xf9400fa0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 9 1654 0
.word 0xd2800000
.word 0x14000007
.loc 9 1655 0
.word 0xf9400fa0
.word 0xf9400fa1
.word 0xf9400021
.word 0xf9402430
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_169:
.text
	.align 4
	.no_dead_strip ObjCRuntime_TypeEqualityComparer__ctor
ObjCRuntime_TypeEqualityComparer__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_16a:
.text
ut_363:
add x0, x0, 16
b ObjCRuntime_IntPtrTypeValueTuple__ctor_intptr_System_Type
.text
	.align 4
	.no_dead_strip ObjCRuntime_IntPtrTypeValueTuple__ctor_intptr_System_Type
ObjCRuntime_IntPtrTypeValueTuple__ctor_intptr_System_Type:
.loc 9 1669 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000020
.loc 9 1670 0
.word 0xf94013a0
.word 0xf9000420
.word 0x91002021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 9 1671 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_16b:
.text
ut_364:
add x0, x0, 16
b ObjCRuntime_IntPtrTypeValueTuple_Equals_ObjCRuntime_IntPtrTypeValueTuple
.text
	.align 4
	.no_dead_strip ObjCRuntime_IntPtrTypeValueTuple_Equals_ObjCRuntime_IntPtrTypeValueTuple
ObjCRuntime_IntPtrTypeValueTuple_Equals_ObjCRuntime_IntPtrTypeValueTuple:
.loc 9 1675 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2008]
.word 0xf9400003
.word 0xf9400ba0
.word 0xf9400001
.word 0xf9400fa2
.word 0xaa0303e0
.word 0xf9400063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2016]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x34000260

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2024]
.word 0xf9400003
.word 0xf9400ba0
.word 0xf9400401
.word 0xf94013a2
.word 0xaa0303e0
.word 0xf9400063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2032]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_16c:
.text
ut_365:
add x0, x0, 16
b ObjCRuntime_IntPtrTypeValueTuple_Equals_object
.text
	.align 4
	.no_dead_strip ObjCRuntime_IntPtrTypeValueTuple_Equals_object
ObjCRuntime_IntPtrTypeValueTuple_Equals_object:
.loc 9 1681 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2040]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb4000338
.loc 9 1682 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000341
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2040]
.word 0xeb01001f
.word 0x10000011
.word 0x54000241
.word 0x91004340
.word 0xf9400001
.word 0xf90017a1
.word 0xf9400400
.word 0xf9001ba0
.word 0xf94013a0
.word 0xf94017a1
.word 0xf9401ba2
bl _p_176
.word 0x53001c00
.word 0x14000002
.loc 9 1684 0
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_16d:
.text
ut_366:
add x0, x0, 16
b ObjCRuntime_IntPtrTypeValueTuple_GetHashCode
.text
	.align 4
	.no_dead_strip ObjCRuntime_IntPtrTypeValueTuple_GetHashCode
ObjCRuntime_IntPtrTypeValueTuple_GetHashCode:
.loc 9 1689 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2008]
.word 0xf9400002
.word 0xf9400ba0
.word 0xf9400001
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2048]
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2024]
.word 0xf9400002
.word 0xf9400ba0
.word 0xf9400401
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2056]
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94013a0
.word 0x4a010000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_16e:
.text
ut_367:
add x0, x0, 16
b ObjCRuntime_IntPtrTypeValueTuple__cctor
.text
	.align 4
	.no_dead_strip ObjCRuntime_IntPtrTypeValueTuple__cctor
ObjCRuntime_IntPtrTypeValueTuple__cctor:
.loc 9 1661 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1376]
.word 0xf9400001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2008]
.word 0xf9000001
.loc 9 1662 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1392]
.word 0xf9400001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2024]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_16f:
.text
	.align 4
	.no_dead_strip ObjCRuntime_RuntimeException__ctor_int_bool_string_object__
ObjCRuntime_RuntimeException__ctor_int_bool_string_object__:
.file 18 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/RuntimeException.cs"
.loc 18 22 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf9400ba0
.word 0xb9801ba1
.word 0x394083a2
.word 0xd2800003
.word 0xf94017a4
.word 0xf9401ba5
bl _p_177
.loc 18 24 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_170:
.text
	.align 4
	.no_dead_strip ObjCRuntime_RuntimeException__ctor_int_bool_System_Exception_string_object__
ObjCRuntime_RuntimeException__ctor_int_bool_System_Exception_string_object__:
.loc 18 27 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf9001fa5
.word 0xf9401ba0
.word 0xf9401fa1
bl _p_31
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xf94017a2
bl _p_178
.loc 18 29 0
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9008801
.loc 18 30 0
.word 0x394083a1
.word 0x39023001
.loc 18 31 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_171:
.text
	.align 4
	.no_dead_strip ObjCRuntime_RuntimeException_set_Code_int
ObjCRuntime_RuntimeException_set_Code_int:
.loc 18 33 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9008801
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_172:
.text
	.align 4
	.no_dead_strip ObjCRuntime_RuntimeException_set_Error_bool
ObjCRuntime_RuntimeException_set_Error_bool:
.loc 18 35 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x394063a1
.word 0xf9400ba0
.word 0x39023001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_173:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Selector__ctor_intptr
ObjCRuntime_Selector__ctor_intptr:
.file 19 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/Selector.cs"
.loc 19 46 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800022
bl _p_179
.loc 19 48 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_174:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Selector__ctor_intptr_bool
ObjCRuntime_Selector__ctor_intptr_bool:
.loc 19 52 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0x394083a0
.word 0x340000a0
.word 0xf9400fa0
bl _p_180
.word 0x53001c00
.word 0x340002a0
.loc 19 55 0
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000c20
.loc 19 56 0
bl _p_122
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 19 57 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 19 53 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd281da61
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_175:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Selector__ctor_string
ObjCRuntime_Selector__ctor_string:
.loc 19 69 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 19 70 0
bl _p_181
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xf9000c01
.loc 19 71 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_176:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Selector_get_Handle
ObjCRuntime_Selector_get_Handle:
.loc 19 74 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_177:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Selector_op_Equality_ObjCRuntime_Selector_ObjCRuntime_Selector
ObjCRuntime_Selector_op_Equality_ObjCRuntime_Selector_ObjCRuntime_Selector:
.loc 19 86 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xb50000c0
.loc 19 87 0
.word 0xd2800001
.word 0xf9400fa0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x1400000b
.loc 19 88 0
.word 0xf9400fa0
.word 0xb5000060
.loc 19 89 0
.word 0xd2800000
.word 0x14000007
.loc 19 92 0
.word 0xf9400ba0
.word 0xf9400c00
.word 0xf9400fa1
.word 0xf9400c21
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_178:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Selector_Equals_object
ObjCRuntime_Selector_Equals_object:
.loc 19 96 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf94013b8
.word 0xf94013a0
.word 0xeb1f001f
.word 0x54000180
.word 0xf94013a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2064]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xf9400fa0
.word 0xaa1803e1
bl _p_182
.word 0x53001c00
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_179:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Selector_Equals_ObjCRuntime_Selector
ObjCRuntime_Selector_Equals_ObjCRuntime_Selector:
.loc 19 100 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xd2800001
bl _p_183
.word 0x53001c00
.word 0x34000060
.loc 19 101 0
.word 0xd2800000
.word 0x14000007
.loc 19 103 0
.word 0xf9400ba0
.word 0xf9400c00
.word 0xf9400fa1
.word 0xf9400c21
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_17a:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Selector_GetHashCode
ObjCRuntime_Selector_GetHashCode:
.loc 19 108 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540000c0
.word 0xf9400c00
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801f60
.word 0xaa1103e1
bl _p_2

Lme_17b:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Selector_GetName_intptr
ObjCRuntime_Selector_GetName_intptr:
.loc 19 113 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_184
bl _p_84
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_17c:
.text
	.align 4
	.no_dead_strip ObjCRuntime_UserDelegateTypeAttribute__ctor_System_Type
ObjCRuntime_UserDelegateTypeAttribute__ctor_System_Type:
.file 20 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/UserDelegateTypeAttribute.cs"
.loc 20 44 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 20 45 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_180:
.text
	.align 4
	.no_dead_strip ObjCRuntime_UserDelegateTypeAttribute_set_UserDelegateType_System_Type
ObjCRuntime_UserDelegateTypeAttribute_set_UserDelegateType_System_Type:
.loc 20 48 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_181:
.text
	.align 4
	.no_dead_strip ObjCRuntime_MonoPInvokeCallbackAttribute__ctor_System_Type
ObjCRuntime_MonoPInvokeCallbackAttribute__ctor_System_Type:
.file 21 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/MonoPInvokeCallbackAttribute.cs"
.loc 21 33 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 21 34 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_182:
.text
	.align 4
	.no_dead_strip ObjCRuntime_MonoPInvokeCallbackAttribute_set_DelegateType_System_Type
ObjCRuntime_MonoPInvokeCallbackAttribute_set_DelegateType_System_Type:
.loc 21 36 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_183:
.text
ut_389:
add x0, x0, 16
b ObjCRuntime_BlockLiteral_SetupBlockImpl_System_Delegate_System_Delegate_bool_string
.text
	.align 4
	.no_dead_strip ObjCRuntime_BlockLiteral_SetupBlockImpl_System_Delegate_System_Delegate_bool_string
ObjCRuntime_BlockLiteral_SetupBlockImpl_System_Delegate_System_Delegate_bool_string:
.file 22 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/Blocks.cs"
.loc 22 126 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xa901e7b8
.word 0xf90017ba
.word 0xaa0003f6
.word 0xf9001ba1
.word 0xaa0203f8
.word 0xaa0303f9
.word 0xaa0403fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2072]
.word 0xf9400000
.word 0xf90002c0
.loc 22 127 0
.word 0xf9401ba0
bl _p_78
.word 0xf9000ac0
.loc 22 129 0
.word 0x340001b9
.loc 22 130 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2080]
.word 0xd2800401
bl _p_7
.word 0xf9003ba0
.word 0xf9401ba1
.word 0xaa1803e2
bl _p_185
.word 0xf9403ba0
.word 0xaa0003f9
.loc 22 131 0
.word 0x14000002
.loc 22 132 0
.word 0xaa1803f9
.loc 22 134 0
.word 0x910183a0
.word 0xf90037a0
.word 0xaa1903e0
bl _p_83
.word 0xf94037be
.word 0xf90003c0
.word 0xb98063a0
.word 0x93407c00
.word 0xf90012c0
.loc 22 135 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xf90016c0
.loc 22 136 0
.word 0xd280001e
.word 0xf2a8401e
.word 0xb9000ade
.loc 22 145 0
bl _p_186
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9408050
.word 0xd63f0200
.word 0xaa0003fa
.loc 22 146 0
.word 0xd2800600
.word 0xb9801b41
.word 0xb010000
.word 0x11000400
.loc 22 147 0
bl _p_187
.word 0xaa0003f9
.loc 22 149 0
.word 0xf9000ed9
.loc 22 150 0
.word 0xf9400ed8
.loc 22 151 0
bl _p_188
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400801
.word 0xf90027a1
.word 0xf9400c01
.word 0xf9002ba1
.word 0xf9401000
.word 0xf9002fa0
.word 0xf9401fa0
.word 0xf9000300
.word 0xf94023a0
.word 0xf9000700
.word 0xf94027a0
.word 0xf9000b00
.word 0xf9402ba0
.word 0xf9000f00
.word 0xf9402fa0
.word 0xf9001300
.loc 22 152 0
.word 0xaa1903e0
.word 0xd2800501
.word 0x93407c21
.word 0x8b010000
.word 0xd2800081
.word 0x93407c21
.word 0x8b010000
.word 0xf9001300
.loc 22 153 0
.word 0xd5033bbf
.word 0xd280003e
.word 0xb9002b1e
.loc 22 154 0
.word 0xf9401302
.word 0xb9801b43
.word 0xaa1a03e0
.word 0xd2800001
bl _p_189
.loc 22 155 0
.word 0xf9401300
.word 0xb9801b41
.word 0x93407c21
.word 0x8b010000
.word 0x3900001f
.loc 22 156 0
.word 0xf9400bb6
.word 0xa941e7b8
.word 0xf94017ba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_185:
.text
ut_390:
add x0, x0, 16
b ObjCRuntime_BlockLiteral_CleanupBlock
.text
	.align 4
	.no_dead_strip ObjCRuntime_BlockLiteral_CleanupBlock
ObjCRuntime_BlockLiteral_CleanupBlock:
.loc 22 210 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xb9001bbf
.word 0xf9400ba0
.word 0xf9401000
.word 0x910063a1
.word 0xf90013a1
bl _p_75
.word 0xf94013be
.word 0xf90003c0
.word 0x910063a0
bl _p_190
.loc 22 211 0
.word 0xf9400ba0
.word 0xf9400c00
.loc 22 216 0
.word 0x9100a000
.word 0x92800001
.word 0xf2bfffe1
.word 0x885f7c10
.word 0x8b010210
.word 0x8811fc10
.word 0x35ffffb1
.word 0xd5033bbf
.word 0xaa1003e0
.loc 22 219 0
.word 0x35000080
.loc 22 220 0
.word 0xf9400ba0
.word 0xf9400c00
bl _p_191
.loc 22 221 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_186:
.text
ut_391:
add x0, x0, 16
b ObjCRuntime_BlockLiteral_get_Target
.text
	.align 4
	.no_dead_strip ObjCRuntime_BlockLiteral_get_Target
ObjCRuntime_BlockLiteral_get_Target:
.loc 22 225 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xb9002bbf
.word 0xf9401740

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x35000060
.word 0xf9401359
.word 0x14000002
.word 0xf9401759
.word 0x9100a3a0
.word 0xf9001ba0
.loc 22 226 0
.word 0xaa1903e0
bl _p_75
.word 0xf9401bbe
.word 0xf90003c0
.word 0x9100a3a0
bl _p_76
.word 0xaa0003fa
.loc 22 227 0
.word 0xaa1a03f9
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2088]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803f9
.loc 22 228 0
.word 0xb4000098
.loc 22 229 0
.word 0x3940033e
.word 0xf9400f20
.word 0x14000002
.loc 22 230 0
.word 0xaa1a03e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_187:
.text
ut_392:
add x0, x0, 16
b ObjCRuntime_BlockLiteral_GetDelegateForBlock_T_REF
.text
	.align 4
	.no_dead_strip ObjCRuntime_BlockLiteral_GetDelegateForBlock_T_REF
ObjCRuntime_BlockLiteral_GetDelegateForBlock_T_REF:
.loc 22 236 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0xf90017a0
.word 0xf9400fa0
bl _p_192
.word 0xaa0003e1
.word 0xf94017a0
bl _p_193
.word 0xf90013a0
.word 0xf9400fa0
bl _p_194
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9400441
bl _p_136
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_188:
.text
ut_393:
add x0, x0, 16
b ObjCRuntime_BlockLiteral_IsManagedBlock_intptr
.text
	.align 4
	.no_dead_strip ObjCRuntime_BlockLiteral_IsManagedBlock_intptr
ObjCRuntime_BlockLiteral_IsManagedBlock_intptr:
.loc 22 247 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x350001e0
.loc 22 250 0
.word 0xf9000fba
.loc 22 251 0
bl _p_188
.word 0xaa0003fa
.loc 22 252 0
.word 0xaa1a03e0
.word 0xf9400800
.word 0xf9400fa1
.word 0xf9400c21
.word 0xf9400821
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 22 248 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd281e1e1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_189:
.text
ut_394:
add x0, x0, 16
b ObjCRuntime_BlockLiteral_GetBlockForDelegate_System_Reflection_MethodInfo_object_string
.text
	.align 4
	.no_dead_strip ObjCRuntime_BlockLiteral_GetBlockForDelegate_System_Reflection_MethodInfo_object_string
ObjCRuntime_BlockLiteral_GetBlockForDelegate_System_Reflection_MethodInfo_object_string:
.loc 22 258 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf9001fa2
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xb50000d9
.loc 22 259 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0x14000096
.loc 22 261 0
.word 0xaa1903f7
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1760]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb40011d7
.loc 22 264 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf940b430
.word 0xd63f0200
.word 0xaa0003f8
.loc 22 266 0
.word 0xaa1803e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940b830
.word 0xd63f0200
.word 0xaa0003e3

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2096]
.word 0xaa0303e0
.word 0xd2800002
.word 0xf9400063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2104]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0xaa0003f7
.loc 22 267 0
.word 0xaa1703e0
.word 0xb9801800
.word 0x34001640
.loc 22 270 0
.word 0xd2800001
.word 0xb9801ae0
.word 0xeb01001f
.word 0x10000011
.word 0x54004029
.word 0xf94012f6
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2112]
.word 0xeb01001f
.word 0x10000011
.word 0x54003e41
.word 0xaa1603f7
.loc 22 271 0
.word 0x394002de
.word 0xf9400ac0
.word 0xd2800001
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35001940
.loc 22 274 0
.word 0x394002fe
.word 0xf9400ae3

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2120]
.word 0xaa0303e0
.word 0xd2800502
.word 0xf9400063
.word 0xf9417c70
.word 0xd63f0200
.word 0xaa0003f6
.loc 22 275 0
.word 0xaa1603e0
.word 0xd2800001
bl _p_195
.word 0x53001c00
.word 0x35001d40
.loc 22 278 0
.word 0xaa1603e0
.word 0xd2800001
.word 0xf94002c2
.word 0xf9407050
.word 0xd63f0200
.word 0xaa0003f6
.loc 22 279 0
.word 0xaa1603e0
.word 0xb4002440
.loc 22 282 0
.word 0xaa1603f5
.word 0xeb1f02df
.word 0x54000160
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1760]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800015
.word 0xb4002a95
.loc 22 290 0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.loc 22 291 0
.word 0xf9401fa0
.word 0xb4003360
.loc 22 298 0
.word 0x910103b8
.word 0xb4000176
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1760]
.word 0xeb01001f
.word 0x10000011
.word 0x54003601
.word 0xaa1603f7
.word 0xb4000179
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1760]
.word 0xeb01001f
.word 0x10000011
.word 0x54003481
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1903e2
.word 0xd2800023
.word 0xf9401fa4
bl _p_196
.loc 22 300 0
.word 0x910103a0
bl _p_197
.word 0xf9004ba0
.loc 22 301 0
.word 0x910103a0
bl _p_198
.word 0xf9404ba0
.loc 22 302 0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xf9401bb9
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.loc 22 262 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd281e361
bl _p_68
.word 0xf9004ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800061
bl _p_30
.word 0xf90063a0
.word 0xf9005fa0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94063a3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9405fa0
.word 0xf9005ba0
.word 0xf90057a0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9405ba3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94057a0
.word 0xf90053a0
.word 0xf9004fa0
.word 0xf9400320
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94053a3
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xd283ea00
bl _p_70
bl _p_38
.loc 22 268 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2821041
bl _p_68
.word 0xf9004ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800041
bl _p_30
.word 0xf9005ba0
.word 0xf90057a0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9405ba3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94057a0
.word 0xf90053a0
.word 0xf9004fa0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94053a3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xd283e960
bl _p_70
bl _p_38
.loc 22 272 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2823ba1
bl _p_68
.word 0xf9004ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800041
bl _p_30
.word 0xf9005ba0
.word 0xf90057a0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9405ba3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94057a0
.word 0xf90053a0
.word 0xf9004fa0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94053a3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xd283e980
bl _p_70
bl _p_38
.loc 22 276 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28262c1
bl _p_68
.word 0xf9004ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800061
bl _p_30
.word 0xf90063a0
.word 0xf9005fa0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94063a3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9405fa0
.word 0xf9005ba0
.word 0xf90057a0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9405ba3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94057a0
.word 0xf90053a0
.word 0xf9004fa0
.word 0x394002fe
.word 0xf9400ae1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94053a3
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xd283e9a0
bl _p_70
bl _p_38
.loc 22 280 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2829221
bl _p_68
.word 0xf9004ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800061
bl _p_30
.word 0xf90063a0
.word 0xf9005fa0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94063a3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9405fa0
.word 0xf9005ba0
.word 0xf90057a0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9405ba3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94057a0
.word 0xf90053a0
.word 0xf9004fa0
.word 0x394002fe
.word 0xf9400ae1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94053a3
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xd283e9c0
bl _p_70
bl _p_38
.loc 22 283 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd282be41
bl _p_68
.word 0xf9004ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800081
bl _p_30
.word 0xf9006ba0
.word 0xf90067a0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9406ba3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94067a0
.word 0xf90063a0
.word 0xf9005fa0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94063a3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9405fa0
.word 0xf9005ba0
.word 0xf90057a0
.word 0x394002fe
.word 0xf9400ae1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9405ba3
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94057a0
.word 0xf90053a0
.word 0xf9004fa0
.word 0xf94002c0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94053a3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xd283e9e0
bl _p_70
bl _p_38
.loc 22 295 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd282efe1
bl _p_68
.word 0xf9004fa0
.word 0xf9400320
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9404fa0
bl _p_123
.word 0xf9004ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf9404ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eb40
bl _p_70
bl _p_38
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_18a:
.text
ut_396:
add x0, x0, 16
b ObjCRuntime_BlockLiteral__cctor
.text
	.align 4
	.no_dead_strip ObjCRuntime_BlockLiteral__cctor
ObjCRuntime_BlockLiteral__cctor:
.loc 22 85 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2128]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2072]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_18c:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_Initialize_ObjCRuntime_Runtime_InitializationOptions_
ObjCRuntime_Class_Initialize_ObjCRuntime_Runtime_InitializationOptions_:
.file 23 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/Class.cs"
.loc 23 34 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1392]
.word 0xf9400000
.word 0xf90017a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2136]
.word 0xd2800901
bl _p_7
.word 0xf94017a1
.word 0xf90013a0
bl _p_200
.word 0xf94013a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2144]
.word 0xf9000001
.loc 23 37 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_18d:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class__ctor_System_Type
ObjCRuntime_Class__ctor_System_Type:
.loc 23 59 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
bl _p_201
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xf9000801
.loc 23 60 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_18e:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class__ctor_intptr
ObjCRuntime_Class__ctor_intptr:
.loc 23 64 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 23 65 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_18f:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class__ctor_intptr_bool
ObjCRuntime_Class__ctor_intptr_bool:
.loc 23 71 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 23 72 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_190:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_get_Handle
ObjCRuntime_Class_get_Handle:
.loc 23 80 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_191:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_get_Name
ObjCRuntime_Class_get_Name:
.loc 23 89 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
bl _p_154
.loc 23 90 0
bl _p_84
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_192:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_GetHandle_string
ObjCRuntime_Class_GetHandle_string:
.loc 23 96 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_202
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_193:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_GetHandle_System_Type
ObjCRuntime_Class_GetHandle_System_Type:
.loc 23 109 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_201
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_194:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_GetClassHandle_System_Type_bool_bool_
ObjCRuntime_Class_GetClassHandle_System_Type_bool_bool_:
.loc 23 115 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001bba
.word 0xaa0003f8
.word 0xf9001fa1
.word 0xaa0203fa
.word 0xf90023bf
.word 0xf90027bf
.word 0x390143bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xf90023a0
.loc 23 117 0
.word 0xaa1803e0
.word 0x3940031e
bl _p_137
.word 0x53001c00
.word 0x35000160
.word 0xaa1803e0
.word 0x3940031e
bl _p_203
.word 0x53001c00
.word 0x350000c0
.word 0xaa1803e0
.word 0x3940031e
bl _p_204
.word 0x53001c00
.word 0x340000e0
.loc 23 118 0
.word 0x3900035f
.loc 23 119 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0x1400007d
.loc 23 126 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2144]
.word 0xf9400000
.word 0xf90027a0
.word 0xd2800000
.word 0x390143a0
.word 0xf94027b7
.word 0x910143b6
.word 0xaa1703e0
.word 0xaa1603e1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1703e0
.word 0xaa1603e1
bl _p_109
.loc 23 127 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2144]
.word 0xf9400003
.word 0x910103a2
.word 0xaa0303e0
.word 0xaa1803e1
.word 0x3940007e
bl _p_205
.word 0x53001c00
.word 0x53001c17
.word 0xf9002fbf
.word 0x94000005
.word 0xf9402fa0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf9003fbe
.word 0x394143a0
.word 0x34000060
.word 0xf94027a0
bl _p_111
.word 0xf9403fbe
.word 0xd61f03c0
.loc 23 129 0
.word 0x350006b7
.loc 23 130 0
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_206
.word 0xf90023a0
.loc 23 131 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2144]
.word 0xf9400000
.word 0xf90027a0
.word 0xd2800000
.word 0x390143a0
.word 0xf94027b7
.word 0x910143b6
.word 0xaa1703e0
.word 0xaa1603e1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1703e0
.word 0xaa1603e1
bl _p_109
.loc 23 132 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2144]
.word 0xf9400002
.word 0xf94023a1
.word 0x39400340
.word 0xaa0203fa
.word 0xaa1803f7
.word 0xaa0103f6
.word 0x35000060
.word 0xd2800015
.word 0x14000002
.word 0xd2800035
.word 0x93407ea0
.word 0x8b0002c2
.word 0xaa1a03e0
.word 0xaa1703e1
.word 0x3940035e
bl _p_207
.word 0xf90033bf
.word 0x94000005
.word 0xf94033a0
.word 0xb4000040
bl _p_73
.word 0x14000017
.word 0xf90047be
.word 0x394143a0
.word 0x34000060
.word 0xf94027a0
bl _p_111
.word 0xf94047be
.word 0xd61f03c0
.loc 23 134 0
.word 0x910103a0
bl _p_208
.word 0xd280003e
.word 0x8a1e0000
.word 0xd2800021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x39000340
.loc 23 135 0
.word 0x39400340
.word 0x340000c0
.loc 23 136 0
.word 0xf94023a0
.word 0xd2800021
.word 0x93407c21
.word 0xcb010000
.word 0xf90023a0
.loc 23 139 0
.word 0xf94023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 23 141 0
.word 0x3940e3a0
.word 0x350001a0
.loc 23 143 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0x14000002
.loc 23 151 0
.word 0xf94023a0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xf9401bba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.loc 23 142 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2831741
bl _p_68
.word 0xf9004fa0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9404fa0
bl _p_123
.word 0xf9004ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf9404ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eb40
bl _p_70
bl _p_38

Lme_195:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_GetClassHandle_System_Type
ObjCRuntime_Class_GetClassHandle_System_Type:
.loc 23 156 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x390063bf
.word 0x910063a2
.word 0xf9400ba0
.word 0xd2800021
bl _p_209
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_196:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_GetClassForObject_intptr
ObjCRuntime_Class_GetClassForObject_intptr:
.loc 23 161 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
adrp x1, L_OBJC_SELECTOR_REFERENCES_3@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_3@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba0
bl _p_210
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_197:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_LookupFullName_intptr
ObjCRuntime_Class_LookupFullName_intptr:
.loc 23 167 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xaa1a03e0
bl _p_128
.word 0xaa0003fa
.loc 23 168 0
.word 0xaa1a03e0
.word 0xd2800001
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x350000c0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf941bc30
.word 0xd63f0200
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_198:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_Lookup_intptr
ObjCRuntime_Class_Lookup_intptr:
.loc 23 178 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800021
bl _p_211
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_199:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_LookupClass_intptr_bool
ObjCRuntime_Class_LookupClass_intptr_bool:
.loc 23 190 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0
.word 0xf90017a1
.word 0x3900c3bf
.word 0xf94013b9
.loc 23 192 0
.word 0x9100c3a1
.word 0xaa1903e0
bl _p_212
.word 0xaa0003f8
.loc 23 193 0
.word 0xaa1803e0
.word 0xd2800001
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 23 194 0
.word 0xaa1803e0
.word 0x1400000f
.loc 23 197 0
.word 0xaa1903e0
bl _p_213
.word 0xaa0003f9
.loc 23 198 0
.word 0xaa1903e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x35fffd00
.loc 23 204 0
.word 0x3940a3a0
.word 0x350000c0
.loc 23 207 0
.word 0xd2800000
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.loc 23 205 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2832c61
bl _p_68
.word 0xf90037a0
.word 0x910083a0
.word 0xf90043a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2813da1
bl _p_68
.word 0xaa0003e1
.word 0xf94043a0
bl _p_126
.word 0xf9003ba0
.word 0xf94013a0
bl _p_154
.word 0xf9003fa0
.word 0xd2802840
bl _p_97
.word 0xaa0003e2
.word 0xf94037a0
.word 0xf9403ba1
.word 0xf9403fa3
.word 0xf9000843
bl _p_24
.word 0xf90033a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf94033a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eb40
bl _p_70
bl _p_38

Lme_19a:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_FindClass_System_Type_bool_
ObjCRuntime_Class_FindClass_System_Type_bool_:
.loc 23 218 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xaa0003f9
.word 0xf90023a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xf9400000
.word 0xf9400c18
.loc 23 220 0
.word 0xf94023a0
.word 0x3900001f
.loc 23 222 0
.word 0xd2800000
.word 0x2a0003e0
.word 0xeb00031f
.word 0x540000c1
.loc 23 224 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0x1400007f
.loc 23 227 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940f030
.word 0xd63f0200
.word 0x53001c00
.word 0x340000c0
.loc 23 228 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9409c30
.word 0xd63f0200
.word 0xaa0003f9
.loc 23 231 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf941c430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400817
.loc 23 232 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f6
.loc 23 233 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9404030
.word 0xd63f0200
.word 0x93407c00
.word 0x9280001e
.word 0xf2bfbffe
.word 0xa1e0019
.loc 23 234 0
.word 0xd2800015
.word 0x14000020
.loc 23 235 0
.word 0xf9400700
.word 0x93407ea1
.word 0xd2800182
.word 0x9b027c21
.word 0x8b010000
.word 0xb9400814
.loc 23 236 0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xaa1903e2
.word 0xaa1403e3
bl _p_214
.word 0x53001c00
.word 0x34000240
.loc 23 239 0
.word 0xf9400700
.word 0x93407ea1
.word 0xd2800182
.word 0x9b027c21
.word 0x8b010000
.word 0xf9400000
.loc 23 240 0
.word 0xb9803f01
.word 0xb9804302
.word 0x4b020021
.word 0x6b0102bf
.word 0x9a9fa7e1
.word 0xd2800002
.word 0x6b02003f
.word 0x9a9f17e2
.word 0xf94023a1
.word 0x39000022
.loc 23 244 0
.word 0x14000035
.loc 23 234 0
.word 0x110006b5
.word 0xb9803f00
.word 0x6b0002bf
.word 0x54fffbeb
.loc 23 249 0
.word 0xd2800015
.word 0x14000028
.loc 23 250 0
.word 0xf9400f00
.word 0x93407ea1
.word 0xd2800102
.word 0x9b027c21
.word 0x8b010000
.word 0xb9400014
.loc 23 251 0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xaa1903e2
.word 0xaa1403e3
bl _p_214
.word 0x53001c00
.word 0x34000340
.loc 23 255 0
.word 0xf9400f00
.word 0x93407ea1
.word 0xd2800102
.word 0x9b027c21
.word 0x8b010000
.word 0xb9400419
.loc 23 256 0
.word 0x2a1903e0
.word 0xb9803f01
.word 0xb9804302
.word 0x4b020021
.word 0x93407c21
.word 0xeb01001f
.word 0x9a9fa7e0
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9f17e1
.word 0xf94023a0
.word 0x39000001
.loc 23 257 0
.word 0xf9400700
.word 0x2a1903e1
.word 0xd2800182
.word 0x9b027c21
.word 0x8b010000
.word 0xf9400000
.word 0x14000009
.loc 23 249 0
.word 0x110006b5
.word 0xb9804b00
.word 0x6b0002bf
.word 0x54fffaeb
.loc 23 260 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_19b:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_CompareTokenReference_string_int_int_uint
ObjCRuntime_Class_CompareTokenReference_string_int_int_uint:
.loc 23 265 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xa901ebb9
.word 0xf90017a0
.word 0xf9001ba1
.word 0xaa0203f9
.word 0xaa0303fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xf9400000
.word 0xf9400c16
.loc 23 268 0
.word 0xd280003e
.word 0xa1e0340
.word 0xd2800021
.word 0x6b01001f
.word 0x540005a1
.loc 23 270 0
.word 0x53017f56
.loc 23 271 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xf9400000
.word 0xf9400c00
.word 0xf9400800
.word 0xd2800201
.word 0x1b167c21
.word 0x93407c21
.word 0x8b01001a
.loc 23 273 0
.word 0xaa1a03e0
.word 0xd2800101
.word 0x93407c21
.word 0x8b010000
.word 0xd2800081
.word 0x93407c21
.word 0x8b010000
bl _p_215
.word 0x93407c00
.word 0xaa0003f6
.loc 23 274 0
.word 0x93407f20
.word 0x2a1603e1
.word 0xeb01001f
.word 0x54000060
.loc 23 275 0
.word 0xd2800000
.word 0x14000025
.loc 23 278 0
.word 0xd2800100
.word 0x93407c00
.word 0x8b000340
bl _p_215
.word 0x93407c00
.word 0xaa0003f9
.loc 23 279 0
.word 0xb98033a0
.word 0x93407c00
.word 0x2a1903e1
.word 0xeb01001f
.word 0x54000060
.loc 23 280 0
.word 0xd2800000
.word 0x14000018
.loc 23 283 0
.word 0xaa1a03e0
bl _p_173
.word 0xaa0003fa
.loc 23 284 0
.word 0x14000010
.loc 23 286 0
.word 0x53087f40
.word 0x2a0003e0
.word 0x93407f21
.word 0xeb01001f
.word 0x54000060
.loc 23 287 0
.word 0xd2800000
.word 0x1400000d
.loc 23 289 0
.word 0x53017f40
.word 0xd2800ffe
.word 0xa1e001a
.loc 23 290 0
.word 0xf94002c0
.word 0xd2800101
.word 0x1b017f41
bl _p_216
.word 0xaa0003fa
.loc 23 293 0
.word 0xaa1a03e0
.word 0xf94017a1
bl _p_217
.word 0x53001c00
.word 0xf9400bb6
.word 0xa941ebb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_19c:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_FindType_intptr_bool_
ObjCRuntime_Class_FindType_intptr_bool_:
.loc 23 298 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x390183bf
.word 0x390187bf
.word 0x39018bbf
.word 0x39018fbf
.word 0x390193bf
.word 0x390197bf
.word 0x39019bbf
.word 0x39019fbf
.word 0x3901a3bf
.word 0x3901a7bf
.word 0x3901abbf
.word 0x3901afbf
.word 0x3901b3bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xf9400000
.word 0xf9400c18
.loc 23 299 0
.word 0x390183bf
.word 0x390187bf
.word 0x39018bbf
.word 0x39018fbf
.word 0x390193bf
.word 0x390197bf
.word 0x39019bbf
.word 0x39019fbf
.word 0x3901a3bf
.word 0x3901a7bf
.word 0x3901abbf
.word 0x3901afbf
.word 0x3901b3bf
.loc 23 301 0
.word 0x3900035f
.loc 23 303 0
.word 0xd2800000
.word 0x2a0003e0
.word 0xeb00031f
.word 0x54000061
.loc 23 307 0
.word 0xd2800000
.word 0x1400005d
.loc 23 314 0
.word 0xd2800017
.word 0x14000029
.loc 23 315 0
.word 0xf9400700
.word 0x93407ee1
.word 0xd2800182
.word 0x9b027c21
.word 0x8b010000
.word 0xf9400000
.word 0xaa1903e1
bl _p_120
.word 0x53001c00
.word 0x350003c0
.loc 23 318 0
.word 0x910183a0
.word 0xf90053a0
.word 0xf9400700
.word 0x93407ee1
.word 0xd2800182
.word 0x9b027c21
.word 0x8b010001
.word 0x9100c3a0
.word 0xd2800182
bl _p_218
.word 0xf94053a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2152]
.word 0xd280003e
.word 0x3901b3be
.word 0x9100c3a1
.word 0xd2800182
bl _p_218
.loc 23 319 0
.word 0xb9803f00
.word 0xb9804301
.word 0x4b010000
.word 0x6b0002ff
.word 0x9a9fa7e0
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x39000340
.loc 23 320 0
.word 0x14000005
.loc 23 314 0
.word 0x110006f7
.word 0xb9803f00
.word 0x6b0002ff
.word 0x54fffacb
.loc 23 323 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2152]
.word 0x3941b3a0
.word 0x35000060
.loc 23 327 0
.word 0xd2800000
.word 0x14000029
.loc 23 331 0
.word 0x910183a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2152]
.word 0x910143a1
.word 0xf9003ba1
bl _p_219
.word 0xf9403bbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xb9405ba0
.word 0xd2800001
.word 0xf2a04001
bl _p_94
.word 0xaa0003fa
.loc 23 332 0
.word 0xaa1a03f9
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1736]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.loc 23 334 0
.word 0xd2800000
.word 0xeb00031f
.word 0x9a9f17e0
.word 0xaa1803f9
.word 0x340000c0
.word 0xaa1a03e0
.word 0xd2800001
bl _p_95
.word 0x53001c00
.word 0x350000e0
.loc 23 341 0
.word 0xaa1903e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.loc 23 335 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2834481
bl _p_68
.word 0xf90057a0
.word 0x910183a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2152]
.word 0x910103a1
.word 0xf9003ba1
bl _p_219
.word 0xf9403bbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xb9404ba0
.word 0xf9005fa0
.word 0xd28024a0
bl _p_97
.word 0xf9405fa1
.word 0xb9001001
.word 0xf9005ba0
.word 0xf9400340
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94057a0
.word 0xf9405ba1
bl _p_24
.word 0xf90053a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf94053a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eac0
bl _p_70
bl _p_38

Lme_19d:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_ResolveFullTokenReference_uint
ObjCRuntime_Class_ResolveFullTokenReference_uint:
.loc 23 347 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xf9400000
.word 0xf9400c00
.word 0xf9400800
.word 0xd2800201
.word 0xb94013a2
.word 0x53017c42
.word 0x1b027c21
.word 0x93407c21
.word 0x8b010000
.loc 23 348 0
.word 0xaa0003e1
.word 0xf90023a1
bl _p_173
.word 0xaa0003e1
.word 0xf94023a0
.word 0xf9001ba1
.loc 23 349 0
.word 0xaa0003e1
.word 0xf9001fa1
.word 0xd2800101
.word 0x93407c21
.word 0x8b010000
bl _p_215
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9401fa0
.word 0xf90017a1
.loc 23 350 0
.word 0xd2800101
.word 0x93407c21
.word 0x8b010000
.word 0xd2800081
.word 0x93407c21
.word 0x8b010000
bl _p_215
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xf90013a1
.loc 23 356 0
bl _p_220
.word 0xf94017a1
.loc 23 357 0
bl _p_221
.word 0xf94013a1
.loc 23 358 0
bl _p_222
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_19e:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_ResolveTokenReference_uint_uint
ObjCRuntime_Class_ResolveTokenReference_uint_uint:
.loc 23 363 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xf9400000
.word 0xf9400c00
.word 0xf90013a0
.loc 23 365 0
.word 0xd280003e
.word 0xa1e0320
.word 0xd2800021
.word 0x6b01001f
.word 0x54000081
.loc 23 366 0
.word 0xaa1903e0
bl _p_223
.word 0x14000013
.loc 23 368 0
.word 0x53017f20
.word 0xd2800ffe
.word 0xa1e0001
.word 0xb9002ba1
.loc 23 369 0
.word 0x53087f20
.word 0xb9401ba2
.word 0xb020019
.loc 23 375 0
.word 0xf94013a0
.word 0xf9400000
.word 0xd2800102
.word 0x1b027c21
bl _p_216
.loc 23 376 0
bl _p_220
.loc 23 377 0
.word 0xd2800021
bl _p_221
.word 0xb9401ba1
.loc 23 379 0
.word 0x2a010321
bl _p_222
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_19f:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_ResolveToken_System_Reflection_Module_uint
ObjCRuntime_Class_ResolveToken_System_Reflection_Module_uint:
.loc 23 385 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xa901ebb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x929ffffe
.word 0xf2bfe01e
.word 0xa1e0340
.word 0xb9002ba0
.loc 23 386 0
.word 0x929ffffe
.word 0xf2bfe01e
.word 0xa1e0357
.word 0xaa1703e0
.word 0xd2800001
.word 0xf2a04001
.word 0x6b01001f
.word 0x540000c0
.word 0xd2800000
.word 0xf2a0c000
.word 0x6b0002ff
.word 0x54000201
.word 0x14000006
.loc 23 388 0
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0x3940033e
bl _p_224
.loc 23 392 0
.word 0x14000005
.loc 23 394 0
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0x3940033e
bl _p_225
.loc 23 400 0
.word 0xf9400bb7
.word 0xa941ebb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28363a1
bl _p_68
.word 0xf9002fa0
.word 0xd28024a0
bl _p_97
.word 0xaa0003e1
.word 0xf9402fa0
.word 0xb9402ba2
.word 0xb9001022
bl _p_123
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf9402ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eaa0
bl _p_70
bl _p_38

Lme_1a0:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_ResolveModule_System_Reflection_Assembly_uint
ObjCRuntime_Class_ResolveModule_System_Reflection_Assembly_uint:
.loc 23 406 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xaa1903e0
.word 0x3940033e
bl _p_226
.word 0xaa0003f8
.word 0xd2800017
.word 0x14000017
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000769
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400016
.loc 23 407 0
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405830
.word 0xd63f0200
.word 0x93407c00
.word 0x93407c00
.word 0x2a1a03e1
.word 0xeb01001f
.word 0x54000061
.loc 23 413 0
.word 0xaa1603e0
.word 0x14000006
.word 0x110006f7
.loc 23 406 0
.word 0xb9801b00
.word 0x6b0002ff
.word 0x5400010a
.word 0x17ffffe7
.loc 23 416 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2836ca1
bl _p_68
.word 0xf90037a0
.word 0xd28024a0
bl _p_97
.word 0xaa0003e1
.word 0xf94037a0
.word 0xb900103a
.word 0xaa1903e2
bl _p_24
.word 0xf90033a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf94033a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283ea80
bl _p_70
bl _p_38
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_1a1:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_ResolveAssembly_intptr
ObjCRuntime_Class_ResolveAssembly_intptr:
.loc 23 422 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
bl _p_227
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_228
.word 0xaa0003f9
.word 0xd2800018
.word 0x14000018
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000729
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400017
.loc 23 423 0
.word 0xaa1703e0
.word 0xf94002e1
.word 0xf9405c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400801
.word 0xaa1a03e0
bl _p_217
.word 0x53001c00
.word 0x34000060
.loc 23 429 0
.word 0xaa1703e0
.word 0x14000006
.word 0x11000718
.loc 23 422 0
.word 0xb9801b20
.word 0x6b00031f
.word 0x540000ea
.word 0x17ffffe6
.loc 23 432 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2837f41
bl _p_68
.word 0xf9002fa0
.word 0xaa1a03e0
bl _p_84
.word 0xaa0003e1
.word 0xf9402fa0
bl _p_123
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf9402ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283ea60
bl _p_70
bl _p_38
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_1a2:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_GetTokenReference_System_Type_bool
ObjCRuntime_Class_GetTokenReference_System_Type_bool:
.loc 23 437 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001bb9
.word 0xaa0003f9
.word 0xf9001fa1
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940f030
.word 0xd63f0200
.word 0x53001c00
.word 0x340000c0
.loc 23 438 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9409c30
.word 0xd63f0200
.word 0xaa0003f9
.loc 23 440 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9406430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400818
.loc 23 443 0
.word 0xaa1803e0
.word 0xf90053a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405830
.word 0xd63f0200
.word 0x93407c00
.word 0xf90057a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9404030
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e2
.word 0xf94053a0
.word 0xf94057a1
bl _p_229
.word 0xaa0003f7
.loc 23 444 0
.word 0xaa1703e0
.word 0x92800001
.word 0xf2bfffe1
.word 0x6b01001f
.word 0x54000060
.loc 23 445 0
.word 0xaa1703e0
.word 0x140000b6
.loc 23 448 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405830
.word 0xd63f0200
.word 0x93407c00
.word 0xd2800021
.word 0x6b01001f
.word 0x540006c0
.loc 23 449 0
.word 0x3940e3a0
.word 0x35000080
.loc 23 450 0
.word 0x92800000
.word 0xf2bfffe0
.word 0x140000a4
.loc 23 451 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2838dc1
bl _p_68
.word 0xf90057a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf941b430
.word 0xd63f0200
.word 0xf9005ba0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9403c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405830
.word 0xd63f0200
.word 0x93407c00
.word 0xf9005fa0
.word 0xd2801d40
bl _p_97
.word 0xaa0003e2
.word 0xf94057a0
.word 0xf9405ba1
.word 0xf9405fa3
.word 0xb9001043
bl _p_24
.word 0xf90053a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf94053a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eb20
bl _p_70
bl _p_38
.loc 23 454 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xf9400000
.word 0xf9400c17
.loc 23 457 0
.word 0x92800016
.word 0xf2bffff6
.loc 23 458 0
.word 0xd2800015
.word 0x1400000c
.loc 23 459 0
.word 0xf94002e0
.word 0xd2800101
.word 0x1b017ea1
bl _p_216
.loc 23 460 0
.word 0xaa1803e1
bl _p_217
.word 0x53001c00
.word 0x34000060
.loc 23 461 0
.word 0xaa1503f6
.loc 23 462 0
.word 0x14000005
.loc 23 458 0
.word 0x110006b5
.word 0xb9803ae0
.word 0x6b0002bf
.word 0x54fffe6b
.loc 23 466 0
.word 0x92800000
.word 0xf2bfffe0
.word 0x6b0002df
.word 0x540004a1
.loc 23 467 0
.word 0x3940e3a0
.word 0x35000080
.loc 23 468 0
.word 0x92800000
.word 0xf2bfffe0
.word 0x14000054
.loc 23 469 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd283ab21
bl _p_68
.word 0xf90057a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf941b430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94057a0
bl _p_123
.word 0xf90053a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf94053a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eb20
bl _p_70
bl _p_38
.loc 23 472 0
.word 0xd2800fe0
.word 0x6b0002df
.word 0x5400054d
.loc 23 473 0
.word 0x3940e3a0
.word 0x35000080
.loc 23 474 0
.word 0x92800000
.word 0xf2bfffe0
.word 0x1400002d
.loc 23 475 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd283ccc1
bl _p_68
.word 0xf90057a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf941b430
.word 0xd63f0200
.word 0xf9005ba0
.word 0xd2801d40
bl _p_97
.word 0xaa0003e2
.word 0xf94057a0
.word 0xf9405ba1
.word 0xb9001056
bl _p_24
.word 0xf90053a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf94053a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eb20
bl _p_70
bl _p_38
.loc 23 478 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9404030
.word 0xd63f0200
.word 0x93407c00
.word 0x53185c00
.word 0x531f7ac1
.word 0xb010000
.word 0xa9415bb5
.word 0xa94263b7
.word 0xf9401bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_1a3:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_GetFullTokenReference_string_int_int
ObjCRuntime_Class_GetFullTokenReference_string_int_int:
.loc 23 485 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xf9400000
.word 0xf9400c17
.loc 23 486 0
.word 0xd2800016
.word 0x14000024
.loc 23 487 0
.word 0xf9400ae0
.word 0xd2800101
.word 0x1b017ec1
.word 0x11002021
.word 0x93407c21
.word 0x8b010015
.loc 23 488 0
.word 0xaa1503e0
bl _p_173
.word 0xaa0003f4
.loc 23 489 0
.word 0xaa1503e0
.word 0xd2800101
.word 0x93407c21
.word 0x8b010000
.word 0xd2800081
.word 0x93407c21
.word 0x8b010000
bl _p_215
.word 0x93407c00
.loc 23 490 0
.word 0x6b1a001f
.word 0x540001e1
.loc 23 492 0
.word 0xd2800100
.word 0x93407c00
.word 0x8b0002a0
bl _p_215
.word 0x93407c00
.loc 23 493 0
.word 0x6b19001f
.word 0x54000101
.loc 23 495 0
.word 0xaa1403e0
.word 0xaa1803e1
bl _p_217
.word 0x53001c00
.word 0x34000060
.loc 23 498 0
.word 0xaa1603e0
.word 0x14000007
.loc 23 486 0
.word 0x110006d6
.word 0xb98046e0
.word 0x6b0002df
.word 0x54fffb6b
.loc 23 501 0
.word 0x92800000
.word 0xf2bfffe0
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1a4:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class_IsCustomType_System_Type
ObjCRuntime_Class_IsCustomType_System_Type:
.loc 23 516 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x390063bf
.word 0x910063a2
.word 0xf9400ba0
.word 0xd2800001
bl _p_209
.loc 23 517 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000060
.loc 23 518 0
.word 0x394063a0
.word 0x14000021
.loc 23 523 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd283eaa1
bl _p_68
.word 0xf90027a0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94027a0
bl _p_123
.word 0xf90023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1512]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1520]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf94023a1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1528]
.word 0xf9400002
.word 0xd283eb40
bl _p_70
bl _p_38
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1a5:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Class__cctor
ObjCRuntime_Class__cctor:
.loc 23 24 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2160]
.word 0xd280003e
.word 0x3900001e
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_1a9:
.text
	.align 4
	.no_dead_strip ObjCRuntime_NativeAttribute__ctor
ObjCRuntime_NativeAttribute__ctor:
.file 24 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/NativeAttribute.cs"
.loc 24 21 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1f4:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_get_AvailabilityKind
ObjCRuntime_AvailabilityBaseAttribute_get_AvailabilityKind:
.file 25 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/PlatformAvailability2.cs"
.loc 25 65 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9802000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1f5:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_set_AvailabilityKind_ObjCRuntime_AvailabilityKind
ObjCRuntime_AvailabilityBaseAttribute_set_AvailabilityKind_ObjCRuntime_AvailabilityKind:
.loc 25 65 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9002001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1f6:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_get_Platform
ObjCRuntime_AvailabilityBaseAttribute_get_Platform:
.loc 25 66 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39409000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1f7:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_set_Platform_ObjCRuntime_PlatformName
ObjCRuntime_AvailabilityBaseAttribute_set_Platform_ObjCRuntime_PlatformName:
.loc 25 66 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x394063a1
.word 0xf9400ba0
.word 0x39009001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1f8:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_get_Version
ObjCRuntime_AvailabilityBaseAttribute_get_Version:
.loc 25 67 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1f9:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_set_Version_System_Version
ObjCRuntime_AvailabilityBaseAttribute_set_Version_System_Version:
.loc 25 67 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1fa:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_get_Architecture
ObjCRuntime_AvailabilityBaseAttribute_get_Architecture:
.loc 25 68 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39409400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1fb:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_set_Architecture_ObjCRuntime_PlatformArchitecture
ObjCRuntime_AvailabilityBaseAttribute_set_Architecture_ObjCRuntime_PlatformArchitecture:
.loc 25 68 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x394063a1
.word 0xf9400ba0
.word 0x39009401
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1fc:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_get_Message
ObjCRuntime_AvailabilityBaseAttribute_get_Message:
.loc 25 69 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1fd:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_set_Message_string
ObjCRuntime_AvailabilityBaseAttribute_set_Message_string:
.loc 25 69 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1fe:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute__ctor_ObjCRuntime_AvailabilityKind_ObjCRuntime_PlatformName_System_Version_ObjCRuntime_PlatformArchitecture_string
ObjCRuntime_AvailabilityBaseAttribute__ctor_ObjCRuntime_AvailabilityKind_ObjCRuntime_PlatformName_System_Version_ObjCRuntime_PlatformArchitecture_string:
.loc 25 82 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xaa0003f5
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf9001fa5
.word 0xb9801ba0
.word 0xb90022a0
.loc 25 83 0
.word 0x394083a0
.word 0x390092a0
.loc 25 84 0
.word 0xf94017a0
.word 0xf9000aa0
.word 0x910042a1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 25 85 0
.word 0x3940c3a0
.word 0x390096a0
.loc 25 86 0
.word 0xf9401fa0
.word 0xf9000ea0
.word 0x910062a1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 25 87 0
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1ff:
.text
	.align 4
	.no_dead_strip ObjCRuntime_AvailabilityBaseAttribute_ToString
ObjCRuntime_AvailabilityBaseAttribute_ToString:
.loc 25 91 0 prologue_end
.word 0xa9b07bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2168]
.word 0xd2800601
bl _p_7
.word 0xf9007ba0
bl _p_230
.word 0xf9407ba0
.word 0xaa0003f9
.loc 25 92 0
.word 0xaa1903e0
.word 0xf90073a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2176]
.word 0xf90067a0
.word 0xb9802340
.word 0xf90077a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2184]
.word 0xd2800281
bl _p_7
.word 0xf94077a1
.word 0xb9001001
.word 0xf9006ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2192]
.word 0xf9006fa0
.word 0x39409340
.word 0xf90063a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2200]
.word 0xd2800221
bl _p_7
.word 0xaa0003e4
.word 0xf94063a0
.word 0xf94067a1
.word 0xf9406ba2
.word 0xf9406fa3
.word 0xf94073a5
.word 0x39004080
.word 0xaa0503e0
.word 0x394000be
bl _p_231
.loc 25 94 0
.word 0xf9400b40
.word 0xd2800001
bl _p_232
.word 0x53001c00
.word 0x34000800
.loc 25 95 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2208]
.word 0xf90067a0
.word 0xf9400b40
.word 0xaa0003e1
.word 0x3940003e
.word 0xb9801000
.word 0xf9006fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xd2800281
bl _p_7
.word 0xf9406fa1
.word 0xb9001001
.word 0xf9006ba0
.word 0xf9400b40
.word 0xaa0003e1
.word 0x3940003e
.word 0xb9801400
.word 0xf90063a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xd2800281
bl _p_7
.word 0xaa0003e3
.word 0xf94063a0
.word 0xf94067a1
.word 0xf9406ba2
.word 0xb9001060
.word 0xaa1903e0
.word 0x3940033e
bl _p_233
.loc 25 96 0
.word 0xf9400b40
.word 0xaa0003e1
.word 0x3940003e
.word 0xb9801800
.word 0xd2800001
.word 0x6b01001f
.word 0x540002cb
.loc 25 97 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2216]
.word 0xf90067a0
.word 0xf9400b40
.word 0xaa0003e1
.word 0x3940003e
.word 0xb9801800
.word 0xf90063a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #544]
.word 0xd2800281
bl _p_7
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
.word 0xb9001040
.word 0xaa1903e0
.word 0x3940033e
bl _p_234
.loc 25 100 0
.word 0x39409740
.word 0x34000300
.loc 25 101 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2224]
.word 0xf90067a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2232]
.word 0xf9006ba0
.word 0x39409740
.word 0xf90063a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2240]
.word 0xd2800221
bl _p_7
.word 0xaa0003e3
.word 0xf94063a0
.word 0xf94067a1
.word 0xf9406ba2
.word 0x39004060
.word 0xaa1903e0
.word 0x3940033e
bl _p_233
.loc 25 103 0
.word 0xf9400f40
.word 0xb4000280
.loc 25 104 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2248]
.word 0xf90063a0
.word 0xf9400f43

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2256]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #2264]
.word 0xaa0303e0
.word 0x3940007e
bl _p_235
.word 0xaa0003e2
.word 0xf94063a1
.word 0xaa1903e0
.word 0x3940033e
bl _p_234
.loc 25 106 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2272]
.word 0xaa1903e0
.word 0x3940033e
bl _p_236
.loc 25 107 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9402030
.word 0xd63f0200
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_200:
.text
	.align 4
	.no_dead_strip ObjCRuntime_IntroducedAttribute__ctor_ObjCRuntime_PlatformName_int_int_ObjCRuntime_PlatformArchitecture_string
ObjCRuntime_IntroducedAttribute__ctor_ObjCRuntime_PlatformName_int_int_ObjCRuntime_PlatformArchitecture_string:
.loc 25 123 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf9001fa5

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2280]
.word 0xd2800401
bl _p_7
.word 0xf90023a0
.word 0xb98023a1
.word 0xb9802ba2
bl _p_237
.word 0xf94023a3
.word 0xf9400ba0
.word 0xd2800001
.word 0x394063a2
.word 0x3940c3a4
.word 0xf9401fa5
bl _p_238
.loc 25 127 0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_201:
.text
	.align 4
	.no_dead_strip ObjCRuntime_WatchAttribute__ctor_byte_byte
ObjCRuntime_WatchAttribute__ctor_byte_byte:
.loc 25 232 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xd2800061
.word 0x394063a2
.word 0x394083a3
.word 0xd2800004
.word 0xd2800005
bl _p_239
.loc 25 234 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_202:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_SDAction_Invoke_intptr
ObjCRuntime_Trampolines_SDAction_Invoke_intptr:
.file 26 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/ObjCRuntime/Trampolines.g.cs"
.loc 26 13313 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xaa1a03e0
.loc 26 13314 0
bl _p_240
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2288]
.word 0xeb01001f
.word 0x10000011
.word 0x54000141
.word 0xaa1a03f9
.loc 26 13315 0
.word 0xb400009a
.loc 26 13316 0
.word 0xaa1903e0
.word 0xf9400f30
.word 0xd63f0200
.loc 26 13317 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_208:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_SDAction__cctor
ObjCRuntime_Trampolines_SDAction__cctor:
.loc 26 13309 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2296]
.word 0xd2800e01
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2304]
.word 0xf9001420

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2312]
.word 0xf9002020

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2320]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2328]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_209:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_NIDAction__ctor_ObjCRuntime_BlockLiteral_
ObjCRuntime_Trampolines_NIDAction__ctor_ObjCRuntime_BlockLiteral_:
.loc 26 13328 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
bl _p_241
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xf9000c01
.loc 26 13329 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2336]
.word 0xf9400fa0
bl _p_242
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 26 13330 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_20a:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_NIDAction_Finalize
ObjCRuntime_Trampolines_NIDAction_Finalize:
.loc 26 13336 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c00
bl _p_243
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9001fbe
.loc 26 13337 0
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9401fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_20b:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_NIDAction_Create_intptr
ObjCRuntime_Trampolines_NIDAction_Create_intptr:
.loc 26 13343 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34000060
.loc 26 13344 0
.word 0xd2800000
.word 0x1400004a
.loc 26 13345 0
.word 0xaa1a03e0
bl _p_244
.word 0x53001c00
.word 0x340002a0
.loc 26 13346 0
.word 0xaa1a03e0
bl _p_240
.word 0xaa0003f9
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2288]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803f9
.loc 26 13347 0
.word 0xb4000078
.loc 26 13348 0
.word 0xaa1903e0
.word 0x14000032
.loc 26 13350 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2344]
bl _p_71
.word 0xf9001fa0
.word 0xaa1a03e1
bl _p_245
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540005c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2352]
.word 0xd2800e01
bl _p_7
.word 0xf9401ba1
.word 0xeb1f003f
.word 0x10000011
.word 0x54000440
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2360]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2368]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2376]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801f60
.word 0xaa1103e1
bl _p_2
.word 0xd2801280
.word 0xaa1103e1
bl _p_2

Lme_20c:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_NIDAction_Invoke
ObjCRuntime_Trampolines_NIDAction_Invoke:
.loc 26 13357 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400802
.word 0xf9400c01
.word 0xaa0203e0
.word 0xf90013a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94013a0
.loc 26 13358 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_20d:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_SDActionArity1V185_Invoke_intptr_intptr
ObjCRuntime_Trampolines_SDActionArity1V185_Invoke_intptr_intptr:
.loc 26 24777 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xaa1903e0
.loc 26 24778 0
bl _p_240

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2384]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #2392]
bl _p_136
.word 0xaa0003f9
.loc 26 24779 0
.word 0xaa1903e0
.word 0xb4000140
.loc 26 24780 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2400]
.word 0xf9400fa0
bl _p_246
.word 0xaa0003e1
.word 0xaa1903e0
.word 0xf9400f30
.word 0xd63f0200
.loc 26 24781 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_212:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_SDActionArity1V185__cctor
ObjCRuntime_Trampolines_SDActionArity1V185__cctor:
.loc 26 24773 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2408]
.word 0xd2800e01
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2416]
.word 0xf9001420

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2424]
.word 0xf9002020

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2432]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2440]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_213:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_NIDActionArity1V185__ctor_ObjCRuntime_BlockLiteral_
ObjCRuntime_Trampolines_NIDActionArity1V185__ctor_ObjCRuntime_BlockLiteral_:
.loc 26 24792 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
bl _p_241
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xf9000c01
.loc 26 24793 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2448]
.word 0xf9400fa0
bl _p_247
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 26 24794 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_214:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_NIDActionArity1V185_Finalize
ObjCRuntime_Trampolines_NIDActionArity1V185_Finalize:
.loc 26 24800 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c00
bl _p_243
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9001fbe
.loc 26 24801 0
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9401fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_215:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_NIDActionArity1V185_Create_intptr
ObjCRuntime_Trampolines_NIDActionArity1V185_Create_intptr:
.loc 26 24807 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34000060
.loc 26 24808 0
.word 0xd2800000
.word 0x14000044
.loc 26 24809 0
.word 0xaa1a03e0
bl _p_244
.word 0x53001c00
.word 0x340001e0
.loc 26 24810 0
.word 0xaa1a03e0
bl _p_240

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2384]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #2456]
bl _p_148
.word 0xaa0003f9
.loc 26 24811 0
.word 0xaa1903e0
.word 0xb4000060
.loc 26 24812 0
.word 0xaa1903e0
.word 0x14000032
.loc 26 24814 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2464]
bl _p_71
.word 0xf90017a0
.word 0xaa1a03e1
bl _p_248
.word 0xf94017a0
.word 0xf90013a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540005a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2472]
.word 0xd2800e01
bl _p_7
.word 0xf94013a1
.word 0xeb1f003f
.word 0x10000011
.word 0x54000420
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2480]
.word 0xf9001401

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2488]
.word 0xf9002001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2496]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0x3901801f
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801f60
.word 0xaa1103e1
bl _p_2
.word 0xd2801280
.word 0xaa1103e1
bl _p_2

Lme_216:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Trampolines_NIDActionArity1V185_Invoke_UIKit_UIAlertAction
ObjCRuntime_Trampolines_NIDActionArity1V185_Invoke_UIKit_UIAlertAction:
.loc 26 24821 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9400b21
.word 0xf9400f20
.word 0xaa0103f9
.word 0xf90013a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94013a1
.word 0xaa1a03e2
.word 0xf9400f30
.word 0xd63f0200
.loc 26 24822 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_217:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLDrawableProperty__cctor
OpenGLES_EAGLDrawableProperty__cctor:
.file 27 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/OpenGLES/EAGLConsts.cs"
.loc 27 23 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bbf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2504]
.word 0xd2800001
bl _p_168
.word 0xf9000ba0
.loc 27 24 0
.word 0xf9400ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000420
.loc 27 27 0
.word 0xf9400ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2512]
bl _p_249
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2520]
.word 0xf9000001
.loc 27 29 0
.word 0xf9400ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2528]
bl _p_249
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2536]
.word 0xf9000001
.loc 27 31 0
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000007
.word 0xf9001bbe
.loc 27 33 0
.word 0xf9400ba0
bl _p_250
.word 0x93407c00
.loc 27 34 0
.word 0xf9401bbe
.word 0xd61f03c0
.loc 27 35 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_218:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLContext_get_ClassHandle
OpenGLES_EAGLContext_get_ClassHandle:
.file 28 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/OpenGLES/EAGLContext.g.cs"
.loc 28 54 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2544]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_219:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLContext__ctor_intptr
OpenGLES_EAGLContext__ctor_intptr:
.loc 28 64 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 28 66 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_21a:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLContext__ctor_OpenGLES_EAGLRenderingAPI
OpenGLES_EAGLContext__ctor_OpenGLES_EAGLRenderingAPI:
.loc 28 71 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_251
.loc 28 75 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_4@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_4@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa2
bl _p_252
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #2560]
.word 0xf9400ba0
bl _p_253
.loc 28 76 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_21b:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLContext__ctor_OpenGLES_EAGLRenderingAPI_OpenGLES_EAGLSharegroup
OpenGLES_EAGLContext__ctor_OpenGLES_EAGLRenderingAPI_OpenGLES_EAGLSharegroup:
.loc 28 92 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400fa0
bl _p_251
.loc 28 94 0
.word 0xb400029a
.loc 28 98 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_5@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_5@PAGEOFF
ldr x1, [x1]
.word 0x3940035e
.word 0xf9400b43
.word 0xf94013a2
bl _p_254
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #2568]
.word 0xf9400fa0
bl _p_253
.loc 28 99 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 28 95 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2843c01
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_21c:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLContext_PresentRenderBuffer_System_nuint
OpenGLES_EAGLContext_PresentRenderBuffer_System_nuint:
.loc 28 116 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_6@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_6@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa2
bl _p_255
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_21d:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLContext_RenderBufferStorage_System_nuint_CoreAnimation_CAEAGLLayer
OpenGLES_EAGLContext_RenderBufferStorage_System_nuint_CoreAnimation_CAEAGLLayer:
.loc 28 127 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xf90017a1
.word 0xaa0203fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_7@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_7@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f8
.word 0xf9001ba0
.word 0xf94017a0
.word 0xf9001fa0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1803e0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xaa1a03e3
bl _p_256
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_21e:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLContext_SetCurrentContext_OpenGLES_EAGLContext
OpenGLES_EAGLContext_SetCurrentContext_OpenGLES_EAGLContext:
.loc 28 137 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2544]
.word 0xf9400001
adrp x0, L_OBJC_SELECTOR_REFERENCES_8@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_8@PAGEOFF
ldr x0, [x0]
.word 0xf9000fa1
.word 0xf90013a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xf9400fa0
.word 0xf94013a1
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_21f:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLContext_get_CurrentContext
OpenGLES_EAGLContext_get_CurrentContext:
.loc 28 209 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2544]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_9@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_9@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2576]
bl _p_257
.loc 28 210 0
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_220:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLContext_get_ShareGroup
OpenGLES_EAGLContext_get_ShareGroup:
.loc 28 273 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_10@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_10@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2584]
bl _p_258
.loc 28 277 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_221:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLContext__cctor
OpenGLES_EAGLContext__cctor:
.loc 28 52 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2592]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2544]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_222:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLDrawableWrapper__ctor_intptr_bool
OpenGLES_EAGLDrawableWrapper__ctor_intptr_bool:
.file 29 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/OpenGLES/EAGLDrawable.g.cs"
.loc 29 65 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x394083a2
bl _p_259
.loc 29 67 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_225:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLDrawableWrapper_get_DrawableProperties
OpenGLES_EAGLDrawableWrapper_get_DrawableProperties:
.loc 29 73 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_11@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_11@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2600]
bl _p_260
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_226:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLDrawableWrapper_set_DrawableProperties_Foundation_NSDictionary
OpenGLES_EAGLDrawableWrapper_set_DrawableProperties_Foundation_NSDictionary:
.loc 29 78 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_12@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_12@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_261
.loc 29 79 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_227:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLSharegroup_get_ClassHandle
OpenGLES_EAGLSharegroup_get_ClassHandle:
.file 30 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/OpenGLES/EAGLSharegroup.g.cs"
.loc 30 54 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2608]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_228:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLSharegroup__ctor_intptr
OpenGLES_EAGLSharegroup__ctor_intptr:
.loc 30 64 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 30 66 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_229:
.text
	.align 4
	.no_dead_strip OpenGLES_EAGLSharegroup__cctor
OpenGLES_EAGLSharegroup__cctor:
.loc 30 52 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2616]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2608]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_22a:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider__ctor_intptr
CoreGraphics_CGDataProvider__ctor_intptr:
.file 31 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreGraphics/CGDataProvider.cs"
.loc 31 42 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800002
bl _p_262
.loc 31 44 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_22b:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider__ctor_intptr_bool
CoreGraphics_CGDataProvider__ctor_intptr_bool:
.loc 31 49 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 31 50 0
.word 0x394083a0
.word 0x35000060
.loc 31 51 0
.word 0xf9400fa0
bl _p_263
.loc 31 52 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_22c:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider_Finalize
CoreGraphics_CGDataProvider_Finalize:
.loc 31 56 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba2
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9001fbe
.loc 31 57 0
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9401fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_22d:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider_Dispose
CoreGraphics_CGDataProvider_Dispose:
.loc 31 61 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800021
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.loc 31 62 0
.word 0xf9400ba0
bl _p_167
.loc 31 63 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_22e:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider_get_Handle
CoreGraphics_CGDataProvider_get_Handle:
.loc 31 66 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_22f:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider_Dispose_bool
CoreGraphics_CGDataProvider_Dispose_bool:
.loc 31 77 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000140
.loc 31 78 0
.word 0xf9400ba0
.word 0xf9400800
bl _p_264
.loc 31 79 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400ba0
.word 0xf9000801
.loc 31 81 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_232:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider_ReleaseGCHandle_intptr_intptr_System_nint
CoreGraphics_CGDataProvider_ReleaseGCHandle_intptr_intptr_System_nint:
.loc 31 141 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb9002bbf
.word 0x9100a3a0
.word 0xf9001ba0
.word 0xf9400ba0
bl _p_75
.word 0xf9401bbe
.word 0xf90003c0
.loc 31 142 0
.word 0x9100a3a0
bl _p_190
.loc 31 143 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_234:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider_ReleaseBuffer_intptr_intptr_System_nint
CoreGraphics_CGDataProvider_ReleaseBuffer_intptr_intptr_System_nint:
.loc 31 148 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400fa0
bl _p_120
.word 0x53001c00
.word 0x34000060
.loc 31 149 0
.word 0xf9400fa0
bl _p_191
.loc 31 150 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_235:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider_ReleaseFunc_intptr_intptr_System_nint
CoreGraphics_CGDataProvider_ReleaseFunc_intptr_intptr_System_nint:
.loc 31 155 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1
.word 0xf90017a2
.word 0xb90033bf
.word 0x9100c3a0
.word 0xf9001fa0
.word 0xaa1903e0
bl _p_75
.word 0xf9401fbe
.word 0xf90003c0
.loc 31 156 0
.word 0x9100c3a0
bl _p_76
.word 0xaa0003f9
.word 0xb4000179
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2624]
.word 0xeb01001f
.word 0x10000011
.word 0x540002a1
.word 0xaa1903f8
.loc 31 158 0
.word 0xaa1803e0
.word 0xf94013a1
.word 0xf9400f10
.word 0xd63f0200
.loc 31 159 0
.word 0xf90023bf
.word 0x94000005
.word 0xf94023a0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9002fbe
.loc 31 160 0
.word 0x9100c3a0
bl _p_190
.loc 31 161 0
.word 0xf9402fbe
.word 0xd61f03c0
.loc 31 162 0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_236:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider__ctor_byte___int_int
CoreGraphics_CGDataProvider__ctor_byte___int_int:
.loc 31 187 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xf90017a3
.word 0xb9003bbf
.word 0xb40007d8
.loc 31 189 0
.word 0xd2800000
.word 0x6b00033f
.word 0x540004eb
.word 0xb9801b00
.word 0x6b00033f
.word 0x5400048c
.loc 31 191 0
.word 0xb9802ba0
.word 0xb000320
.word 0xb9801b01
.word 0x6b01001f
.word 0x5400052c
.loc 31 194 0
.word 0x9100e3a0
.word 0xf90023a0
.word 0xaa1803e0
.word 0xd2800061
bl _p_36
.word 0xf94023be
.word 0xf90003c0
.loc 31 195 0
.word 0x9100e3a0
bl _p_265
.word 0x93407f21
.word 0x8b010019
.loc 31 196 0
.word 0xb9803ba0
.word 0xb90033a0
.word 0xb98033a0
.word 0x93407c00
.word 0xb9802ba1
.word 0x93407c22

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2632]
.word 0xf9400023
.word 0xaa1903e1
bl _p_266
.word 0xaa0003e1
.word 0xf94013a0
.word 0xf9000801
.loc 31 197 0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.loc 31 190 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2846e01
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 31 192 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2846e01
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.loc 31 188 0
.word 0xd2846c41
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_237:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGDataProvider__cctor
CoreGraphics_CGDataProvider__cctor:
.loc 31 134 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2640]
.word 0xd2800e01
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2648]
.word 0xf9001420

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2656]
.word 0xf9002020

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2664]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2632]
.word 0xf9000001
.loc 31 135 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2640]
.word 0xd2800e01
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2672]
.word 0xf9001420

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2680]
.word 0xf9002020

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2688]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2696]
.word 0xf9000001
.loc 31 136 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2640]
.word 0xd2800e01
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2704]
.word 0xf9001420

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2712]
.word 0xf9002020

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2720]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2728]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_238:
.text
ut_573:
add x0, x0, 16
b CoreGraphics_CGAffineTransform_ToString
.text
	.align 4
	.no_dead_strip CoreGraphics_CGAffineTransform_ToString
CoreGraphics_CGAffineTransform_ToString:
.file 32 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreGraphics/CGAffineTransform.cs"
.loc 32 169 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2736]
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd28000c1
bl _p_30
.word 0xf90057a0
.word 0xf90053a0
.word 0xfd400340
.word 0xfd005ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94057a3
.word 0xfd405ba0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94053a0
.word 0xf9004ba0
.word 0xf90047a0
.word 0xfd400740
.word 0xfd004fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9404ba3
.word 0xfd404fa0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf9003ba0
.word 0xfd400b40
.word 0xfd0043a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9403fa3
.word 0xfd4043a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf90033a0
.word 0xf9002fa0
.word 0xfd400f40
.word 0xfd0037a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94033a3
.word 0xfd4037a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9402fa0
.word 0xf90027a0
.word 0xf90023a0
.word 0xfd401340
.word 0xfd002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94027a3
.word 0xfd402ba0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800081
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf90017a0
.word 0xfd401740
.word 0xfd001fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9401ba3
.word 0xfd401fa0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd28000a1
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94013a0
.word 0xf94017a1
bl _p_31
.loc 32 170 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_23d:
.text
ut_574:
add x0, x0, 16
b CoreGraphics_CGAffineTransform_op_Equality_CoreGraphics_CGAffineTransform_CoreGraphics_CGAffineTransform
.text
	.align 4
	.no_dead_strip CoreGraphics_CGAffineTransform_op_Equality_CoreGraphics_CGAffineTransform_CoreGraphics_CGAffineTransform
CoreGraphics_CGAffineTransform_op_Equality_CoreGraphics_CGAffineTransform_CoreGraphics_CGAffineTransform:
.loc 32 175 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xfd400000
.word 0xf9400fa0
.word 0xfd400001
.word 0x1e612000
.word 0x9a9f17e0
.word 0x34000480
.word 0xf9400ba0
.word 0xfd400800
.word 0xf9400fa0
.word 0xfd400801
.word 0x1e612000
.word 0x9a9f17e0
.word 0x340003a0
.word 0xf9400ba0
.word 0xfd400400
.word 0xf9400fa0
.word 0xfd400401
.word 0x1e612000
.word 0x9a9f17e0
.word 0x340002c0
.word 0xf9400ba0
.word 0xfd400c00
.word 0xf9400fa0
.word 0xfd400c01
.word 0x1e612000
.word 0x9a9f17e0
.word 0x340001e0
.word 0xf9400ba0
.word 0xfd401000
.word 0xf9400fa0
.word 0xfd401001
.word 0x1e612000
.word 0x9a9f17e0
.word 0x34000100
.word 0xf9400ba0
.word 0xfd401400
.word 0xf9400fa0
.word 0xfd401401
.word 0x1e612000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_23e:
.text
ut_575:
add x0, x0, 16
b CoreGraphics_CGAffineTransform_Equals_object
.text
	.align 4
	.no_dead_strip CoreGraphics_CGAffineTransform_Equals_object
CoreGraphics_CGAffineTransform_Equals_object:
.loc 32 197 0 prologue_end
.word 0xa9b17bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2752]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000078
.loc 32 198 0
.word 0xd2800000
.word 0x14000044
.loc 32 200 0
.word 0xf94013a0
.word 0xf9400001
.word 0xf9005fa1
.word 0xf9400401
.word 0xf90063a1
.word 0xf9400801
.word 0xf90067a1
.word 0xf9400c01
.word 0xf9006ba1
.word 0xf9401001
.word 0xf9006fa1
.word 0xf9401400
.word 0xf90073a0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540006e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2752]
.word 0xeb01001f
.word 0x10000011
.word 0x540005e1
.word 0x91004340
.word 0xf9400001
.word 0xf90047a1
.word 0xf9400401
.word 0xf9004ba1
.word 0xf9400801
.word 0xf9004fa1
.word 0xf9400c01
.word 0xf90053a1
.word 0xf9401001
.word 0xf90057a1
.word 0xf9401400
.word 0xf9005ba0
.word 0x910163a0
.word 0xf9405fa1
.word 0xf9002fa1
.word 0xf94063a1
.word 0xf90033a1
.word 0xf94067a1
.word 0xf90037a1
.word 0xf9406ba1
.word 0xf9003ba1
.word 0xf9406fa1
.word 0xf9003fa1
.word 0xf94073a1
.word 0xf90043a1
.word 0x9100a3a1
.word 0xf94047a2
.word 0xf90017a2
.word 0xf9404ba2
.word 0xf9001ba2
.word 0xf9404fa2
.word 0xf9001fa2
.word 0xf94053a2
.word 0xf90023a2
.word 0xf94057a2
.word 0xf90027a2
.word 0xf9405ba2
.word 0xf9002ba2
bl _p_267
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_23f:
.text
ut_576:
add x0, x0, 16
b CoreGraphics_CGAffineTransform_GetHashCode
.text
	.align 4
	.no_dead_strip CoreGraphics_CGAffineTransform_GetHashCode
CoreGraphics_CGAffineTransform_GetHashCode:
.loc 32 205 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xfd400340
.word 0x9e780000
.word 0x93407c00
.word 0xfd400b40
.word 0x9e780001
.word 0x93407c21
.word 0x4a010000
.word 0xfd400740
.word 0x9e780001
.word 0x93407c21
.word 0x4a010000
.word 0xfd400f40
.word 0x9e780001
.word 0x93407c21
.word 0x4a010000
.word 0xfd401340
.word 0x9e780001
.word 0x93407c21
.word 0x4a010000
.word 0xfd401740
.word 0x9e780001
.word 0x93407c21
.word 0x4a010000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_240:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGColorSpace__ctor_intptr
CoreGraphics_CGColorSpace__ctor_intptr:
.file 33 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreGraphics/CGColorSpace.cs"
.loc 33 80 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.loc 33 81 0
bl _p_268
.loc 33 82 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_241:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGColorSpace__ctor_intptr_bool
CoreGraphics_CGColorSpace__ctor_intptr_bool:
.loc 33 94 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0x394083a0
.word 0x35000060
.loc 33 95 0
.word 0xf9400fa0
bl _p_268
.loc 33 97 0
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 33 98 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_242:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGColorSpace_Finalize
CoreGraphics_CGColorSpace_Finalize:
.loc 33 102 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba2
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9001fbe
.loc 33 103 0
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9401fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_243:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGColorSpace_Dispose
CoreGraphics_CGColorSpace_Dispose:
.loc 33 107 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800021
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.loc 33 108 0
.word 0xf9400ba0
bl _p_167
.loc 33 109 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_244:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGColorSpace_get_Handle
CoreGraphics_CGColorSpace_get_Handle:
.loc 33 112 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_245:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGColorSpace_Dispose_bool
CoreGraphics_CGColorSpace_Dispose_bool:
.loc 33 123 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000140
.loc 33 124 0
.word 0xf9400ba0
.word 0xf9400800
bl _p_269
.loc 33 125 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400ba0
.word 0xf9000801
.loc 33 127 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_248:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGColorSpace_CreateDeviceRGB
CoreGraphics_CGColorSpace_CreateDeviceRGB:
.loc 33 142 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
bl _p_270
.word 0xf9000fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2760]
bl _p_71
.word 0xf9400fa1
.word 0xf9000ba0
.word 0xd2800022
bl _p_271
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_24a:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGColorSpace__cctor
CoreGraphics_CGColorSpace__cctor:
.loc 33 72 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xf9000fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2760]
bl _p_71
.word 0xf9400fa1
.word 0xf9000ba0
bl _p_272
.word 0xf9400ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2768]
.word 0xf9000001
.loc 33 364 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2776]
.word 0xd2800001
bl _p_30
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2784]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_24b:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGContext__ctor_intptr
CoreGraphics_CGContext__ctor_intptr:
.file 34 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreGraphics/CGContext.cs"
.loc 34 131 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800002
bl _p_273
.loc 34 133 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_24c:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGContext__ctor_intptr_bool
CoreGraphics_CGContext__ctor_intptr_bool:
.loc 34 142 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_274
.loc 34 143 0
.word 0x394083a0
.word 0x35000060
.loc 34 144 0
.word 0xf9400fa0
bl _p_275
.loc 34 145 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_24d:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGContext_Finalize
CoreGraphics_CGContext_Finalize:
.loc 34 149 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba2
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9001fbe
.loc 34 150 0
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9401fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_24e:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGContext_Dispose
CoreGraphics_CGContext_Dispose:
.loc 34 154 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800021
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.loc 34 155 0
.word 0xf9400ba0
bl _p_167
.loc 34 156 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_24f:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGContext_get_Handle
CoreGraphics_CGContext_get_Handle:
.loc 34 159 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_250:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGContext_set_Handle_intptr
CoreGraphics_CGContext_set_Handle_intptr:
.loc 34 161 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400fa0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x350000e0
.loc 34 163 0
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 34 164 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 34 162 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28484e1
bl _p_68
.word 0xaa0003e1
.word 0xd2801820
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_251:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGContext_Dispose_bool
CoreGraphics_CGContext_Dispose_bool:
.loc 34 175 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000140
.loc 34 176 0
.word 0xf9400ba0
.word 0xf9400800
bl _p_276
.loc 34 177 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400ba0
.word 0xf9000801
.loc 34 179 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_254:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGContext_SetBlendMode_CoreGraphics_CGBlendMode
CoreGraphics_CGContext_SetBlendMode_CoreGraphics_CGBlendMode:
.loc 34 305 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800
.word 0xb9801ba1
bl _p_277
.loc 34 306 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_256:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGContext_DrawImage_CoreGraphics_CGRect_CoreGraphics_CGImage
CoreGraphics_CGContext_DrawImage_CoreGraphics_CGRect_CoreGraphics_CGImage:
.loc 34 833 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xfd0017a0
.word 0xfd001ba1
.word 0xfd001fa2
.word 0xfd0023a3
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400819
.word 0xf94017a0
.word 0xf90047a0
.word 0xf9401ba0
.word 0xf9004ba0
.word 0xf9401fa0
.word 0xf9004fa0
.word 0xf94023a0
.word 0xf90053a0
.word 0xb40001ba
.word 0x3940035e
.word 0xf9400b40
.word 0xf94047a1
.word 0xf90037a1
.word 0xf9404ba1
.word 0xf9003ba1
.word 0xf9404fa1
.word 0xf9003fa1
.word 0xf94053a1
.word 0xf90043a1
.word 0xaa0003fa
.word 0x1400000e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xf94047a1
.word 0xf90037a1
.word 0xf9404ba1
.word 0xf9003ba1
.word 0xf9404fa1
.word 0xf9003fa1
.word 0xf94053a1
.word 0xf90043a1
.word 0xaa0003fa
.word 0xaa1903e0
.word 0xfd4037a0
.word 0xfd403ba1
.word 0xfd403fa2
.word 0xfd4043a3
.word 0xaa1a03e1
bl _p_278
.loc 34 834 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_258:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGImage__ctor_intptr
CoreGraphics_CGImage__ctor_intptr:
.file 35 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreGraphics/CGImage.cs"
.loc 35 124 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800002
bl _p_279
.loc 35 126 0
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 35 127 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_259:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGImage__ctor_intptr_bool
CoreGraphics_CGImage__ctor_intptr_bool:
.loc 35 132 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 35 133 0
.word 0x394083a0
.word 0x35000060
.loc 35 134 0
.word 0xf9400fa0
bl _p_280
.loc 35 135 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_25a:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGImage_Finalize
CoreGraphics_CGImage_Finalize:
.loc 35 139 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba2
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9001fbe
.loc 35 140 0
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9401fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_25b:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGImage_Dispose
CoreGraphics_CGImage_Dispose:
.loc 35 144 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800021
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.loc 35 145 0
.word 0xf9400ba0
bl _p_167
.loc 35 146 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_25c:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGImage_get_Handle
CoreGraphics_CGImage_get_Handle:
.loc 35 149 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_25d:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGImage_Dispose_bool
CoreGraphics_CGImage_Dispose_bool:
.loc 35 160 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000140
.loc 35 161 0
.word 0xf9400ba0
.word 0xf9400800
bl _p_281
.loc 35 162 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400ba0
.word 0xf9000801
.loc 35 164 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_260:
.text
	.align 4
	.no_dead_strip CoreGraphics_CGImage__ctor_int_int_int_int_int_CoreGraphics_CGColorSpace_CoreGraphics_CGImageAlphaInfo_CoreGraphics_CGDataProvider_System_nfloat___bool_CoreGraphics_CGColorRenderingIntent
CoreGraphics_CGImage__ctor_int_int_int_int_int_CoreGraphics_CGColorSpace_CoreGraphics_CGImageAlphaInfo_CoreGraphics_CGDataProvider_System_nfloat___bool_CoreGraphics_CGColorRenderingIntent:
.loc 35 197 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xd2800210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa90153b3
.word 0xf90013b5
.word 0xf90017b7
.word 0xa9036bb9
.word 0xf90023bc
.word 0x910203bc
.word 0xf90027a0
.word 0xf9002ba1
.word 0xaa0203fa
.word 0xf9002fa3
.word 0xaa0403f3
.word 0xaa0503f4
.word 0xaa0603f5
.word 0xf90033a7
.word 0xf9400397
.word 0xd2800001
.word 0xb98053a0
.word 0x6b01001f
.word 0x540008ab
.loc 35 199 0
.word 0xd2800000
.word 0x6b00035f
.word 0x5400098b
.loc 35 201 0
.word 0xd2800000
.word 0x6b00027f
.word 0x54000a6b
.loc 35 203 0
.word 0xd2800001
.word 0xb9805ba0
.word 0x6b01001f
.word 0x54000b2b
.loc 35 205 0
.word 0xd2800000
.word 0x6b00029f
.word 0x54000c0b
.loc 35 208 0
.word 0xb98053a0
.word 0x93407c04
.word 0x93407f43
.word 0xb9805ba0
.word 0x93407c02
.word 0x93407e61
.word 0x93407e80
.word 0xf94027ba
.word 0xaa0403f9
.word 0xaa0303f4
.word 0xaa0203f3
.word 0xf90037a1
.word 0xf9003ba0
.word 0xb4000095
.word 0x394002be
.word 0xf9400ab5
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400015
.word 0xb94063a0
.word 0xb9007ba0
.word 0xb4000097
.word 0x394002fe
.word 0xf9400af7
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400017
.word 0xaa1903e0
.word 0xaa1403e1
.word 0xaa1303e2
.word 0xf94037a3
.word 0xf9403ba4
.word 0xaa1503e5
.word 0xb9807ba6
.word 0xaa1703e7
.word 0xf9400789
.word 0xf90003e9
.word 0x39404389
.word 0x390023e9
.word 0xb9801789
.word 0xb9000fe9
bl _p_282
.word 0xf9000b40
.loc 35 212 0
.word 0xa94153b3
.word 0xf94013b5
.word 0xf94017b7
.word 0xa9436bb9
.word 0xf94023bc
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.loc 35 198 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2848ea1
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 35 200 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2849021
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 35 202 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28491e1
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 35 204 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2849521
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 35 206 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2849961
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_262:
.text
ut_611:
add x0, x0, 16
b CoreGraphics_CGPoint_op_Equality_CoreGraphics_CGPoint_CoreGraphics_CGPoint
.text
	.align 4
	.no_dead_strip CoreGraphics_CGPoint_op_Equality_CoreGraphics_CGPoint_CoreGraphics_CGPoint
CoreGraphics_CGPoint_op_Equality_CoreGraphics_CGPoint_CoreGraphics_CGPoint:
.file 36 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/NativeTypes/Drawing.cs"
.loc 36 44 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd000fa1
.word 0xfd002ba2
.word 0xfd002fa3
.word 0xfd400ba0
.word 0xfd402ba1
.word 0x1e612000
.word 0x9a9f17e0
.word 0x340000c0
.word 0xfd400fa0
.word 0xfd402fa1
.word 0x1e612000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_263:
.text
ut_612:
add x0, x0, 16
b CoreGraphics_CGPoint_op_Implicit_System_Drawing_PointF
.text
	.align 4
	.no_dead_strip CoreGraphics_CGPoint_op_Implicit_System_Drawing_PointF
CoreGraphics_CGPoint_op_Implicit_System_Drawing_PointF:
.loc 36 65 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xbd0053a0
.word 0xbd0057a1
.word 0xbd4053a0
.word 0xbd00a3a0
.word 0xbd40a3a0
.word 0xbd4057a1
.word 0xbd00a3a1
.word 0xbd40a3a1
.word 0xd2800000
.word 0xf9004ba0
.word 0xf9004fa0
.word 0x910243a0
bl _p_283
.word 0xf9404ba0
.word 0xf9000ba0
.word 0xf9404fa0
.word 0xf9000fa0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_264:
.text
ut_613:
add x0, x0, 16
b CoreGraphics_CGPoint__ctor_single_single
.text
	.align 4
	.no_dead_strip CoreGraphics_CGPoint__ctor_single_single
CoreGraphics_CGPoint__ctor_single_single:
.loc 36 125 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xbd001ba0
.word 0xbd0023a1
.word 0xbd401ba0
.word 0x1e22c000
.word 0xf9400ba0
.word 0xfd000000
.loc 36 126 0
.word 0xbd4023a0
.word 0x1e22c000
.word 0xfd000400
.loc 36 127 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_265:
.text
ut_614:
add x0, x0, 16
b CoreGraphics_CGPoint_Equals_object
.text
	.align 4
	.no_dead_strip CoreGraphics_CGPoint_Equals_object
CoreGraphics_CGPoint_Equals_object:
.loc 36 153 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2792]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003f8
.loc 36 154 0
.word 0xf94013a0
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400400
.word 0xf90023a0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000361
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2792]
.word 0xeb01001f
.word 0x10000011
.word 0x54000261
.word 0x91004340
.word 0xf9400001
.word 0xf90017a1
.word 0xf9400400
.word 0xf9001ba0
.word 0xfd401fa0
.word 0xfd4023a1
.word 0xfd4017a2
.word 0xfd401ba3
bl _p_284
.word 0x53001c00
.word 0x14000002
.loc 36 157 0
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_266:
.text
ut_615:
add x0, x0, 16
b CoreGraphics_CGPoint_Equals_CoreGraphics_CGPoint
.text
	.align 4
	.no_dead_strip CoreGraphics_CGPoint_Equals_CoreGraphics_CGPoint
CoreGraphics_CGPoint_Equals_CoreGraphics_CGPoint:
.loc 36 162 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd0013a1
.word 0xf9400ba0
.word 0xf9400001
.word 0xf9002fa1
.word 0xf9400400
.word 0xf90033a0
.word 0xfd402fa0
.word 0xfd4033a1
.word 0xfd400fa2
.word 0xfd4013a3
bl _p_284
.word 0x53001c00
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_267:
.text
ut_616:
add x0, x0, 16
b CoreGraphics_CGPoint_GetHashCode
.text
	.align 4
	.no_dead_strip CoreGraphics_CGPoint_GetHashCode
CoreGraphics_CGPoint_GetHashCode:
.loc 36 168 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2805920
.word 0xf90017a0
.word 0xf9400ba0
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94017a0
.word 0xb010000
.loc 36 169 0
.word 0xd28003fe
.word 0x1b1e7c00
.word 0xf90013a0
.word 0xf9400ba0
.word 0x91002000
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94013a0
.word 0xb010000
.loc 36 170 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_268:
.text
ut_617:
add x0, x0, 16
b CoreGraphics_CGPoint_ToString
.text
	.align 4
	.no_dead_strip CoreGraphics_CGPoint_ToString
CoreGraphics_CGPoint_ToString:
.loc 36 175 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xf90023a0
bl _p_26
.word 0xaa0003e1
.word 0xf9400ba0
bl _p_286
.word 0xf90027a0
.word 0xf9400ba0
.word 0x91002000
.word 0xf9002ba0
bl _p_26
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_286
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _p_24
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_269:
.text
ut_618:
add x0, x0, 16
b CoreGraphics_CGSize_op_Equality_CoreGraphics_CGSize_CoreGraphics_CGSize
.text
	.align 4
	.no_dead_strip CoreGraphics_CGSize_op_Equality_CoreGraphics_CGSize_CoreGraphics_CGSize
CoreGraphics_CGSize_op_Equality_CoreGraphics_CGSize_CoreGraphics_CGSize:
.loc 36 189 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd000fa1
.word 0xfd002ba2
.word 0xfd002fa3
.word 0xfd400ba0
.word 0xfd402ba1
.word 0x1e612000
.word 0x9a9f17e0
.word 0x340000c0
.word 0xfd400fa0
.word 0xfd402fa1
.word 0x1e612000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_26a:
.text
ut_619:
add x0, x0, 16
b CoreGraphics_CGSize_op_Implicit_System_Drawing_SizeF
.text
	.align 4
	.no_dead_strip CoreGraphics_CGSize_op_Implicit_System_Drawing_SizeF
CoreGraphics_CGSize_op_Implicit_System_Drawing_SizeF:
.loc 36 210 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xbd0053a0
.word 0xbd0057a1
.word 0xbd4053a0
.word 0xbd00a3a0
.word 0xbd40a3a0
.word 0xbd4057a1
.word 0xbd00a3a1
.word 0xbd40a3a1
.word 0xd2800000
.word 0xf9004ba0
.word 0xf9004fa0
.word 0x910243a0
bl _p_287
.word 0xf9404ba0
.word 0xf9000ba0
.word 0xf9404fa0
.word 0xf9000fa0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_26b:
.text
ut_620:
add x0, x0, 16
b CoreGraphics_CGSize_get_Width
.text
	.align 4
	.no_dead_strip CoreGraphics_CGSize_get_Width
CoreGraphics_CGSize_get_Width:
.loc 36 248 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xfd400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_26c:
.text
ut_621:
add x0, x0, 16
b CoreGraphics_CGSize_get_Height
.text
	.align 4
	.no_dead_strip CoreGraphics_CGSize_get_Height
CoreGraphics_CGSize_get_Height:
.loc 36 253 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xfd400400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_26d:
.text
ut_622:
add x0, x0, 16
b CoreGraphics_CGSize__ctor_System_nfloat_System_nfloat
.text
	.align 4
	.no_dead_strip CoreGraphics_CGSize__ctor_System_nfloat_System_nfloat
CoreGraphics_CGSize__ctor_System_nfloat_System_nfloat:
.loc 36 263 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd0013a1
.word 0xfd400fa0
.word 0xf9400ba0
.word 0xfd000000
.loc 36 264 0
.word 0xfd4013a0
.word 0xfd000400
.loc 36 265 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_26e:
.text
ut_623:
add x0, x0, 16
b CoreGraphics_CGSize__ctor_single_single
.text
	.align 4
	.no_dead_strip CoreGraphics_CGSize__ctor_single_single
CoreGraphics_CGSize__ctor_single_single:
.loc 36 275 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xbd001ba0
.word 0xbd0023a1
.word 0xbd401ba0
.word 0x1e22c000
.word 0xf9400ba0
.word 0xfd000000
.loc 36 276 0
.word 0xbd4023a0
.word 0x1e22c000
.word 0xfd000400
.loc 36 277 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_26f:
.text
ut_624:
add x0, x0, 16
b CoreGraphics_CGSize_Equals_object
.text
	.align 4
	.no_dead_strip CoreGraphics_CGSize_Equals_object
CoreGraphics_CGSize_Equals_object:
.loc 36 309 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2800]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003f8
.loc 36 310 0
.word 0xf94013a0
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400400
.word 0xf90023a0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000361
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2800]
.word 0xeb01001f
.word 0x10000011
.word 0x54000261
.word 0x91004340
.word 0xf9400001
.word 0xf90017a1
.word 0xf9400400
.word 0xf9001ba0
.word 0xfd401fa0
.word 0xfd4023a1
.word 0xfd4017a2
.word 0xfd401ba3
bl _p_288
.word 0x53001c00
.word 0x14000002
.loc 36 313 0
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_270:
.text
ut_625:
add x0, x0, 16
b CoreGraphics_CGSize_Equals_CoreGraphics_CGSize
.text
	.align 4
	.no_dead_strip CoreGraphics_CGSize_Equals_CoreGraphics_CGSize
CoreGraphics_CGSize_Equals_CoreGraphics_CGSize:
.loc 36 318 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd0013a1
.word 0xf9400ba0
.word 0xf9400001
.word 0xf9002fa1
.word 0xf9400400
.word 0xf90033a0
.word 0xfd402fa0
.word 0xfd4033a1
.word 0xfd400fa2
.word 0xfd4013a3
bl _p_288
.word 0x53001c00
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_271:
.text
ut_626:
add x0, x0, 16
b CoreGraphics_CGSize_GetHashCode
.text
	.align 4
	.no_dead_strip CoreGraphics_CGSize_GetHashCode
CoreGraphics_CGSize_GetHashCode:
.loc 36 324 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2805920
.word 0xf90017a0
.word 0xf9400ba0
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94017a0
.word 0xb010000
.loc 36 325 0
.word 0xd28003fe
.word 0x1b1e7c00
.word 0xf90013a0
.word 0xf9400ba0
.word 0x91002000
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94013a0
.word 0xb010000
.loc 36 326 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_272:
.text
ut_627:
add x0, x0, 16
b CoreGraphics_CGSize_ToString
.text
	.align 4
	.no_dead_strip CoreGraphics_CGSize_ToString
CoreGraphics_CGSize_ToString:
.loc 36 355 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #576]
.word 0xf90023a0
bl _p_26
.word 0xaa0003e1
.word 0xf9400ba0
bl _p_286
.word 0xf90027a0
.word 0xf9400ba0
.word 0x91002000
.word 0xf9002ba0
bl _p_26
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_286
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _p_24
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_273:
.text
ut_628:
add x0, x0, 16
b CoreGraphics_CGRect_op_Equality_CoreGraphics_CGRect_CoreGraphics_CGRect
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_op_Equality_CoreGraphics_CGRect_CoreGraphics_CGRect
CoreGraphics_CGRect_op_Equality_CoreGraphics_CGRect_CoreGraphics_CGRect:
.loc 36 383 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd000fa1
.word 0xfd0013a2
.word 0xfd0017a3
.word 0xfd002ba4
.word 0xfd002fa5
.word 0xfd0033a6
.word 0xfd0037a7
.word 0xfd400ba0
.word 0xfd402ba1
.word 0x1e612000
.word 0x9a9f17e0
.word 0x34000200
.word 0xfd400fa0
.word 0xfd402fa1
.word 0x1e612000
.word 0x9a9f17e0
.word 0x34000160
.word 0xfd4013a0
.word 0xfd4033a1
.word 0x1e612000
.word 0x9a9f17e0
.word 0x340000c0
.word 0xfd4017a0
.word 0xfd4037a1
.word 0x1e612000
.word 0x9a9f17e0
.word 0x14000002
.word 0xd2800000
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_274:
.text
ut_629:
add x0, x0, 16
b CoreGraphics_CGRect_op_Implicit_System_Drawing_RectangleF
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_op_Implicit_System_Drawing_RectangleF
CoreGraphics_CGRect_op_Implicit_System_Drawing_RectangleF:
.loc 36 402 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xbd0053a0
.word 0xbd0057a1
.word 0xbd005ba2
.word 0xbd005fa3
.word 0xbd4053a0
.word 0xbd00b3a0
.word 0xbd40b3a0
.word 0xbd4057a1
.word 0xbd00b3a1
.word 0xbd40b3a1
.word 0xbd405ba2
.word 0xbd00b3a2
.word 0xbd40b3a2
.word 0xbd405fa3
.word 0xbd00b3a3
.word 0xbd40b3a3
.word 0xd2800000
.word 0xf9004ba0
.word 0xf9004fa0
.word 0xf90053a0
.word 0xf90057a0
.word 0x910243a0
bl _p_289
.word 0xf9404ba0
.word 0xf9000ba0
.word 0xf9404fa0
.word 0xf9000fa0
.word 0xf94053a0
.word 0xf90013a0
.word 0xf94057a0
.word 0xf90017a0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0xfd4013a2
.word 0xfd4017a3
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_275:
.text
ut_630:
add x0, x0, 16
b CoreGraphics_CGRect_get_X
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_get_X
CoreGraphics_CGRect_get_X:
.loc 36 474 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xfd400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_276:
.text
ut_631:
add x0, x0, 16
b CoreGraphics_CGRect_get_Y
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_get_Y
CoreGraphics_CGRect_get_Y:
.loc 36 479 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xfd400400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_277:
.text
ut_632:
add x0, x0, 16
b CoreGraphics_CGRect_get_Width
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_get_Width
CoreGraphics_CGRect_get_Width:
.loc 36 484 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xfd400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_278:
.text
ut_633:
add x0, x0, 16
b CoreGraphics_CGRect_get_Height
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_get_Height
CoreGraphics_CGRect_get_Height:
.loc 36 489 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xfd400c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_279:
.text
ut_634:
add x0, x0, 16
b CoreGraphics_CGRect_get_Size
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_get_Size
CoreGraphics_CGRect_get_Size:
.loc 36 518 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9002ba0
.word 0xf9402ba0
.word 0xfd400801
.word 0xfd400c00
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0xfd002fa1
.word 0xfd0033a0
.word 0xf9402fa0
.word 0xf9000ba0
.word 0xf94033a0
.word 0xf9000fa0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_27a:
.text
ut_635:
add x0, x0, 16
b CoreGraphics_CGRect__ctor_single_single_single_single
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect__ctor_single_single_single_single
CoreGraphics_CGRect__ctor_single_single_single_single:
.loc 36 552 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xbd001ba0
.word 0xbd0023a1
.word 0xbd002ba2
.word 0xbd0033a3
.word 0xbd401ba0
.word 0x1e22c000
.word 0xfd000340
.loc 36 553 0
.word 0xbd4023a0
.word 0x1e22c000
.word 0xfd000740
.loc 36 554 0
.word 0xbd402ba0
.word 0x1e22c000
.word 0xfd000b40
.loc 36 555 0
.word 0xbd4033a0
.word 0x1e22c000
.word 0xfd000f40
.loc 36 556 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_27b:
.text
ut_636:
add x0, x0, 16
b CoreGraphics_CGRect_Equals_object
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_Equals_object
CoreGraphics_CGRect_Equals_object:
.loc 36 657 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2808]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb4000578
.loc 36 658 0
.word 0xf94013a0
.word 0xf9400001
.word 0xf90027a1
.word 0xf9400401
.word 0xf9002ba1
.word 0xf9400801
.word 0xf9002fa1
.word 0xf9400c00
.word 0xf90033a0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000461
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2808]
.word 0xeb01001f
.word 0x10000011
.word 0x54000361
.word 0x91004340
.word 0xf9400001
.word 0xf90017a1
.word 0xf9400401
.word 0xf9001ba1
.word 0xf9400801
.word 0xf9001fa1
.word 0xf9400c00
.word 0xf90023a0
.word 0xfd4027a0
.word 0xfd402ba1
.word 0xfd402fa2
.word 0xfd4033a3
.word 0xfd4017a4
.word 0xfd401ba5
.word 0xfd401fa6
.word 0xfd4023a7
bl _p_290
.word 0x53001c00
.word 0x14000002
.loc 36 661 0
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_27c:
.text
ut_637:
add x0, x0, 16
b CoreGraphics_CGRect_Equals_CoreGraphics_CGRect
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_Equals_CoreGraphics_CGRect
CoreGraphics_CGRect_Equals_CoreGraphics_CGRect:
.loc 36 666 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd0013a1
.word 0xfd0017a2
.word 0xfd001ba3
.word 0xf9400ba0
.word 0xf9400001
.word 0xf9002fa1
.word 0xf9400401
.word 0xf90033a1
.word 0xf9400801
.word 0xf90037a1
.word 0xf9400c00
.word 0xf9003ba0
.word 0xfd402fa0
.word 0xfd4033a1
.word 0xfd4037a2
.word 0xfd403ba3
.word 0xfd400fa4
.word 0xfd4013a5
.word 0xfd4017a6
.word 0xfd401ba7
bl _p_290
.word 0x53001c00
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_27d:
.text
ut_638:
add x0, x0, 16
b CoreGraphics_CGRect_GetHashCode
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_GetHashCode
CoreGraphics_CGRect_GetHashCode:
.loc 36 672 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xd2805920
.word 0xf9001fa0
.word 0xaa1a03e0
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9401fa0
.word 0xb010000
.loc 36 673 0
.word 0xd28003fe
.word 0x1b1e7c00
.word 0xf9001ba0
.word 0x91002340
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xb010000
.loc 36 674 0
.word 0xd28003fe
.word 0x1b1e7c00
.word 0xf90017a0
.word 0x91004340
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94017a0
.word 0xb010000
.loc 36 675 0
.word 0xd28003fe
.word 0x1b1e7c00
.word 0xf90013a0
.word 0x91006340
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94013a0
.word 0xb010000
.loc 36 676 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_27e:
.text
ut_639:
add x0, x0, 16
b CoreGraphics_CGRect_ToString
.text
	.align 4
	.no_dead_strip CoreGraphics_CGRect_ToString
CoreGraphics_CGRect_ToString:
.loc 36 681 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #528]
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800081
bl _p_30
.word 0xf9003fa0
.word 0xf9003ba0
.word 0xfd400340
.word 0xfd0043a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9403fa3
.word 0xfd4043a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf90033a0
.word 0xf9002fa0
.word 0xfd400740
.word 0xfd0037a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94033a3
.word 0xfd4037a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9402fa0
.word 0xf90027a0
.word 0xf90023a0
.word 0xfd400b40
.word 0xfd002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94027a3
.word 0xfd402ba0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf90017a0
.word 0xfd400f40
.word 0xfd001fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9401ba3
.word 0xfd401fa0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94013a0
.word 0xf94017a1
bl _p_31
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_27f:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayer_MarkDirtyIfDerived
CoreAnimation_CALayer_MarkDirtyIfDerived:
.file 37 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreAnimation/CALayer.cs"
.loc 37 57 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400c00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2816]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000080
.loc 37 59 0
.word 0xf9400ba0
.word 0xd2800021
bl _p_291
.loc 37 60 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_280:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayer_SetCALayerDelegate_CoreAnimation_CALayerDelegate
CoreAnimation_CALayer_SetCALayerDelegate_CoreAnimation_CALayerDelegate:
.loc 37 86 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9401720
.word 0xb4000320
.loc 37 87 0
.word 0xf9401721
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9404030
.word 0xd63f0200
.word 0xaa0003f8
.word 0xb4000178
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2824]
.word 0xeb01001f
.word 0x10000011
.word 0x54000501
.word 0xaa1803f7
.loc 37 88 0
.word 0xeb1a031f
.word 0x54000400
.loc 37 90 0
.word 0xaa1703e0
.word 0xd2800001
.word 0x394002fe
bl _p_292
.loc 37 93 0
.word 0xb500007a
.loc 37 94 0
.word 0xf900173f
.loc 37 95 0
.word 0x14000019
.loc 37 96 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1784]
bl _p_71
.word 0xf9001ba0
.word 0xaa1a03e1
bl _p_293
.word 0xf9401ba0
.word 0xf9001720
.word 0x9100a321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 37 97 0
.word 0xaa1a03e0
.word 0xaa1903e1
.word 0x3940035e
bl _p_292
.loc 37 99 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_281:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayer_OnDispose
CoreAnimation_CALayer_OnDispose:
.loc 37 103 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf9401740
.word 0xb4000300
.loc 37 104 0
.word 0xf9401741
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9404030
.word 0xd63f0200
.word 0xaa0003f9
.word 0xb4000179
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2824]
.word 0xeb01001f
.word 0x10000011
.word 0x54000161
.loc 37 105 0
.word 0xb40000d9
.loc 37 106 0
.word 0xaa1a03e0
.word 0xd2800001
.word 0xf9400342
.word 0xf940d050
.word 0xd63f0200
.loc 37 108 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_282:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayer_get_ClassHandle
CoreAnimation_CALayer_get_ClassHandle:
.file 38 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreAnimation/CALayer.g.cs"
.loc 38 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2832]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_283:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayer__ctor_intptr
CoreAnimation_CALayer__ctor_intptr:
.loc 38 91 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 38 93 0
.word 0xf9400ba0
bl _p_294
.loc 38 94 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_284:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayer_get_Bounds
CoreAnimation_CALayer_get_Bounds:
.loc 38 1023 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9002ba0
.word 0xf9402ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_13@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_13@PAGEOFF
ldr x1, [x1]
.word 0x910043a2
.word 0xf9002fa2
bl _p_295
.word 0xf9402fbe
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 38 1045 0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0xfd4013a2
.word 0xfd4017a3
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_285:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayer_set_WeakDelegate_Foundation_NSObject
CoreAnimation_CALayer_set_WeakDelegate_Foundation_NSObject:
.loc 38 2326 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xa901e7b8
.word 0xf90017ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9400b21
adrp x0, L_OBJC_SELECTOR_REFERENCES_14@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_14@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f8
.word 0xf9001ba0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b56
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400016
.word 0xaa1803e0
.word 0xf9401ba1
.word 0xaa1603e2
bl _p_261
.loc 38 2330 0
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2824]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1903e0
.word 0xaa1803e1
bl _p_296
.loc 38 2331 0
.word 0xaa1903e0
bl _p_297
.loc 38 2332 0
.word 0xf9001b3a
.word 0x9100c320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 38 2333 0
.word 0xf9400bb6
.word 0xa941e7b8
.word 0xf94017ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_286:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayer_Dispose_bool
CoreAnimation_CALayer_Dispose_bool:
.loc 38 2596 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xaa1903e0
bl _p_298
.loc 38 2597 0
.word 0xaa1903e0
.word 0x394063a1
bl _p_299
.loc 38 2598 0
.word 0xf9400b20

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000040
.loc 38 2599 0
.word 0xf9001b3f
.loc 38 2601 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_287:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayer__cctor
CoreAnimation_CALayer__cctor:
.loc 38 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2840]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2832]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_288:
.text
	.align 4
	.no_dead_strip CoreAnimation_CADisplayLink_get_ClassHandle
CoreAnimation_CADisplayLink_get_ClassHandle:
.file 39 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreAnimation/CADisplayLink.g.cs"
.loc 39 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2848]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_289:
.text
	.align 4
	.no_dead_strip CoreAnimation_CADisplayLink__ctor_intptr
CoreAnimation_CADisplayLink__ctor_intptr:
.loc 39 74 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 39 76 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_28a:
.text
	.align 4
	.no_dead_strip CoreAnimation_CADisplayLink_AddToRunLoop_Foundation_NSRunLoop_Foundation_NSString
CoreAnimation_CADisplayLink_AddToRunLoop_Foundation_NSRunLoop_Foundation_NSString:
.loc 39 82 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xb40004f9
.loc 39 85 0
.word 0xf94017a0
.word 0xf9400800
.word 0xf9002ba0
adrp x0, L_OBJC_SELECTOR_REFERENCES_15@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_15@PAGEOFF
ldr x0, [x0]
.word 0xf90027a0
.word 0x3940033e
.word 0xf9400b20
.word 0xf90023a0
.word 0xaa1a03e0
.word 0xd2800001
bl _p_300
.word 0xf94023a1
.word 0xf94027a2
.word 0xf9402ba3
.word 0x53001c00
.word 0xaa0303f9
.word 0xaa0203f8
.word 0xf9001ba1
.word 0x35000080
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xf9401ba2
.word 0xaa1a03e3
bl _p_301
.loc 39 86 0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.loc 39 83 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd284a361
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_28b:
.text
	.align 4
	.no_dead_strip CoreAnimation_CADisplayLink_Create_Foundation_NSObject_ObjCRuntime_Selector
CoreAnimation_CADisplayLink_Create_Foundation_NSObject_ObjCRuntime_Selector:
.loc 39 101 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb4000359
.loc 39 103 0
.word 0xaa1a03e0
.word 0xd2800001
bl _p_183
.word 0x53001c00
.word 0x350003e0
.loc 39 105 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2848]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_16@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_16@PAGEOFF
ldr x1, [x1]
.word 0x3940033e
.word 0xf9400b22
.word 0x3940035e
.word 0xf9400f43
bl _p_302

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2856]
bl _p_303
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 39 102 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd284aae1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 39 104 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd284aca1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_28c:
.text
	.align 4
	.no_dead_strip CoreAnimation_CADisplayLink_Invalidate
CoreAnimation_CADisplayLink_Invalidate:
.loc 39 113 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_17@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_17@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 39 114 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_28d:
.text
	.align 4
	.no_dead_strip CoreAnimation_CADisplayLink_set_FrameInterval_System_nint
CoreAnimation_CADisplayLink_set_FrameInterval_System_nint:
.loc 39 174 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_18@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_18@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa2
bl _p_304
.loc 39 175 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_28e:
.text
	.align 4
	.no_dead_strip CoreAnimation_CADisplayLink_set_Paused_bool
CoreAnimation_CADisplayLink_set_Paused_bool:
.loc 39 195 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_19@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_19@PAGEOFF
ldr x1, [x1]
.word 0x394063a2
bl _p_305
.loc 39 196 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_28f:
.text
	.align 4
	.no_dead_strip CoreAnimation_CADisplayLink__cctor
CoreAnimation_CADisplayLink__cctor:
.loc 39 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2864]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2848]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_290:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayerDelegate_SetCALayer_CoreAnimation_CALayer
CoreAnimation_CALayerDelegate_SetCALayer_CoreAnimation_CALayer:
.file 40 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreAnimation/CALayerDelegate.cs"
.loc 40 41 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xf90013a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xf94013a0
.word 0xf900141a
.loc 40 42 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_291:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayerDelegate_Dispose_bool
CoreAnimation_CALayerDelegate_Dispose_bool:
.loc 40 46 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9401400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000160
.loc 40 47 0
.word 0xf9400ba0
.word 0xf9401400
adrp x1, L_OBJC_SELECTOR_REFERENCES_14@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_14@PAGEOFF
ldr x1, [x1]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #1672]
.word 0xf9400042
bl _p_261
.loc 40 49 0
.word 0xf9400ba0
.word 0x394063a1
bl _p_299
.loc 40 50 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_292:
.text
	.align 4
	.no_dead_strip CoreAnimation_CALayerDelegate__ctor_intptr
CoreAnimation_CALayerDelegate__ctor_intptr:
.file 41 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreAnimation/CALayerDelegate.g.cs"
.loc 41 146 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 41 148 0
.word 0xf9400ba0
.word 0xd2800001
bl _p_306
.loc 41 149 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_293:
.text
ut_660:
add x0, x0, 16
b CoreAnimation_CATransform3D__cctor
.text
	.align 4
	.no_dead_strip CoreAnimation_CATransform3D__cctor
CoreAnimation_CATransform3D__cctor:
.file 42 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreAnimation/CATransform3D.cs"
.loc 42 30 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2872]
.word 0xd2800001
.word 0xd2801002
bl _p_307
.loc 42 31 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2872]
.word 0xd280001e
.word 0xf2a7f01e
.word 0x9e6703c0
.word 0x1e22c000
.word 0xfd000000
.loc 42 32 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2872]
.word 0xd280001e
.word 0xf2a7f01e
.word 0x9e6703c0
.word 0x1e22c000
.word 0xfd001400
.loc 42 33 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2872]
.word 0xd280001e
.word 0xf2a7f01e
.word 0x9e6703c0
.word 0x1e22c000
.word 0xfd002800
.loc 42 34 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2872]
.word 0xd280001e
.word 0xf2a7f01e
.word 0x9e6703c0
.word 0x1e22c000
.word 0xfd003c00
.loc 42 35 0
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_294:
.text
ut_662:
add x0, x0, 16
b CoreAnimation_CATransform3D_Equals_object
.text
	.align 4
	.no_dead_strip CoreAnimation_CATransform3D_Equals_object
CoreAnimation_CATransform3D_Equals_object:
.loc 42 56 0 prologue_end
.word 0xd2804610
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa9007bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2880]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb5000078
.loc 42 57 0
.word 0xd2800000
.word 0x1400005a
.loc 42 58 0
.word 0xf94013a1
.word 0x9106a3a0
.word 0xd2801002
bl _p_218
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000b41
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2880]
.word 0xeb01001f
.word 0x10000011
.word 0x54000a41
.word 0x91004341
.word 0x9104a3a0
.word 0xd2801002
bl _p_218
.word 0x9102a3a0
.word 0xf940d7a1
.word 0xf90057a1
.word 0xf940dba1
.word 0xf9005ba1
.word 0xf940dfa1
.word 0xf9005fa1
.word 0xf940e3a1
.word 0xf90063a1
.word 0xf940e7a1
.word 0xf90067a1
.word 0xf940eba1
.word 0xf9006ba1
.word 0xf940efa1
.word 0xf9006fa1
.word 0xf940f3a1
.word 0xf90073a1
.word 0xf940f7a1
.word 0xf90077a1
.word 0xf940fba1
.word 0xf9007ba1
.word 0xf940ffa1
.word 0xf9007fa1
.word 0xf94103a1
.word 0xf90083a1
.word 0xf94107a1
.word 0xf90087a1
.word 0xf9410ba1
.word 0xf9008ba1
.word 0xf9410fa1
.word 0xf9008fa1
.word 0xf94113a1
.word 0xf90093a1
.word 0x9100a3a1
.word 0xf94097a2
.word 0xf90017a2
.word 0xf9409ba2
.word 0xf9001ba2
.word 0xf9409fa2
.word 0xf9001fa2
.word 0xf940a3a2
.word 0xf90023a2
.word 0xf940a7a2
.word 0xf90027a2
.word 0xf940aba2
.word 0xf9002ba2
.word 0xf940afa2
.word 0xf9002fa2
.word 0xf940b3a2
.word 0xf90033a2
.word 0xf940b7a2
.word 0xf90037a2
.word 0xf940bba2
.word 0xf9003ba2
.word 0xf940bfa2
.word 0xf9003fa2
.word 0xf940c3a2
.word 0xf90043a2
.word 0xf940c7a2
.word 0xf90047a2
.word 0xf940cba2
.word 0xf9004ba2
.word 0xf940cfa2
.word 0xf9004fa2
.word 0xf940d3a2
.word 0xf90053a2
bl _p_308
.word 0x53001c00
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa9407bfd
.word 0xd2804610
.word 0x910003f1
.word 0x8b100231
.word 0x9100023f
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_296:
.text
ut_663:
add x0, x0, 16
b CoreAnimation_CATransform3D_GetHashCode
.text
	.align 4
	.no_dead_strip CoreAnimation_CATransform3D_GetHashCode
CoreAnimation_CATransform3D_GetHashCode:
.loc 42 64 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xa901ebb9
.word 0xaa0003fa
.word 0xfd400340
.word 0x9e780019
.word 0x93407f39
.word 0xf90017ba
.loc 42 66 0
.word 0xaa1a03f7
.loc 42 67 0
.word 0xd280003a
.word 0x14000008
.loc 42 68 0
.word 0x93407f40
.word 0xd2800081
.word 0x9b017c00
.word 0x8b0002e0
.word 0xb9800000
.word 0x4a000339
.loc 42 67 0
.word 0x1100075a
.word 0xd2800080
.word 0xd2800101
.word 0x1b017c00
.word 0x6b00035f
.word 0x54fffeab
.word 0xd2800000
.word 0x2a0003e0
.word 0xf90017a0
.loc 42 71 0
.word 0xaa1903e0
.word 0xf9400bb7
.word 0xa941ebb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_297:
.text
ut_664:
add x0, x0, 16
b CoreAnimation_CATransform3D_ToString
.text
	.align 4
	.no_dead_strip CoreAnimation_CATransform3D_ToString
CoreAnimation_CATransform3D_ToString:
.loc 42 174 0 prologue_end
.word 0xa9a57bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2888]
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800201
bl _p_30
.word 0xf900cfa0
.word 0xf900cba0
.word 0xfd400340
.word 0xfd00d3a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf940cfa3
.word 0xfd40d3a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf940cba0
.word 0xf900c3a0
.word 0xf900bfa0
.word 0xfd400740
.word 0xfd00c7a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf940c3a3
.word 0xfd40c7a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf940bfa0
.word 0xf900b7a0
.word 0xf900b3a0
.word 0xfd400b40
.word 0xfd00bba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf940b7a3
.word 0xfd40bba0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf940b3a0
.word 0xf900aba0
.word 0xf900a7a0
.word 0xfd400f40
.word 0xfd00afa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf940aba3
.word 0xfd40afa0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf940a7a0
.word 0xf9009fa0
.word 0xf9009ba0
.word 0xfd401340
.word 0xfd00a3a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9409fa3
.word 0xfd40a3a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800081
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9409ba0
.word 0xf90093a0
.word 0xf9008fa0
.word 0xfd401740
.word 0xfd0097a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94093a3
.word 0xfd4097a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd28000a1
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9408fa0
.word 0xf90087a0
.word 0xf90083a0
.word 0xfd401b40
.word 0xfd008ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94087a3
.word 0xfd408ba0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd28000c1
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94083a0
.word 0xf9007ba0
.word 0xf90077a0
.word 0xfd401f40
.word 0xfd007fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9407ba3
.word 0xfd407fa0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd28000e1
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94077a0
.word 0xf9006fa0
.word 0xf9006ba0
.word 0xfd402340
.word 0xfd0073a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9406fa3
.word 0xfd4073a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800101
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9406ba0
.word 0xf90063a0
.word 0xf9005fa0
.word 0xfd402740
.word 0xfd0067a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94063a3
.word 0xfd4067a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800121
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9405fa0
.word 0xf90057a0
.word 0xf90053a0
.word 0xfd402b40
.word 0xfd005ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94057a3
.word 0xfd405ba0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800141
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94053a0
.word 0xf9004ba0
.word 0xf90047a0
.word 0xfd402f40
.word 0xfd004fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9404ba3
.word 0xfd404fa0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800161
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf9003ba0
.word 0xfd403340
.word 0xfd0043a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9403fa3
.word 0xfd4043a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd2800181
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf90033a0
.word 0xf9002fa0
.word 0xfd403740
.word 0xfd0037a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94033a3
.word 0xfd4037a0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd28001a1
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9402fa0
.word 0xf90027a0
.word 0xf90023a0
.word 0xfd403b40
.word 0xfd002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94027a3
.word 0xfd402ba0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd28001c1
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf90017a0
.word 0xfd403f40
.word 0xfd001fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2744]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9401ba3
.word 0xfd401fa0
.word 0xfd000840
.word 0xaa0303e0
.word 0xd28001e1
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94013a0
.word 0xf94017a1
bl _p_31
.word 0xf9400bba
.word 0x910003bf
.word 0xa8db7bfd
.word 0xd65f03c0

Lme_298:
.text
	.align 4
	.no_dead_strip CoreAnimation_CAEAGLLayer_get_ClassHandle
CoreAnimation_CAEAGLLayer_get_ClassHandle:
.file 43 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreAnimation/CAEAGLLayer.g.cs"
.loc 43 55 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2896]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_299:
.text
	.align 4
	.no_dead_strip CoreAnimation_CAEAGLLayer__ctor_intptr
CoreAnimation_CAEAGLLayer__ctor_intptr:
.loc 43 91 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_309
.loc 43 93 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_29a:
.text
	.align 4
	.no_dead_strip CoreAnimation_CAEAGLLayer_get_DrawableProperties
CoreAnimation_CAEAGLLayer_get_DrawableProperties:
.loc 43 110 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_11@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_11@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2600]
bl _p_260
.loc 43 114 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_29b:
.text
	.align 4
	.no_dead_strip CoreAnimation_CAEAGLLayer_set_DrawableProperties_Foundation_NSDictionary
CoreAnimation_CAEAGLLayer_set_DrawableProperties_Foundation_NSDictionary:
.loc 43 120 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_12@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_12@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_261
.loc 43 121 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_29c:
.text
	.align 4
	.no_dead_strip CoreAnimation_CAEAGLLayer__cctor
CoreAnimation_CAEAGLLayer__cctor:
.loc 43 53 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2904]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2896]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_29d:
.text
	.align 4
	.no_dead_strip UIKit_UIKitThreadAccessException__ctor
UIKit_UIKitThreadAccessException__ctor:
.file 44 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIApplication.cs"
.loc 44 19 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2912]
.word 0xf9400ba0
bl _p_310
.loc 44 21 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_29e:
.text
	.align 4
	.no_dead_strip UIKit_UIApplication_Initialize
UIKit_UIApplication_Initialize:
.loc 44 51 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2920]
.word 0xf9400000
.word 0xb50001a0
.loc 44 54 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2928]
.word 0xd2800281
bl _p_7
bl _p_311
.loc 44 55 0
bl _p_312
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2920]
.word 0xf9000001
.loc 44 56 0
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2a0:
.text
	.align 4
	.no_dead_strip UIKit_UIApplication_Main_string___string_string
UIKit_UIApplication_Main_string___string_string:
.loc 44 61 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103f9
.word 0xf90017a2
.word 0xb50000d9

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400019
.word 0x1400000a

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2936]
bl _p_71
.word 0xf90023a0
.word 0xaa1903e1
bl _p_313
.word 0xf94023a0
.word 0xf9400819
.word 0xf9001bb9
.loc 44 62 0
.word 0xf94017a0
.word 0xb50000c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400019
.word 0x1400000a

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2936]
bl _p_71
.word 0xf90023a0
.word 0xf94017a1
bl _p_313
.word 0xf94023a0
.word 0xf9400819
.word 0xaa1903fa
.loc 44 63 0
.word 0xf94013a0
.word 0xf9401ba1
.word 0xaa1903e2
bl _p_314
.loc 44 64 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_2a1:
.text
	.align 4
	.no_dead_strip UIKit_UIApplication_Main_string___intptr_intptr
UIKit_UIApplication_Main_string___intptr_intptr:
.loc 44 78 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
bl _p_165
.loc 44 79 0
.word 0xf9400ba1
.word 0xb9801820
.word 0xf9400fa2
.word 0xf94013a3
bl _p_315
.word 0x93407c00
.loc 44 80 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2a2:
.text
	.align 4
	.no_dead_strip UIKit_UIApplication_EnsureUIThread
UIKit_UIApplication_EnsureUIThread:
.loc 44 87 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2944]
.word 0x39400000
.word 0x34000200

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2920]
.word 0xf9400000
.word 0xb4000160

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2920]
.word 0xf9400000
.word 0xf9000ba0
bl _p_312
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xeb01001f
.word 0x54000081
.loc 44 89 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 44 88 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2952]
.word 0xd2801101
bl _p_7
.word 0xf9000ba0
bl _p_316
.word 0xf9400ba0
bl _p_38

Lme_2a3:
.text
	.align 4
	.no_dead_strip UIKit_UIApplication_get_ClassHandle
UIKit_UIApplication_get_ClassHandle:
.file 45 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIApplication.g.cs"
.loc 45 53 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2960]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2a4:
.text
	.align 4
	.no_dead_strip UIKit_UIApplication__ctor_intptr
UIKit_UIApplication__ctor_intptr:
.loc 45 75 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_317
.loc 45 77 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2a5:
.text
	.align 4
	.no_dead_strip UIKit_UIApplication_Dispose_bool
UIKit_UIApplication_Dispose_bool:
.loc 45 1859 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x394063a1
bl _p_299
.loc 45 1860 0
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x6b1f001f
.loc 45 1863 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2a6:
.text
	.align 4
	.no_dead_strip UIKit_UIApplication__cctor
UIKit_UIApplication__cctor:
.loc 44 37 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2944]
.word 0xd280003e
.word 0x3900001e
.loc 45 38 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2968]
.word 0xd280003e
.word 0x3900001e
.loc 45 51 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2976]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2960]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2a7:
.text
	.align 4
	.no_dead_strip UIKit_UIButton_get_ClassHandle
UIKit_UIButton_get_ClassHandle:
.file 46 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIButton.g.cs"
.loc 46 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2984]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2a8:
.text
	.align 4
	.no_dead_strip UIKit_UIButton__ctor_intptr
UIKit_UIButton__ctor_intptr:
.loc 46 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_318
.loc 46 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2a9:
.text
	.align 4
	.no_dead_strip UIKit_UIButton__cctor
UIKit_UIButton__cctor:
.loc 46 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2992]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2984]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2aa:
.text
	.align 4
	.no_dead_strip UIKit_UIControlEventProxy_Activated
UIKit_UIControlEventProxy_Activated:
.file 47 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIControl.cs"
.loc 47 37 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xd2800019
.word 0x1400000d
.loc 47 38 0
.word 0xf9401743
.word 0xf9401b41

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3000]
.word 0xf9400002
.word 0xaa0303e0
.word 0xf90013a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94013a0
.loc 47 37 0
.word 0x11000739
.word 0xb9803b40
.word 0x6b00033f
.word 0x54fffe4b
.loc 47 39 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2ab:
.text
	.align 4
	.no_dead_strip UIKit_UIControlEventProxy_Dispose_bool
UIKit_UIControlEventProxy_Dispose_bool:
.loc 47 43 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf900141f
.loc 47 44 0
.word 0xf900181f
.loc 47 45 0
.word 0x394063a1
bl _p_299
.loc 47 46 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2ac:
.text
	.align 4
	.no_dead_strip UIKit_UIControl_get_ClassHandle
UIKit_UIControl_get_ClassHandle:
.file 48 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIControl.g.cs"
.loc 48 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3008]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2ad:
.text
	.align 4
	.no_dead_strip UIKit_UIControl__ctor_intptr
UIKit_UIControl__ctor_intptr:
.loc 48 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_319
.loc 48 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2ae:
.text
	.align 4
	.no_dead_strip UIKit_UIControl__cctor
UIKit_UIControl__cctor:
.loc 48 51 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3016]
bl _p_71
.word 0xf9000ba0
bl _p_320
.word 0xf9400ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3024]
.word 0xf9000001
.loc 48 50 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3032]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3008]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2af:
.text
	.align 4
	.no_dead_strip UIKit_UIGraphics_GetImageFromCurrentImageContext
UIKit_UIGraphics_GetImageFromCurrentImageContext:
.file 49 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIGraphics.cs"
.loc 49 134 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fbf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_71
.word 0xf9002ba0
bl _p_72
.word 0xf9402ba0
.word 0xf9000fa0
.loc 49 135 0
bl _p_321
.loc 49 136 0
bl _p_174
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3040]
.word 0xeb01001f
.word 0x10000011
.word 0x54000381
.word 0xf90013ba
.word 0xf90017bf
.word 0x94000005
.word 0xf94017a0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90023be
.word 0xf9400fa0
.word 0xb4000160
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.loc 49 138 0
.word 0xf94013a0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_2b4:
.text
	.align 4
	.no_dead_strip UIKit_UIGraphics_GetCurrentContext
UIKit_UIGraphics_GetCurrentContext:
.loc 49 142 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
bl _p_322
.word 0xaa0003fa
.loc 49 144 0
.word 0xaa1a03e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 49 145 0
.word 0xd2800000
.word 0x14000009
.loc 49 147 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3048]
bl _p_71
.word 0xf90013a0
.word 0xaa1a03e1
bl _p_323
.word 0xf94013a0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2b5:
.text
	.align 4
	.no_dead_strip UIKit_UIImage_get_ClassHandle
UIKit_UIImage_get_ClassHandle:
.file 50 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIImage.g.cs"
.loc 50 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3056]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2b6:
.text
	.align 4
	.no_dead_strip UIKit_UIImage__ctor_intptr
UIKit_UIImage__ctor_intptr:
.loc 50 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 50 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2b7:
.text
	.align 4
	.no_dead_strip UIKit_UIImage__cctor
UIKit_UIImage__cctor:
.loc 50 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3064]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3056]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2b8:
.text
	.align 4
	.no_dead_strip UIKit_UIKitSynchronizationContext_CreateCopy
UIKit_UIKitSynchronizationContext_CreateCopy:
.file 51 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIKitSynchronizationContext.cs"
.loc 51 19 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2928]
.word 0xd2800281
bl _p_7
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2b9:
.text
	.align 4
	.no_dead_strip UIKit_UIKitSynchronizationContext_Post_System_Threading_SendOrPostCallback_object
UIKit_UIKitSynchronizationContext_Post_System_Threading_SendOrPostCallback_object:
.loc 51 24 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
bl _p_324
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0x3940007e
bl _p_325
.loc 51 25 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2ba:
.text
	.align 4
	.no_dead_strip UIKit_UIKitSynchronizationContext_Send_System_Threading_SendOrPostCallback_object
UIKit_UIKitSynchronizationContext_Send_System_Threading_SendOrPostCallback_object:
.loc 51 29 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
bl _p_324
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0x3940007e
bl _p_326
.loc 51 30 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2bb:
.text
	.align 4
	.no_dead_strip UIKit_UIKitSynchronizationContext__ctor
UIKit_UIKitSynchronizationContext__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2bc:
.text
	.align 4
	.no_dead_strip UIKit_UIStoryboardSegue_get_ClassHandle
UIKit_UIStoryboardSegue_get_ClassHandle:
.file 52 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIStoryboardSegue.g.cs"
.loc 52 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3072]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2bd:
.text
	.align 4
	.no_dead_strip UIKit_UIStoryboardSegue__ctor_intptr
UIKit_UIStoryboardSegue__ctor_intptr:
.loc 52 62 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 52 64 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2be:
.text
	.align 4
	.no_dead_strip UIKit_UIStoryboardSegue_get_DestinationViewController
UIKit_UIStoryboardSegue_get_DestinationViewController:
.loc 52 133 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 52 136 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_20@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_20@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3080]
bl _p_328
.loc 52 140 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2bf:
.text
	.align 4
	.no_dead_strip UIKit_UIStoryboardSegue_get_Identifier
UIKit_UIStoryboardSegue_get_Identifier:
.loc 52 149 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 52 151 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_21@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_21@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2c0:
.text
	.align 4
	.no_dead_strip UIKit_UIStoryboardSegue__cctor
UIKit_UIStoryboardSegue__cctor:
.loc 52 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3088]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3072]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2c1:
.text
	.align 4
	.no_dead_strip UIKit_UITextField_get_ClassHandle
UIKit_UITextField_get_ClassHandle:
.file 53 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UITextField.g.cs"
.loc 53 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3096]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2c2:
.text
	.align 4
	.no_dead_strip UIKit_UITextField__ctor_intptr
UIKit_UITextField__ctor_intptr:
.loc 53 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_318
.loc 53 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2c3:
.text
	.align 4
	.no_dead_strip UIKit_UITextField_get_Text
UIKit_UITextField_get_Text:
.loc 53 2321 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 53 2323 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_22@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_22@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2c4:
.text
	.align 4
	.no_dead_strip UIKit_UITextField_Dispose_bool
UIKit_UITextField_Dispose_bool:
.loc 53 2884 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x394063a1
bl _p_299
.loc 53 2885 0
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x6b1f001f
.loc 53 2892 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2c5:
.text
	.align 4
	.no_dead_strip UIKit_UITextField__cctor
UIKit_UITextField__cctor:
.loc 53 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3104]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3096]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2c6:
.text
	.align 4
	.no_dead_strip UIKit_UITextView_get_ClassHandle
UIKit_UITextView_get_ClassHandle:
.file 54 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UITextView.g.cs"
.loc 54 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3112]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2c7:
.text
	.align 4
	.no_dead_strip UIKit_UITextView__ctor_intptr
UIKit_UITextView__ctor_intptr:
.loc 54 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_330
.loc 54 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2c8:
.text
	.align 4
	.no_dead_strip UIKit_UITextView_Dispose_bool
UIKit_UITextView_Dispose_bool:
.loc 54 2712 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x394063a1
bl _p_299
.loc 54 2713 0
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x6b1f001f
.loc 54 2720 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2c9:
.text
	.align 4
	.no_dead_strip UIKit_UITextView__cctor
UIKit_UITextView__cctor:
.loc 54 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3120]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3112]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2ca:
.text
	.align 4
	.no_dead_strip UIKit_UIView_GetEnumerator
UIKit_UIView_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3128]
.word 0xd2800601
bl _p_7
.word 0xb900281f
.word 0xf9400ba1
.word 0xf9000c01
.word 0x91006002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2cb:
.text
	.align 4
	.no_dead_strip UIKit_UIView_get_ClassHandle
UIKit_UIView_get_ClassHandle:
.file 55 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIView.g.cs"
.loc 55 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3136]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2cc:
.text
	.align 4
	.no_dead_strip UIKit_UIView__ctor_Foundation_NSCoder
UIKit_UIView__ctor_Foundation_NSCoder:
.loc 55 70 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xaa1903e0
bl _p_331
.loc 55 73 0
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340001e0
.loc 55 74 0
.word 0xf9400b20
adrp x1, L_OBJC_SELECTOR_REFERENCES_23@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_23@PAGEOFF
ldr x1, [x1]
.word 0x3940035e
.word 0xf9400b42
bl _p_332
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3144]
.word 0xaa1903e0
bl _p_253
.loc 55 75 0
.word 0x1400000f
.loc 55 76 0
.word 0xaa1903e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_23@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_23@PAGEOFF
ldr x1, [x1]
.word 0x3940035e
.word 0xf9400b42
bl _p_334
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3144]
.word 0xaa1903e0
bl _p_253
.loc 55 78 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2cd:
.text
	.align 4
	.no_dead_strip UIKit_UIView__ctor_intptr
UIKit_UIView__ctor_intptr:
.loc 55 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_317
.loc 55 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2ce:
.text
	.align 4
	.no_dead_strip UIKit_UIView__ctor_CoreGraphics_CGRect
UIKit_UIView__ctor_CoreGraphics_CGRect:
.loc 55 96 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xfd000fa0
.word 0xfd0013a1
.word 0xfd0017a2
.word 0xfd001ba3

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xaa1a03e0
bl _p_331
.loc 55 98 0
bl _p_327
.loc 55 99 0
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000220
.loc 55 100 0
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_24@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_24@PAGEOFF
ldr x1, [x1]
.word 0xfd400fa0
.word 0xfd4013a1
.word 0xfd4017a2
.word 0xfd401ba3
bl _p_335
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3152]
.word 0xaa1a03e0
bl _p_253
.loc 55 101 0
.word 0x14000011
.loc 55 102 0
.word 0xaa1a03e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_24@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_24@PAGEOFF
ldr x1, [x1]
.word 0xfd400fa0
.word 0xfd4013a1
.word 0xfd4017a2
.word 0xfd401ba3
bl _p_336
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3152]
.word 0xaa1a03e0
bl _p_253
.loc 55 104 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_2cf:
.text
	.align 4
	.no_dead_strip UIKit_UIView_ConvertPointFromCoordinateSpace_CoreGraphics_CGPoint_UIKit_IUICoordinateSpace
UIKit_UIView_ConvertPointFromCoordinateSpace_CoreGraphics_CGPoint_UIKit_IUICoordinateSpace:
.loc 55 578 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9002fa0
.word 0xfd0033a0
.word 0xfd0037a1
.word 0xaa0103fa
.word 0xd2800000
.word 0xf90053a0
.word 0xf90057a0
bl _p_327
.loc 55 579 0
.word 0xb400095a
.loc 55 582 0
.word 0xf9402fa0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340003a0
.loc 55 585 0
.word 0xf9402fa0
.word 0xf9400800
.word 0xf90063a0
adrp x0, L_OBJC_SELECTOR_REFERENCES_25@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_25@PAGEOFF
ldr x0, [x0]
.word 0xf90067a0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
.word 0x910283a3
.word 0xf9005ba3
.word 0xfd4033a0
.word 0xfd4037a1
bl _p_337
.word 0xf9405bbe
.word 0xfd0003c0
.word 0xfd0007c1
.loc 55 586 0
.word 0x1400001c
.loc 55 597 0
.word 0xf9402fa0
bl _p_333
.word 0xf90063a0
adrp x0, L_OBJC_SELECTOR_REFERENCES_25@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_25@PAGEOFF
ldr x0, [x0]
.word 0xf90067a0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
.word 0x910283a3
.word 0xf9005ba3
.word 0xfd4033a0
.word 0xfd4037a1
bl _p_338
.word 0xf9405bbe
.word 0xfd0003c0
.word 0xfd0007c1
.loc 55 607 0
.word 0xf94053a0
.word 0xf9000fa0
.word 0xf94057a0
.word 0xf90013a0
.word 0xf9400bba
.word 0xfd400fa0
.word 0xfd4013a1
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.loc 55 580 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28518e1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_2d0:
.text
	.align 4
	.no_dead_strip UIKit_UIView_ConvertPointToCoordinateSpace_CoreGraphics_CGPoint_UIKit_IUICoordinateSpace
UIKit_UIView_ConvertPointToCoordinateSpace_CoreGraphics_CGPoint_UIKit_IUICoordinateSpace:
.loc 55 649 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9002fa0
.word 0xfd0033a0
.word 0xfd0037a1
.word 0xaa0103fa
.word 0xd2800000
.word 0xf90053a0
.word 0xf90057a0
bl _p_327
.loc 55 650 0
.word 0xb400095a
.loc 55 653 0
.word 0xf9402fa0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340003a0
.loc 55 656 0
.word 0xf9402fa0
.word 0xf9400800
.word 0xf90063a0
adrp x0, L_OBJC_SELECTOR_REFERENCES_26@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_26@PAGEOFF
ldr x0, [x0]
.word 0xf90067a0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
.word 0x910283a3
.word 0xf9005ba3
.word 0xfd4033a0
.word 0xfd4037a1
bl _p_337
.word 0xf9405bbe
.word 0xfd0003c0
.word 0xfd0007c1
.loc 55 657 0
.word 0x1400001c
.loc 55 668 0
.word 0xf9402fa0
bl _p_333
.word 0xf90063a0
adrp x0, L_OBJC_SELECTOR_REFERENCES_26@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_26@PAGEOFF
ldr x0, [x0]
.word 0xf90067a0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
.word 0x910283a3
.word 0xf9005ba3
.word 0xfd4033a0
.word 0xfd4037a1
bl _p_338
.word 0xf9405bbe
.word 0xfd0003c0
.word 0xfd0007c1
.loc 55 678 0
.word 0xf94053a0
.word 0xf9000fa0
.word 0xf94057a0
.word 0xf90013a0
.word 0xf9400bba
.word 0xfd400fa0
.word 0xfd4013a1
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.loc 55 651 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28518e1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_2d1:
.text
	.align 4
	.no_dead_strip UIKit_UIView_ConvertRectFromCoordinateSpace_CoreGraphics_CGRect_UIKit_IUICoordinateSpace
UIKit_UIView_ConvertRectFromCoordinateSpace_CoreGraphics_CGRect_UIKit_IUICoordinateSpace:
.loc 55 720 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9002fa0
.word 0xfd0033a0
.word 0xfd0037a1
.word 0xfd003ba2
.word 0xfd003fa3
.word 0xaa0103fa
.word 0xd2800000
.word 0xf90053a0
.word 0xf90057a0
.word 0xf9005ba0
.word 0xf9005fa0
bl _p_327
.loc 55 721 0
.word 0xb4000b1a
.loc 55 724 0
.word 0xf9402fa0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000420
.loc 55 727 0
.word 0xf9402fa0
.word 0xf9400800
.word 0xf9006ba0
adrp x0, L_OBJC_SELECTOR_REFERENCES_27@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_27@PAGEOFF
ldr x0, [x0]
.word 0xf9006fa0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9406ba0
.word 0xf9406fa1
.word 0x910283a3
.word 0xf90063a3
.word 0xfd4033a0
.word 0xfd4037a1
.word 0xfd403ba2
.word 0xfd403fa3
bl _p_339
.word 0xf94063be
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 55 728 0
.word 0x14000020
.loc 55 739 0
.word 0xf9402fa0
bl _p_333
.word 0xf9006ba0
adrp x0, L_OBJC_SELECTOR_REFERENCES_27@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_27@PAGEOFF
ldr x0, [x0]
.word 0xf9006fa0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9406ba0
.word 0xf9406fa1
.word 0x910283a3
.word 0xf90063a3
.word 0xfd4033a0
.word 0xfd4037a1
.word 0xfd403ba2
.word 0xfd403fa3
bl _p_340
.word 0xf94063be
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 55 749 0
.word 0xf94053a0
.word 0xf9000fa0
.word 0xf94057a0
.word 0xf90013a0
.word 0xf9405ba0
.word 0xf90017a0
.word 0xf9405fa0
.word 0xf9001ba0
.word 0xf9400bba
.word 0xfd400fa0
.word 0xfd4013a1
.word 0xfd4017a2
.word 0xfd401ba3
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.loc 55 722 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28518e1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_2d2:
.text
	.align 4
	.no_dead_strip UIKit_UIView_ConvertRectToCoordinateSpace_CoreGraphics_CGRect_UIKit_IUICoordinateSpace
UIKit_UIView_ConvertRectToCoordinateSpace_CoreGraphics_CGRect_UIKit_IUICoordinateSpace:
.loc 55 791 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9002fa0
.word 0xfd0033a0
.word 0xfd0037a1
.word 0xfd003ba2
.word 0xfd003fa3
.word 0xaa0103fa
.word 0xd2800000
.word 0xf90053a0
.word 0xf90057a0
.word 0xf9005ba0
.word 0xf9005fa0
bl _p_327
.loc 55 792 0
.word 0xb4000b1a
.loc 55 795 0
.word 0xf9402fa0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000420
.loc 55 798 0
.word 0xf9402fa0
.word 0xf9400800
.word 0xf9006ba0
adrp x0, L_OBJC_SELECTOR_REFERENCES_28@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_28@PAGEOFF
ldr x0, [x0]
.word 0xf9006fa0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9406ba0
.word 0xf9406fa1
.word 0x910283a3
.word 0xf90063a3
.word 0xfd4033a0
.word 0xfd4037a1
.word 0xfd403ba2
.word 0xfd403fa3
bl _p_339
.word 0xf94063be
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 55 799 0
.word 0x14000020
.loc 55 810 0
.word 0xf9402fa0
bl _p_333
.word 0xf9006ba0
adrp x0, L_OBJC_SELECTOR_REFERENCES_28@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_28@PAGEOFF
ldr x0, [x0]
.word 0xf9006fa0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9406ba0
.word 0xf9406fa1
.word 0x910283a3
.word 0xf90063a3
.word 0xfd4033a0
.word 0xfd4037a1
.word 0xfd403ba2
.word 0xfd403fa3
bl _p_340
.word 0xf94063be
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 55 820 0
.word 0xf94053a0
.word 0xf9000fa0
.word 0xf94057a0
.word 0xf90013a0
.word 0xf9405ba0
.word 0xf90017a0
.word 0xf9405fa0
.word 0xf9001ba0
.word 0xf9400bba
.word 0xfd400fa0
.word 0xfd4013a1
.word 0xfd4017a2
.word 0xfd401ba3
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.loc 55 793 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28518e1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_2d3:
.text
	.align 4
	.no_dead_strip UIKit_UIView_LayoutSubviews
UIKit_UIView_LayoutSubviews:
.loc 55 1283 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 55 1284 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 55 1285 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_29@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_29@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 55 1286 0
.word 0x14000007
.loc 55 1287 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_29@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_29@PAGEOFF
ldr x1, [x1]
bl _p_341
.loc 55 1289 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2d4:
.text
	.align 4
	.no_dead_strip UIKit_UIView_WillMoveToWindow_UIKit_UIWindow
UIKit_UIView_WillMoveToWindow_UIKit_UIWindow:
.loc 55 2138 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
bl _p_327
.loc 55 2139 0
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000280
.loc 55 2140 0
.word 0xf9400b21
adrp x0, L_OBJC_SELECTOR_REFERENCES_30@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_30@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xaa0003f8
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1a03e2
bl _p_261
.loc 55 2141 0
.word 0x14000015
.loc 55 2142 0
.word 0xaa1903e0
bl _p_333
.word 0xaa0003e1
adrp x0, L_OBJC_SELECTOR_REFERENCES_30@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_30@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xaa0003f8
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1a03e2
bl _p_342
.loc 55 2144 0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2d5:
.text
	.align 4
	.no_dead_strip UIKit_UIView_get_Bounds
UIKit_UIView_get_Bounds:
.loc 55 2850 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9002ba0
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9402ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340001e0
.loc 55 2853 0
.word 0xf9402ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_13@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_13@PAGEOFF
ldr x1, [x1]
.word 0x910163a2
.word 0xf9003fa2
bl _p_295
.word 0xf9403fbe
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 55 2854 0
.word 0x1400000e
.loc 55 2865 0
.word 0xf9402ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_13@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_13@PAGEOFF
ldr x1, [x1]
.word 0x910163a2
.word 0xf9003fa2
bl _p_343
.word 0xf9403fbe
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 55 2875 0
.word 0xf9402fa0
.word 0xf9000ba0
.word 0xf94033a0
.word 0xf9000fa0
.word 0xf94037a0
.word 0xf90013a0
.word 0xf9403ba0
.word 0xf90017a0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0xfd4013a2
.word 0xfd4017a3
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_2d6:
.text
	.align 4
	.no_dead_strip UIKit_UIView_get_Center
UIKit_UIView_get_Center:
.loc 55 2908 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9002ba0
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
bl _p_327
.loc 55 2910 0
.word 0xf9402ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340001a0
.loc 55 2913 0
.word 0xf9402ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_31@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_31@PAGEOFF
ldr x1, [x1]
.word 0x910163a2
.word 0xf90037a2
bl _p_344
.word 0xf94037be
.word 0xfd0003c0
.word 0xfd0007c1
.loc 55 2914 0
.word 0x1400000c
.loc 55 2925 0
.word 0xf9402ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_31@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_31@PAGEOFF
ldr x1, [x1]
.word 0x910163a2
.word 0xf90037a2
bl _p_345
.word 0xf94037be
.word 0xfd0003c0
.word 0xfd0007c1
.loc 55 2935 0
.word 0xf9402fa0
.word 0xf9000ba0
.word 0xf94033a0
.word 0xf9000fa0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_2d7:
.text
	.align 4
	.no_dead_strip UIKit_UIView_set_Center_CoreGraphics_CGPoint
UIKit_UIView_set_Center_CoreGraphics_CGPoint:
.loc 55 2940 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd0013a1
bl _p_327
.loc 55 2941 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000140
.loc 55 2942 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_32@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_32@PAGEOFF
ldr x1, [x1]
.word 0xfd400fa0
.word 0xfd4013a1
bl _p_346
.loc 55 2943 0
.word 0x14000009
.loc 55 2944 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_32@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_32@PAGEOFF
ldr x1, [x1]
.word 0xfd400fa0
.word 0xfd4013a1
bl _p_347
.loc 55 2946 0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_2d8:
.text
	.align 4
	.no_dead_strip UIKit_UIView_get_ContentScaleFactor
UIKit_UIView_get_ContentScaleFactor:
.loc 55 3138 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 55 3139 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 55 3140 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_33@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_33@PAGEOFF
ldr x1, [x1]
bl _p_348
.word 0x14000007
.loc 55 3142 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_33@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_33@PAGEOFF
ldr x1, [x1]
bl _p_349
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2d9:
.text
	.align 4
	.no_dead_strip UIKit_UIView_get_Focused
UIKit_UIView_get_Focused:
.loc 55 3376 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 55 3377 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 55 3378 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_34@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_34@PAGEOFF
ldr x1, [x1]
bl _p_350
.word 0x53001c00
.word 0x14000008
.loc 55 3380 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_34@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_34@PAGEOFF
ldr x1, [x1]
bl _p_351
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2da:
.text
	.align 4
	.no_dead_strip UIKit_UIView_get_Hidden
UIKit_UIView_get_Hidden:
.loc 55 3499 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 55 3500 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 55 3501 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_35@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_35@PAGEOFF
ldr x1, [x1]
bl _p_350
.word 0x53001c00
.word 0x14000008
.loc 55 3503 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_35@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_35@PAGEOFF
ldr x1, [x1]
bl _p_351
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2db:
.text
	.align 4
	.no_dead_strip UIKit_UIView_set_Hidden_bool
UIKit_UIView_set_Hidden_bool:
.loc 55 3509 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
bl _p_327
.loc 55 3510 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 55 3511 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_36@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_36@PAGEOFF
ldr x1, [x1]
.word 0x394063a2
bl _p_305
.loc 55 3512 0
.word 0x14000008
.loc 55 3513 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_36@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_36@PAGEOFF
ldr x1, [x1]
.word 0x394063a2
bl _p_352
.loc 55 3515 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2dc:
.text
	.align 4
	.no_dead_strip UIKit_UIView_get_Layer
UIKit_UIView_get_Layer:
.loc 55 3684 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000180
.loc 55 3685 0
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_37@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_37@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3160]
bl _p_353
.word 0xaa0003fa
.loc 55 3686 0
.word 0x1400000c
.loc 55 3687 0
.word 0xaa1a03e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_37@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_37@PAGEOFF
ldr x1, [x1]
bl _p_354

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3160]
bl _p_353
.word 0xaa0003fa
.loc 55 3689 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2dd:
.text
	.align 4
	.no_dead_strip UIKit_UIView_get_Subviews
UIKit_UIView_get_Subviews:
.loc 55 4216 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
bl _p_327
.loc 55 4218 0
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000180
.loc 55 4219 0
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_38@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_38@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3168]
bl _p_355
.word 0xaa0003fa
.loc 55 4220 0
.word 0x1400000c
.loc 55 4221 0
.word 0xaa1a03e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_38@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_38@PAGEOFF
ldr x1, [x1]
bl _p_354

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3168]
bl _p_355
.word 0xaa0003fa
.loc 55 4223 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2de:
.text
	.align 4
	.no_dead_strip UIKit_UIView_get_Transform
UIKit_UIView_get_Transform:
.loc 55 4397 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf9000fa0
.word 0xd2800000
.word 0xf90013a0
.word 0xf90017a0
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
bl _p_327
.loc 55 4399 0
.word 0xf9400fa0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 55 4402 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_39@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_39@PAGEOFF
ldr x1, [x1]
.word 0x910083a8
bl _p_356
.loc 55 4403 0
.word 0x14000008
.loc 55 4414 0
.word 0xf9400fa0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_39@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_39@PAGEOFF
ldr x1, [x1]
.word 0x910083a8
bl _p_357
.loc 55 4424 0
.word 0xf9400ba0
.word 0xf94013a1
.word 0xf9000001
.word 0xf94017a1
.word 0xf9000401
.word 0xf9401ba1
.word 0xf9000801
.word 0xf9401fa1
.word 0xf9000c01
.word 0xf94023a1
.word 0xf9001001
.word 0xf94027a1
.word 0xf9001401
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_2df:
.text
	.align 4
	.no_dead_strip UIKit_UIView_set_Transform_CoreGraphics_CGAffineTransform
UIKit_UIView_set_Transform_CoreGraphics_CGAffineTransform:
.loc 55 4429 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
bl _p_327
.loc 55 4430 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340002c0
.loc 55 4431 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_40@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_40@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa3
.word 0x910143a2
.word 0xf9400064
.word 0xf9002ba4
.word 0xf9400464
.word 0xf9002fa4
.word 0xf9400864
.word 0xf90033a4
.word 0xf9400c64
.word 0xf90037a4
.word 0xf9401064
.word 0xf9003ba4
.word 0xf9401463
.word 0xf9003fa3
bl _p_358
.loc 55 4432 0
.word 0x14000015
.loc 55 4433 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_40@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_40@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa3
.word 0x910083a2
.word 0xf9400064
.word 0xf90013a4
.word 0xf9400464
.word 0xf90017a4
.word 0xf9400864
.word 0xf9001ba4
.word 0xf9400c64
.word 0xf9001fa4
.word 0xf9401064
.word 0xf90023a4
.word 0xf9401463
.word 0xf90027a3
bl _p_359
.loc 55 4435 0
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_2e0:
.text
	.align 4
	.no_dead_strip UIKit_UIView_get_Window
UIKit_UIView_get_Window:
.loc 55 4585 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 55 4586 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000180
.loc 55 4587 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_41@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_41@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3176]
bl _p_360
.word 0x1400000b
.loc 55 4589 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_41@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_41@PAGEOFF
ldr x1, [x1]
bl _p_354

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3176]
bl _p_360
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2e1:
.text
	.align 4
	.no_dead_strip UIKit_UIView_Dispose_bool
UIKit_UIView_Dispose_bool:
.loc 55 5225 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x394063a1
bl _p_299
.loc 55 5226 0
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x6b1f001f
.loc 55 5230 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2e2:
.text
	.align 4
	.no_dead_strip UIKit_UIView__cctor
UIKit_UIView__cctor:
.loc 55 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3184]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3136]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2e3:
.text
	.align 4
	.no_dead_strip UIKit_UIView__GetEnumeratord__2__ctor_int
UIKit_UIView__GetEnumeratord__2__ctor_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9002801
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2e4:
.text
	.align 4
	.no_dead_strip UIKit_UIView__GetEnumeratord__2_System_IDisposable_Dispose
UIKit_UIView__GetEnumeratord__2_System_IDisposable_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2e5:
.text
	.align 4
	.no_dead_strip UIKit_UIView__GetEnumeratord__2_MoveNext
UIKit_UIView__GetEnumeratord__2_MoveNext:
.file 56 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIView.cs"
.loc 56 0 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xb9802b59
.word 0xf9400f58
.word 0x340000d9
.word 0xd2800020
.word 0x6b00033f
.word 0x54000700
.word 0xd2800000
.word 0x14000043
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9002b5e
.loc 56 39 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9410c30
.word 0xd63f0200
.word 0xaa0003f9
.loc 56 40 0
.word 0xaa1903e0
.word 0xb5000060
.loc 56 41 0
.word 0xd2800000
.word 0x14000037
.loc 56 42 0
.word 0xf9001359
.word 0x91008340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xb9002f5f
.word 0x14000022
.word 0xf9401340
.word 0xb9802f41
.word 0x93407c21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540004e9
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0xf9400019
.loc 56 43 0
.word 0xf9000b59
.word 0x91004340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xd280003e
.word 0xb9002b5e
.word 0xd2800020
.word 0x1400000e
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9002b5e
.word 0xb9802f40
.word 0x11000400
.word 0xb9002f40
.loc 56 42 0
.word 0xb9802f40
.word 0xf9401341
.word 0xb9801821
.word 0x6b01001f
.word 0x54fffb6b
.word 0xf900135f
.loc 56 44 0
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_2e6:
.text
	.align 4
	.no_dead_strip UIKit_UIView__GetEnumeratord__2_System_Collections_Generic_IEnumerator_System_Object_get_Current
UIKit_UIView__GetEnumeratord__2_System_Collections_Generic_IEnumerator_System_Object_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2e7:
.text
	.align 4
	.no_dead_strip UIKit_UIView__GetEnumeratord__2_System_Collections_IEnumerator_Reset
UIKit_UIView__GetEnumeratord__2_System_Collections_IEnumerator_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2e8:
.text
	.align 4
	.no_dead_strip UIKit_UIView__GetEnumeratord__2_System_Collections_IEnumerator_get_Current
UIKit_UIView__GetEnumeratord__2_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2e9:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_GetEnumerator
UIKit_UIViewController_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3192]
.word 0xd2800601
bl _p_7
.word 0xb900281f
.word 0xf9400ba1
.word 0xf9000c01
.word 0x91006002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2ea:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_get_ClassHandle
UIKit_UIViewController_get_ClassHandle:
.file 57 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIViewController.g.cs"
.loc 57 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3200]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2eb:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController__ctor_intptr
UIKit_UIViewController__ctor_intptr:
.loc 57 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_317
.loc 57 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2ec:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_DidReceiveMemoryWarning
UIKit_UIViewController_DidReceiveMemoryWarning:
.loc 57 293 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 57 294 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 57 295 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_42@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_42@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 57 296 0
.word 0x14000007
.loc 57 297 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_42@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_42@PAGEOFF
ldr x1, [x1]
bl _p_341
.loc 57 299 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2ed:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_DismissViewController_bool_System_Action
UIKit_UIViewController_DismissViewController_bool_System_Action:
.loc 57 374 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
bl _p_327
.loc 57 377 0
.word 0xf94017a0
.word 0xb5000080
.loc 57 378 0
.word 0xd2800000
.word 0x2a0003f7
.loc 57 379 0
.word 0x14000014
.loc 57 380 0
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.loc 57 381 0
.word 0x9100c3b7
.loc 57 382 0
.word 0x9100c3a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2328]
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #3208]
.word 0xf94017a2
.word 0xd2800003
bl _p_196
.loc 57 385 0
.word 0xf9400fa0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000140
.loc 57 386 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_43@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_43@PAGEOFF
ldr x1, [x1]
.word 0x394083a2
.word 0xaa1703e3
bl _p_361
.loc 57 387 0
.word 0x14000009
.loc 57 388 0
.word 0xf9400fa0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_43@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_43@PAGEOFF
ldr x1, [x1]
.word 0x394083a2
.word 0xaa1703e3
bl _p_362
.loc 57 390 0
.word 0xd2800000
.word 0x2a0003e0
.word 0xeb0002ff
.word 0x54000060
.loc 57 391 0
.word 0xaa1703e0
bl _p_198
.loc 57 393 0
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_2ee:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_LoadView
UIKit_UIViewController_LoadView:
.loc 57 615 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 57 616 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 57 617 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_44@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_44@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 57 618 0
.word 0x14000007
.loc 57 619 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_44@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_44@PAGEOFF
ldr x1, [x1]
bl _p_341
.loc 57 621 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2ef:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_PerformSegue_string_Foundation_NSObject
UIKit_UIViewController_PerformSegue_string_Foundation_NSObject:
.loc 57 640 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
bl _p_327
.loc 57 641 0
.word 0xb40007d9
.loc 57 643 0
.word 0xaa1903e0
bl _p_363
.word 0xaa0003f9
.loc 57 645 0
.word 0x39408300
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340002c0
.loc 57 646 0
.word 0xf9400b01
adrp x0, L_OBJC_SELECTOR_REFERENCES_45@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_45@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f8
.word 0xaa0003f7
.word 0xaa1903f6
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xaa1a03e3
bl _p_301
.loc 57 647 0
.word 0x14000017
.loc 57 648 0
.word 0xaa1803e0
bl _p_333
.word 0xaa0003e1
adrp x0, L_OBJC_SELECTOR_REFERENCES_45@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_45@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f8
.word 0xaa0003f7
.word 0xaa1903f6
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xaa1a03e3
bl _p_364
.loc 57 650 0
.word 0xaa1903e0
bl _p_365
.loc 57 652 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 57 642 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2850321
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_2f0:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_PrepareForSegue_UIKit_UIStoryboardSegue_Foundation_NSObject
UIKit_UIViewController_PrepareForSegue_UIKit_UIStoryboardSegue_Foundation_NSObject:
.loc 57 736 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
bl _p_327
.loc 57 737 0
.word 0xb4000799
.loc 57 739 0
.word 0x39408300
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000300
.loc 57 740 0
.word 0xf9400b02
adrp x1, L_OBJC_SELECTOR_REFERENCES_46@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_46@PAGEOFF
ldr x1, [x1]
.word 0x3940033e
.word 0xf9400b20
.word 0xaa0203f9
.word 0xaa0103f8
.word 0xaa0003f7
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1703e2
.word 0xaa1a03e3
bl _p_301
.loc 57 741 0
.word 0x14000019
.loc 57 742 0
.word 0xaa1803e0
bl _p_333
.word 0xaa0003e2
adrp x1, L_OBJC_SELECTOR_REFERENCES_46@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_46@PAGEOFF
ldr x1, [x1]
.word 0x3940033e
.word 0xf9400b20
.word 0xaa0203f9
.word 0xaa0103f8
.word 0xaa0003f7
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1703e2
.word 0xaa1a03e3
bl _p_364
.loc 57 744 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 57 738 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2858021
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_2f1:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_PresentViewController_UIKit_UIViewController_bool_System_Action
UIKit_UIViewController_PresentViewController_UIKit_UIViewController_bool_System_Action:
.loc 57 783 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xf9000fb8
.word 0xf90013a0
.word 0xaa0103f8
.word 0xf90017a2
.word 0xf9001ba3
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
bl _p_327
.loc 57 784 0
.word 0xb4000838
.loc 57 788 0
.word 0xf9401ba0
.word 0xb5000080
.loc 57 789 0
.word 0xd2800000
.word 0x2a0003f6
.loc 57 790 0
.word 0x14000014
.loc 57 791 0
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.loc 57 792 0
.word 0x9100e3b6
.loc 57 793 0
.word 0x9100e3a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2328]
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #3208]
.word 0xf9401ba2
.word 0xd2800003
bl _p_196
.loc 57 796 0
.word 0xf94013a0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000180
.loc 57 797 0
.word 0xf94013a0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_47@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_47@PAGEOFF
ldr x1, [x1]
.word 0x3940031e
.word 0xf9400b02
.word 0x3940a3a3
.word 0xaa1603e4
bl _p_366
.loc 57 798 0
.word 0x1400000b
.loc 57 799 0
.word 0xf94013a0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_47@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_47@PAGEOFF
ldr x1, [x1]
.word 0x3940031e
.word 0xf9400b02
.word 0x3940a3a3
.word 0xaa1603e4
bl _p_367
.loc 57 801 0
.word 0xd2800000
.word 0x2a0003e0
.word 0xeb0002df
.word 0x54000060
.loc 57 802 0
.word 0xaa1603e0
bl _p_198
.loc 57 804 0
.word 0xf9400bb6
.word 0xf9400fb8
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 57 785 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28587a1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_2f2:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_ViewDidLoad
UIKit_UIViewController_ViewDidLoad:
.loc 57 1252 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 57 1253 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 57 1254 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_48@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_48@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 57 1255 0
.word 0x14000007
.loc 57 1256 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_48@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_48@PAGEOFF
ldr x1, [x1]
bl _p_341
.loc 57 1258 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2f3:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_get_Title
UIKit_UIViewController_get_Title:
.loc 57 2865 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 57 2866 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 57 2867 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_49@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_49@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x14000008
.loc 57 2869 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_49@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_49@PAGEOFF
ldr x1, [x1]
bl _p_354
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2f4:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_set_Title_string
UIKit_UIViewController_set_Title_string:
.loc 57 2875 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
bl _p_327
.loc 57 2876 0
.word 0xaa1a03e0
bl _p_363
.word 0xaa0003fa
.loc 57 2878 0
.word 0xf9400fa0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 57 2879 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_50@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_50@PAGEOFF
ldr x1, [x1]
.word 0xaa1a03e2
bl _p_261
.loc 57 2880 0
.word 0x14000008
.loc 57 2881 0
.word 0xf9400fa0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_50@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_50@PAGEOFF
ldr x1, [x1]
.word 0xaa1a03e2
bl _p_342
.loc 57 2883 0
.word 0xaa1a03e0
bl _p_365
.loc 57 2885 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2f5:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_get_View
UIKit_UIViewController_get_View:
.loc 57 2978 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
bl _p_327
.loc 57 2980 0
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000180
.loc 57 2981 0
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_51@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_51@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3216]
bl _p_368
.word 0xaa0003fa
.loc 57 2982 0
.word 0x1400000c
.loc 57 2983 0
.word 0xaa1a03e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_51@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_51@PAGEOFF
ldr x1, [x1]
bl _p_354

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3216]
bl _p_368
.word 0xaa0003fa
.loc 57 2985 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2f6:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_get_WantsFullScreenLayout
UIKit_UIViewController_get_WantsFullScreenLayout:
.loc 57 3054 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 57 3055 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 57 3056 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_52@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_52@PAGEOFF
ldr x1, [x1]
bl _p_350
.word 0x53001c00
.word 0x14000008
.loc 57 3058 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_52@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_52@PAGEOFF
ldr x1, [x1]
bl _p_351
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2f7:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_set_WantsFullScreenLayout_bool
UIKit_UIViewController_set_WantsFullScreenLayout_bool:
.loc 57 3066 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
bl _p_327
.loc 57 3067 0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 57 3068 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_53@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_53@PAGEOFF
ldr x1, [x1]
.word 0x394063a2
bl _p_305
.loc 57 3069 0
.word 0x14000008
.loc 57 3070 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_53@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_53@PAGEOFF
ldr x1, [x1]
.word 0x394063a2
bl _p_352
.loc 57 3072 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2f8:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController_Dispose_bool
UIKit_UIViewController_Dispose_bool:
.loc 57 3135 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x394063a1
bl _p_299
.loc 57 3136 0
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x6b1f001f
.loc 57 3141 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2f9:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController__cctor
UIKit_UIViewController__cctor:
.loc 57 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3224]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3200]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2fa:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController__GetEnumeratord__4__ctor_int
UIKit_UIViewController__GetEnumeratord__4__ctor_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9002801
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2fb:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController__GetEnumeratord__4_System_IDisposable_Dispose
UIKit_UIViewController__GetEnumeratord__4_System_IDisposable_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2fc:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController__GetEnumeratord__4_MoveNext
UIKit_UIViewController__GetEnumeratord__4_MoveNext:
.file 58 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIViewController.cs"
.loc 58 0 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xb9802b59
.word 0xf9400f58
.word 0x340000d9
.word 0xd2800020
.word 0x6b00033f
.word 0x540007a0
.word 0xd2800000
.word 0x14000048
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9002b5e
.loc 58 58 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf940e030
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410c30
.word 0xd63f0200
.word 0xaa0003f9
.loc 58 59 0
.word 0xaa1903e0
.word 0xb5000060
.loc 58 60 0
.word 0xd2800000
.word 0x14000037
.loc 58 61 0
.word 0xf9001359
.word 0x91008340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xb9002f5f
.word 0x14000022
.word 0xf9401340
.word 0xb9802f41
.word 0x93407c21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540004e9
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0xf9400019
.loc 58 62 0
.word 0xf9000b59
.word 0x91004340
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xd280003e
.word 0xb9002b5e
.word 0xd2800020
.word 0x1400000e
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9002b5e
.word 0xb9802f40
.word 0x11000400
.word 0xb9002f40
.loc 58 61 0
.word 0xb9802f40
.word 0xf9401341
.word 0xb9801821
.word 0x6b01001f
.word 0x54fffb6b
.word 0xf900135f
.loc 58 63 0
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_2fd:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController__GetEnumeratord__4_System_Collections_Generic_IEnumerator_System_Object_get_Current
UIKit_UIViewController__GetEnumeratord__4_System_Collections_Generic_IEnumerator_System_Object_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2fe:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController__GetEnumeratord__4_System_Collections_IEnumerator_Reset
UIKit_UIViewController__GetEnumeratord__4_System_Collections_IEnumerator_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2ff:
.text
	.align 4
	.no_dead_strip UIKit_UIViewController__GetEnumeratord__4_System_Collections_IEnumerator_get_Current
UIKit_UIViewController__GetEnumeratord__4_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_300:
.text
	.align 4
	.no_dead_strip UIKit_UIWindow_get_ClassHandle
UIKit_UIWindow_get_ClassHandle:
.file 59 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIWindow.g.cs"
.loc 59 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3232]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_301:
.text
	.align 4
	.no_dead_strip UIKit_UIWindow__ctor_intptr
UIKit_UIWindow__ctor_intptr:
.loc 59 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_319
.loc 59 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_302:
.text
	.align 4
	.no_dead_strip UIKit_UIWindow__cctor
UIKit_UIWindow__cctor:
.loc 59 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3240]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3232]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_303:
.text
ut_772:
add x0, x0, 16
b UIKit_UIEdgeInsets_Equals_UIKit_UIEdgeInsets
.text
	.align 4
	.no_dead_strip UIKit_UIEdgeInsets_Equals_UIKit_UIEdgeInsets
UIKit_UIEdgeInsets_Equals_UIKit_UIEdgeInsets:
.file 60 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UITypes.cs"
.loc 60 50 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xfd000fa0
.word 0xfd0013a1
.word 0xfd0017a2
.word 0xfd001ba3
.word 0xfd400740
.word 0xfd4013a1
.word 0x1e612000
.word 0x9a9f07e0
.word 0x34000060
.loc 60 51 0
.word 0xd2800000
.word 0x14000013
.loc 60 52 0
.word 0xfd400f40
.word 0xfd401ba1
.word 0x1e612000
.word 0x9a9f07e0
.word 0x34000060
.loc 60 53 0
.word 0xd2800000
.word 0x1400000c
.loc 60 54 0
.word 0xfd400340
.word 0xfd400fa1
.word 0x1e612000
.word 0x9a9f07e0
.word 0x34000060
.loc 60 55 0
.word 0xd2800000
.word 0x14000005
.loc 60 56 0
.word 0xfd400b40
.word 0xfd4017a1
.word 0x1e612000
.word 0x9a9f17e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_304:
.text
ut_773:
add x0, x0, 16
b UIKit_UIEdgeInsets_Equals_object
.text
	.align 4
	.no_dead_strip UIKit_UIEdgeInsets_Equals_object
UIKit_UIEdgeInsets_Equals_object:
.loc 60 61 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3248]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40003f8
.loc 60 62 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000401
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3248]
.word 0xeb01001f
.word 0x10000011
.word 0x54000301
.word 0x91004340
.word 0xf9400001
.word 0xf90017a1
.word 0xf9400401
.word 0xf9001ba1
.word 0xf9400801
.word 0xf9001fa1
.word 0xf9400c00
.word 0xf90023a0
.word 0xf94013a0
.word 0xfd4017a0
.word 0xfd401ba1
.word 0xfd401fa2
.word 0xfd4023a3
bl _p_369
.word 0x53001c00
.word 0x14000002
.loc 60 63 0
.word 0xd2800000
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_305:
.text
ut_774:
add x0, x0, 16
b UIKit_UIEdgeInsets_GetHashCode
.text
	.align 4
	.no_dead_strip UIKit_UIEdgeInsets_GetHashCode
UIKit_UIEdgeInsets_GetHashCode:
.loc 60 78 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xaa1a03e0
bl _p_285
.word 0x93407c00
.word 0xf9001ba0
.word 0x91002340
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9401ba0
.word 0x4a010000
.word 0xf90017a0
.word 0x91006340
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94017a0
.word 0x4a010000
.word 0xf90013a0
.word 0x91004340
bl _p_285
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94013a0
.word 0x4a010000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_306:
.text
ut_776:
add x0, x0, 16
b UIKit_UIEdgeInsets_ToString
.text
	.align 4
	.no_dead_strip UIKit_UIEdgeInsets_ToString
UIKit_UIEdgeInsets_ToString:
.loc 60 99 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90023bf
.word 0xf9400fa0
.word 0xf9400001
.word 0xf90013a1
.word 0xf9400401
.word 0xf90017a1
.word 0xf9400801
.word 0xf9001ba1
.word 0xf9400c00
.word 0xf9001fa0
.word 0xfd4013a0
.word 0xfd4017a1
.word 0xfd401ba2
.word 0xfd401fa3
bl _p_370
.word 0xf9003fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2936]
bl _p_71
.word 0xf9403fa1
.word 0xf9003ba0
bl _p_371
.word 0xf9403ba0
.word 0xf90023a0
.loc 60 100 0
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0xaa0003fa
.word 0xf90027bf
.word 0x94000005
.word 0xf94027a0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90033be
.word 0xf94023a0
.word 0xb4000160
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033be
.word 0xd61f03c0
.loc 60 101 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_308:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertAction_get_ClassHandle
UIKit_UIAlertAction_get_ClassHandle:
.file 61 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIAlertAction.g.cs"
.loc 61 53 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3256]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_309:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertAction__ctor_intptr
UIKit_UIAlertAction__ctor_intptr:
.loc 61 75 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 61 77 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_30a:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertAction_Copy_Foundation_NSZone
UIKit_UIAlertAction_Copy_Foundation_NSZone:
.loc 61 83 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
bl _p_327
.loc 61 85 0
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_30b:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertAction_Create_string_UIKit_UIAlertActionStyle_System_Action_1_UIKit_UIAlertAction
UIKit_UIAlertAction_Create_string_UIKit_UIAlertActionStyle_System_Action_1_UIKit_UIAlertAction:
.loc 61 95 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xaa0003f8
.word 0xf90017a1
.word 0xaa0203fa
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
bl _p_327
.loc 61 96 0
.word 0xb4000738
.loc 61 98 0
.word 0xaa1803e0
bl _p_363
.word 0xaa0003f8
.loc 61 101 0
.word 0xb500009a
.loc 61 102 0
.word 0xd2800000
.word 0x2a0003f7
.loc 61 103 0
.word 0x14000014
.loc 61 104 0
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.loc 61 105 0
.word 0x9100c3b7
.loc 61 106 0
.word 0x9100c3a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2440]
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #3264]
.word 0xaa1a03e2
.word 0xd2800003
bl _p_196
.loc 61 111 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3256]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_55@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_55@PAGEOFF
ldr x1, [x1]
.word 0xaa1803e2
.word 0xf94017a3
.word 0xaa1703e4
bl _p_372

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2400]
bl _p_246
.word 0xaa0003fa
.loc 61 115 0
.word 0xaa1803e0
bl _p_365
.loc 61 116 0
.word 0xd2800000
.word 0x2a0003e0
.word 0xeb0002ff
.word 0x54000060
.loc 61 117 0
.word 0xaa1703e0
bl _p_198
.loc 61 119 0
.word 0xaa1a03e0
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.loc 61 97 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2859b61
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_30c:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertAction__cctor
UIKit_UIAlertAction__cctor:
.loc 61 51 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3272]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3256]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_30d:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertController_get_ClassHandle
UIKit_UIAlertController_get_ClassHandle:
.file 62 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIAlertController.g.cs"
.loc 62 53 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3280]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_30e:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertController__ctor_intptr
UIKit_UIAlertController__ctor_intptr:
.loc 62 89 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_373
.loc 62 91 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_30f:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertController_AddAction_UIKit_UIAlertAction
UIKit_UIAlertController_AddAction_UIKit_UIAlertAction:
.loc 62 116 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
bl _p_327
.loc 62 117 0
.word 0xb40001ba
.loc 62 120 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_56@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_56@PAGEOFF
ldr x1, [x1]
.word 0x3940035e
.word 0xf9400b42
bl _p_261
.loc 62 121 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 62 118 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd285c321
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_310:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertController_Create_string_string_UIKit_UIAlertControllerStyle
UIKit_UIAlertController_Create_string_string_UIKit_UIAlertControllerStyle:
.loc 62 152 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
bl _p_327
.loc 62 153 0
.word 0xf9400ba0
bl _p_363
.word 0xf90027a0
.loc 62 154 0
.word 0xf9400fa0
bl _p_363
.word 0xaa0003e3
.word 0xf94027a2
.loc 62 158 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3280]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_57@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_57@PAGEOFF
ldr x1, [x1]
.word 0xf90023a2
.word 0xf9001fa3
.word 0xf94013a4
bl _p_374

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3288]
bl _p_375
.word 0xaa0003e1
.word 0xf94023a0
.word 0xf9001ba1
.loc 62 162 0
bl _p_365
.word 0xf9401fa0
.loc 62 163 0
bl _p_365
.word 0xf9401ba0
.loc 62 165 0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_311:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertController_get_Title
UIKit_UIAlertController_get_Title:
.loc 62 309 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
bl _p_327
.loc 62 311 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_49@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_49@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_312:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertController_set_Title_string
UIKit_UIAlertController_set_Title_string:
.loc 62 319 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
bl _p_327
.loc 62 320 0
.word 0xf9400fa0
bl _p_363
.word 0xaa0003e2
.loc 62 323 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_50@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_50@PAGEOFF
ldr x1, [x1]
.word 0xf90013a2
bl _p_261
.word 0xf94013a0
.loc 62 327 0
bl _p_365
.loc 62 329 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_313:
.text
	.align 4
	.no_dead_strip UIKit_UIAlertController__cctor
UIKit_UIAlertController__cctor:
.loc 62 51 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3296]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3280]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_314:
.text
	.align 4
	.no_dead_strip UIKit_UIApplicationDelegate__ctor
UIKit_UIApplicationDelegate__ctor:
.file 63 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIApplicationDelegate.g.cs"
.loc 63 866 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xaa1a03e0
bl _p_251
.loc 63 868 0
.word 0xaa1a03e0
.word 0xd2800001
bl _p_306
.loc 63 869 0
.word 0xaa1a03e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_58@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_58@PAGEOFF
ldr x1, [x1]
bl _p_354
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3304]
.word 0xaa1a03e0
bl _p_253
.loc 63 870 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_315:
.text
	.align 4
	.no_dead_strip UIKit_UIApplicationDelegate__ctor_intptr
UIKit_UIApplicationDelegate__ctor_intptr:
.loc 63 881 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 63 883 0
.word 0xf9400ba0
.word 0xd2800001
bl _p_306
.loc 63 884 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_316:
.text
	.align 4
	.no_dead_strip UIKit_UIApplicationDelegate_DidEnterBackground_UIKit_UIApplication
UIKit_UIApplicationDelegate_DidEnterBackground_UIKit_UIApplication:
.loc 63 938 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3312]
.word 0xd2801101
bl _p_7
.word 0xf90013a0
bl _p_376
.word 0xf94013a0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_317:
.text
	.align 4
	.no_dead_strip UIKit_UIApplicationDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
UIKit_UIApplicationDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary:
.loc 63 986 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3312]
.word 0xd2801101
bl _p_7
.word 0xf9001ba0
bl _p_376
.word 0xf9401ba0
bl _p_38
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_318:
.text
	.align 4
	.no_dead_strip UIKit_UIApplicationDelegate_OnActivated_UIKit_UIApplication
UIKit_UIApplicationDelegate_OnActivated_UIKit_UIApplication:
.loc 63 1085 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3312]
.word 0xd2801101
bl _p_7
.word 0xf90013a0
bl _p_376
.word 0xf94013a0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_319:
.text
	.align 4
	.no_dead_strip UIKit_UIApplicationDelegate_OnResignActivation_UIKit_UIApplication
UIKit_UIApplicationDelegate_OnResignActivation_UIKit_UIApplication:
.loc 63 1092 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3312]
.word 0xd2801101
bl _p_7
.word 0xf90013a0
bl _p_376
.word 0xf94013a0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_31a:
.text
	.align 4
	.no_dead_strip UIKit_UIApplicationDelegate_WillEnterForeground_UIKit_UIApplication
UIKit_UIApplicationDelegate_WillEnterForeground_UIKit_UIApplication:
.loc 63 1268 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3312]
.word 0xd2801101
bl _p_7
.word 0xf90013a0
bl _p_376
.word 0xf94013a0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_31b:
.text
	.align 4
	.no_dead_strip UIKit_UIApplicationDelegate_WillTerminate_UIKit_UIApplication
UIKit_UIApplicationDelegate_WillTerminate_UIKit_UIApplication:
.loc 63 1283 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3312]
.word 0xd2801101
bl _p_7
.word 0xf90013a0
bl _p_376
.word 0xf94013a0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_31c:
.text
	.align 4
	.no_dead_strip UIKit_UIApplicationDelegate_get_Window
UIKit_UIApplicationDelegate_get_Window:
.loc 63 1290 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3320]
.word 0xd2801101
bl _p_7
.word 0xf90013a0
bl _p_377
.word 0xf94013a0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_31d:
.text
	.align 4
	.no_dead_strip UIKit_UIApplicationDelegate_set_Window_UIKit_UIWindow
UIKit_UIApplicationDelegate_set_Window_UIKit_UIWindow:
.loc 63 1295 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3320]
.word 0xd2801101
bl _p_7
.word 0xf90013a0
bl _p_377
.word 0xf94013a0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_31e:
.text
	.align 4
	.no_dead_strip UIKit_UICoordinateSpaceWrapper__ctor_intptr_bool
UIKit_UICoordinateSpaceWrapper__ctor_intptr_bool:
.file 64 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UICoordinateSpace.g.cs"
.loc 64 86 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x394083a2
bl _p_259
.loc 64 88 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_324:
.text
	.align 4
	.no_dead_strip UIKit_UICoordinateSpaceWrapper_ConvertPointToCoordinateSpace_CoreGraphics_CGPoint_UIKit_IUICoordinateSpace
UIKit_UICoordinateSpaceWrapper_ConvertPointToCoordinateSpace_CoreGraphics_CGPoint_UIKit_IUICoordinateSpace:
.loc 64 94 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9002ba0
.word 0xfd002fa0
.word 0xfd0033a1
.word 0xf9004fa1
.word 0xd2800000
.word 0xf90053a0
.word 0xf90057a0
bl _p_327
.loc 64 95 0
.word 0xf9404fa0
.word 0xb40004c0
.loc 64 100 0
.word 0xf9402ba0
.word 0xf9400800
.word 0xf90063a0
adrp x0, L_OBJC_SELECTOR_REFERENCES_26@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_26@PAGEOFF
ldr x0, [x0]
.word 0xf90067a0
.word 0xf9404fa0
.word 0xf9404fa1
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
.word 0x910283a3
.word 0xf9005ba3
.word 0xfd402fa0
.word 0xfd4033a1
bl _p_337
.word 0xf9405bbe
.word 0xfd0003c0
.word 0xfd0007c1
.loc 64 109 0
.word 0xf94053a0
.word 0xf9000ba0
.word 0xf94057a0
.word 0xf9000fa0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.loc 64 96 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28518e1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_325:
.text
	.align 4
	.no_dead_strip UIKit_UICoordinateSpaceWrapper_ConvertPointFromCoordinateSpace_CoreGraphics_CGPoint_UIKit_IUICoordinateSpace
UIKit_UICoordinateSpaceWrapper_ConvertPointFromCoordinateSpace_CoreGraphics_CGPoint_UIKit_IUICoordinateSpace:
.loc 64 116 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9002ba0
.word 0xfd002fa0
.word 0xfd0033a1
.word 0xf9004fa1
.word 0xd2800000
.word 0xf90053a0
.word 0xf90057a0
bl _p_327
.loc 64 117 0
.word 0xf9404fa0
.word 0xb40004c0
.loc 64 122 0
.word 0xf9402ba0
.word 0xf9400800
.word 0xf90063a0
adrp x0, L_OBJC_SELECTOR_REFERENCES_25@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_25@PAGEOFF
ldr x0, [x0]
.word 0xf90067a0
.word 0xf9404fa0
.word 0xf9404fa1
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
.word 0x910283a3
.word 0xf9005ba3
.word 0xfd402fa0
.word 0xfd4033a1
bl _p_337
.word 0xf9405bbe
.word 0xfd0003c0
.word 0xfd0007c1
.loc 64 131 0
.word 0xf94053a0
.word 0xf9000ba0
.word 0xf94057a0
.word 0xf9000fa0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.loc 64 118 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28518e1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_326:
.text
	.align 4
	.no_dead_strip UIKit_UICoordinateSpaceWrapper_ConvertRectToCoordinateSpace_CoreGraphics_CGRect_UIKit_IUICoordinateSpace
UIKit_UICoordinateSpaceWrapper_ConvertRectToCoordinateSpace_CoreGraphics_CGRect_UIKit_IUICoordinateSpace:
.loc 64 138 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9002ba0
.word 0xfd002fa0
.word 0xfd0033a1
.word 0xfd0037a2
.word 0xfd003ba3
.word 0xf9004fa1
.word 0xd2800000
.word 0xf90053a0
.word 0xf90057a0
.word 0xf9005ba0
.word 0xf9005fa0
bl _p_327
.loc 64 139 0
.word 0xf9404fa0
.word 0xb4000600
.loc 64 144 0
.word 0xf9402ba0
.word 0xf9400800
.word 0xf9006ba0
adrp x0, L_OBJC_SELECTOR_REFERENCES_28@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_28@PAGEOFF
ldr x0, [x0]
.word 0xf9006fa0
.word 0xf9404fa0
.word 0xf9404fa1
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9406ba0
.word 0xf9406fa1
.word 0x910283a3
.word 0xf90063a3
.word 0xfd402fa0
.word 0xfd4033a1
.word 0xfd4037a2
.word 0xfd403ba3
bl _p_339
.word 0xf94063be
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 64 153 0
.word 0xf94053a0
.word 0xf9000ba0
.word 0xf94057a0
.word 0xf9000fa0
.word 0xf9405ba0
.word 0xf90013a0
.word 0xf9405fa0
.word 0xf90017a0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0xfd4013a2
.word 0xfd4017a3
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.loc 64 140 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28518e1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_327:
.text
	.align 4
	.no_dead_strip UIKit_UICoordinateSpaceWrapper_ConvertRectFromCoordinateSpace_CoreGraphics_CGRect_UIKit_IUICoordinateSpace
UIKit_UICoordinateSpaceWrapper_ConvertRectFromCoordinateSpace_CoreGraphics_CGRect_UIKit_IUICoordinateSpace:
.loc 64 160 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xf9002ba0
.word 0xfd002fa0
.word 0xfd0033a1
.word 0xfd0037a2
.word 0xfd003ba3
.word 0xf9004fa1
.word 0xd2800000
.word 0xf90053a0
.word 0xf90057a0
.word 0xf9005ba0
.word 0xf9005fa0
bl _p_327
.loc 64 161 0
.word 0xf9404fa0
.word 0xb4000600
.loc 64 166 0
.word 0xf9402ba0
.word 0xf9400800
.word 0xf9006ba0
adrp x0, L_OBJC_SELECTOR_REFERENCES_27@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_27@PAGEOFF
ldr x0, [x0]
.word 0xf9006fa0
.word 0xf9404fa0
.word 0xf9404fa1
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9406ba0
.word 0xf9406fa1
.word 0x910283a3
.word 0xf90063a3
.word 0xfd402fa0
.word 0xfd4033a1
.word 0xfd4037a2
.word 0xfd403ba3
bl _p_339
.word 0xf94063be
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 64 175 0
.word 0xf94053a0
.word 0xf9000ba0
.word 0xf94057a0
.word 0xf9000fa0
.word 0xf9405ba0
.word 0xf90013a0
.word 0xf9405fa0
.word 0xf90017a0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0xfd4013a2
.word 0xfd4017a3
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.loc 64 162 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28518e1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_328:
.text
	.align 4
	.no_dead_strip UIKit_UICoordinateSpaceWrapper_get_Bounds
UIKit_UICoordinateSpaceWrapper_get_Bounds:
.loc 64 182 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9002ba0
bl _p_327
.loc 64 186 0
.word 0xf9402ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_13@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_13@PAGEOFF
ldr x1, [x1]
.word 0x910043a2
.word 0xf9002fa2
bl _p_295
.word 0xf9402fbe
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 64 195 0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0xfd4013a2
.word 0xfd4017a3
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_329:
.text
	.align 4
	.no_dead_strip UIKit_UIDynamicItemWrapper__ctor_intptr_bool
UIKit_UIDynamicItemWrapper__ctor_intptr_bool:
.file 65 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIDynamicItem.g.cs"
.loc 65 105 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x394083a2
bl _p_259
.loc 65 107 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_32f:
.text
	.align 4
	.no_dead_strip UIKit_UIDynamicItemWrapper_get_Center
UIKit_UIDynamicItemWrapper_get_Center:
.loc 65 113 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9002ba0
bl _p_327
.loc 65 117 0
.word 0xf9402ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_31@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_31@PAGEOFF
ldr x1, [x1]
.word 0x910043a2
.word 0xf9002fa2
bl _p_344
.word 0xf9402fbe
.word 0xfd0003c0
.word 0xfd0007c1
.loc 65 126 0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_330:
.text
	.align 4
	.no_dead_strip UIKit_UIDynamicItemWrapper_set_Center_CoreGraphics_CGPoint
UIKit_UIDynamicItemWrapper_set_Center_CoreGraphics_CGPoint:
.loc 65 131 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0
.word 0xfd0013a1
bl _p_327
.loc 65 132 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_32@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_32@PAGEOFF
ldr x1, [x1]
.word 0xfd400fa0
.word 0xfd4013a1
bl _p_346
.loc 65 133 0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_331:
.text
	.align 4
	.no_dead_strip UIKit_UIDynamicItemWrapper_get_Bounds
UIKit_UIDynamicItemWrapper_get_Bounds:
.loc 65 140 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9002ba0
bl _p_327
.loc 65 144 0
.word 0xf9402ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_13@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_13@PAGEOFF
ldr x1, [x1]
.word 0x910043a2
.word 0xf9002fa2
bl _p_295
.word 0xf9402fbe
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.loc 65 153 0
.word 0xfd400ba0
.word 0xfd400fa1
.word 0xfd4013a2
.word 0xfd4017a3
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_332:
.text
	.align 4
	.no_dead_strip UIKit_UIDynamicItemWrapper_get_Transform
UIKit_UIDynamicItemWrapper_get_Transform:
.loc 65 162 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf9000fa0
bl _p_327
.loc 65 166 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_39@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_39@PAGEOFF
ldr x1, [x1]
.word 0x910083a8
bl _p_356
.loc 65 175 0
.word 0xf9400ba0
.word 0xf94013a1
.word 0xf9000001
.word 0xf94017a1
.word 0xf9000401
.word 0xf9401ba1
.word 0xf9000801
.word 0xf9401fa1
.word 0xf9000c01
.word 0xf94023a1
.word 0xf9001001
.word 0xf94027a1
.word 0xf9001401
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_333:
.text
	.align 4
	.no_dead_strip UIKit_UIDynamicItemWrapper_set_Transform_CoreGraphics_CGAffineTransform
UIKit_UIDynamicItemWrapper_set_Transform_CoreGraphics_CGAffineTransform:
.loc 65 180 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
bl _p_327
.loc 65 181 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_40@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_40@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa3
.word 0x910083a2
.word 0xf9400064
.word 0xf90013a4
.word 0xf9400464
.word 0xf90017a4
.word 0xf9400864
.word 0xf9001ba4
.word 0xf9400c64
.word 0xf9001fa4
.word 0xf9401064
.word 0xf90023a4
.word 0xf9401463
.word 0xf90027a3
bl _p_358
.loc 65 182 0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_334:
.text
	.align 4
	.no_dead_strip UIKit_UIImageView_get_ClassHandle
UIKit_UIImageView_get_ClassHandle:
.file 66 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIImageView.g.cs"
.loc 66 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3328]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_335:
.text
	.align 4
	.no_dead_strip UIKit_UIImageView__ctor_intptr
UIKit_UIImageView__ctor_intptr:
.loc 66 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_319
.loc 66 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_336:
.text
	.align 4
	.no_dead_strip UIKit_UIImageView__cctor
UIKit_UIImageView__cctor:
.loc 66 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3336]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3328]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_337:
.text
	.align 4
	.no_dead_strip UIKit_UILabel_get_ClassHandle
UIKit_UILabel_get_ClassHandle:
.file 67 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UILabel.g.cs"
.loc 67 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3344]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_338:
.text
	.align 4
	.no_dead_strip UIKit_UILabel__ctor_intptr
UIKit_UILabel__ctor_intptr:
.loc 67 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_319
.loc 67 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_339:
.text
	.align 4
	.no_dead_strip UIKit_UILabel__cctor
UIKit_UILabel__cctor:
.loc 67 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3352]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3344]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_33a:
.text
	.align 4
	.no_dead_strip UIKit_UIResponder_get_ClassHandle
UIKit_UIResponder_get_ClassHandle:
.file 68 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIResponder.g.cs"
.loc 68 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3360]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_33b:
.text
	.align 4
	.no_dead_strip UIKit_UIResponder__ctor_Foundation_NSObjectFlag
UIKit_UIResponder__ctor_Foundation_NSObjectFlag:
.loc 68 68 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_251
.loc 68 70 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_33c:
.text
	.align 4
	.no_dead_strip UIKit_UIResponder__ctor_intptr
UIKit_UIResponder__ctor_intptr:
.loc 68 74 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 68 76 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_33d:
.text
	.align 4
	.no_dead_strip UIKit_UIResponder_get_NextResponder
UIKit_UIResponder_get_NextResponder:
.loc 68 951 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
bl _p_327
.loc 68 953 0
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000180
.loc 68 954 0
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_59@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_59@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3368]
bl _p_378
.word 0xaa0003fa
.loc 68 955 0
.word 0x1400000c
.loc 68 956 0
.word 0xaa1a03e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_59@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_59@PAGEOFF
ldr x1, [x1]
bl _p_354

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3368]
bl _p_378
.word 0xaa0003fa
.loc 68 958 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_33e:
.text
	.align 4
	.no_dead_strip UIKit_UIResponder__cctor
UIKit_UIResponder__cctor:
.loc 68 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3376]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3360]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_33f:
.text
	.align 4
	.no_dead_strip UIKit_UIScrollView_get_ClassHandle
UIKit_UIScrollView_get_ClassHandle:
.file 69 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/UIKit/UIScrollView.g.cs"
.loc 69 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3384]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_340:
.text
	.align 4
	.no_dead_strip UIKit_UIScrollView__ctor_intptr
UIKit_UIScrollView__ctor_intptr:
.loc 69 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_319
.loc 69 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_341:
.text
	.align 4
	.no_dead_strip UIKit_UIScrollView_Dispose_bool
UIKit_UIScrollView_Dispose_bool:
.loc 69 1584 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x394063a1
bl _p_299
.loc 69 1585 0
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x6b1f001f
.loc 69 1588 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_342:
.text
	.align 4
	.no_dead_strip UIKit_UIScrollView__cctor
UIKit_UIScrollView__cctor:
.loc 69 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3392]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3384]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_343:
.text
	.align 4
	.no_dead_strip Foundation_MonoTouchException__ctor_Foundation_NSException
Foundation_MonoTouchException__ctor_Foundation_NSException:
.file 70 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/MonoTouchException.cs"
.loc 70 13 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
bl _p_379
.loc 70 14 0
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9004420
.word 0x91022021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 70 15 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_344:
.text
	.align 4
	.no_dead_strip Foundation_MonoTouchException_get_NSException
Foundation_MonoTouchException_get_NSException:
.loc 70 19 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9404400
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_345:
.text
	.align 4
	.no_dead_strip Foundation_MonoTouchException_get_Reason
Foundation_MonoTouchException_get_Reason:
.loc 70 25 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9404401
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d430
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_346:
.text
	.align 4
	.no_dead_strip Foundation_MonoTouchException_get_Name
Foundation_MonoTouchException_get_Name:
.loc 70 31 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9404401
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d830
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_347:
.text
	.align 4
	.no_dead_strip Foundation_MonoTouchException_get_Message
Foundation_MonoTouchException_get_Message:
.loc 70 37 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3400]
.word 0xf90023a0
.word 0xf9400ba0
bl _p_380
.word 0xf90027a0
.word 0xf9400ba0
bl _p_381
.word 0xf9002ba0
.word 0xf9400ba0
bl _p_382
.word 0xaa0003e3
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba2
bl _p_100
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_348:
.text
	.align 4
	.no_dead_strip Foundation_MonoTouchException_get_NativeStackTrace
Foundation_MonoTouchException_get_NativeStackTrace:
.loc 70 43 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xf9404741
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940dc30
.word 0xd63f0200
.word 0xaa0003fa
.loc 70 44 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3408]
.word 0xf9400019
.loc 70 45 0
.word 0xd2800018
.word 0x14000014
.loc 70 46 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3416]
.word 0x93407f00
.word 0xb9801b42
.word 0xeb00005f
.word 0x10000011
.word 0x540002a9
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400002

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #3424]
.word 0xaa1903e0
bl _p_383
.word 0xaa0003f9
.loc 70 45 0
.word 0x11000718
.word 0xb9801b40
.word 0x6b00031f
.word 0x54fffd6b
.loc 70 48 0
.word 0xaa1903e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_349:
.text
	.align 4
	.no_dead_strip Foundation_MonoTouchException_ToString
Foundation_MonoTouchException_ToString:
.loc 70 54 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf9400fa0
bl _p_384
.word 0xaa0003f9
.loc 70 56 0
.word 0xf9400fa0
.word 0xf9404400
.word 0xb40000e0
.loc 70 57 0
.word 0xf9400fa0
bl _p_382
.word 0xaa0003e1
.word 0xaa1903e0
bl _p_121
.word 0xaa0003f9
.loc 70 59 0
.word 0xaa1903e0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_34a:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_FromNSObjects_Foundation_NSObject__
Foundation_NSArray_FromNSObjects_Foundation_NSObject__:
.file 71 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSArray.cs"
.loc 71 44 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_385
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_34b:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_FromNSObjects_int_Foundation_NSObject__
Foundation_NSArray_FromNSObjects_int_Foundation_NSObject__:
.loc 71 49 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb98013a0
.word 0x93407c01
.word 0xf9400fa0
bl _p_386
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_34c:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_FromObjects_object__
Foundation_NSArray_FromObjects_object__:
.loc 71 79 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3432]
.word 0xf9400ba0
.word 0xd29fffe1
.word 0xf2bfffe1
.word 0xf2dfffe1
.word 0xf2ffffe1
bl _p_387
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_34d:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_From_T_REF_T_REF___long
Foundation_NSArray_From_T_REF_T_REF___long:
.loc 71 89 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf90027af
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb4000059
.word 0xb500013a
.loc 71 90 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3440]
bl _p_71
.word 0xf9003ba0
bl _p_388
.word 0xf9403ba0
.word 0x1400003c
.loc 71 92 0
.word 0xd29fffe0
.word 0xf2bfffe0
.word 0xf2dfffe0
.word 0xf2ffffe0
.word 0xeb00035f
.word 0x54000081
.loc 71 93 0
.word 0xb9801b20
.word 0x93407c1a
.word 0x14000005
.loc 71 94 0
.word 0xb9801b20
.word 0x93407c00
.word 0xeb00035f
.word 0x540006ac
.loc 71 97 0
.word 0xd29ffffe
.word 0xf2bffffe
.word 0xeb1e035f
.word 0x10000011
.word 0x54000b4c
.word 0xeb1f035f
.word 0x10000011
.word 0x54000aeb

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3448]
.word 0xaa1a03e1
bl _p_30
.word 0xaa0003f8
.loc 71 98 0
.word 0xd2800000
.word 0x93407c17
.word 0x1400001a
.loc 71 99 0
.word 0x93407ee0
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x540008c9
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400000
bl _p_389
.word 0xaa0003f6
.loc 71 100 0
.word 0xaa1603e0
.word 0xb4000500
.loc 71 102 0
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xf9400303
.word 0xf9407870
.word 0xd63f0200
.loc 71 98 0
.word 0xf9001fb7
.word 0xf9401fa0
.word 0x91000400
.word 0xf90023bf
.word 0xf90023a0
.word 0xf94023b7
.word 0xeb1a02ff
.word 0x54fffccb
.loc 71 104 0
.word 0xaa1803e0
bl _p_390
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.loc 71 95 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd285fcc1
bl _p_68
.word 0xf9003ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2860701
bl _p_68
.word 0xaa0003e2
.word 0xf9403ba1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_38
.loc 71 101 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2860881
bl _p_68
.word 0x93407ee1
.word 0xb9801b22
.word 0xeb01005f
.word 0x10000011
.word 0x540001a9
.word 0xd37df021
.word 0x8b010321
.word 0x91008021
.word 0xf9400021
.word 0xf9400021
.word 0xf9400c21
bl _p_123
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2
.word 0xd2802020
.word 0xaa1103e1
bl _p_2

Lme_34e:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_FromNativeObjects_ObjCRuntime_INativeObject__
Foundation_NSArray_FromNativeObjects_ObjCRuntime_INativeObject__:
.loc 71 109 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb5000120
.loc 71 110 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3440]
bl _p_71
.word 0xf90013a0
bl _p_388
.word 0xf94013a0
.word 0x14000005
.loc 71 112 0
.word 0xf9400ba0
.word 0xb9801801
.word 0x93407c21
bl _p_386
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_34f:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_FromNativeObjects_ObjCRuntime_INativeObject___System_nint
Foundation_NSArray_FromNativeObjects_ObjCRuntime_INativeObject___System_nint:
.loc 71 117 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb5000139
.loc 71 118 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3440]
bl _p_71
.word 0xf9002ba0
bl _p_388
.word 0xf9402ba0
.word 0x14000041
.loc 71 120 0
.word 0xb9801b20
.word 0x93407c00
.word 0xeb00035f
.word 0x9a9fd7e0
.word 0x35000840
.loc 71 123 0
.word 0xd2800100
.word 0x93407c00
.word 0x9b007f40
bl _p_391
.word 0xaa0003f8
.loc 71 124 0
.word 0xd2800000
.word 0x93407c17
.word 0x14000026
.loc 71 125 0
.word 0x93407ee0
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x540008c9
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400016
.loc 71 126 0
.word 0xaa1603e0
.word 0xb4000180
.word 0xaa1603e0
.word 0xf94002c1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f6
.word 0x14000005
bl _p_392
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400816
.word 0xaa1603f5
.loc 71 127 0
.word 0xd2800100
.word 0x93407c00
.word 0x9b007ee0
.word 0x93407c01
.word 0xaa1803e0
.word 0xaa1603e2
bl _p_393
.loc 71 124 0
.word 0xf90023b7
.word 0xf94023a0
.word 0x91000417
.word 0xeb1a02ff
.word 0x9a9fa7e0
.word 0x35fffb20
.loc 71 129 0
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_394

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3456]
bl _p_395
.word 0xaa0003fa
.loc 71 130 0
.word 0xaa1803e0
bl _p_191
.loc 71 131 0
.word 0xaa1a03e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.loc 71 121 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd285fcc1
bl _p_68
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2860701
bl _p_68
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_38
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_350:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_FromStrings_string__
Foundation_NSArray_FromStrings_string__:
.loc 71 150 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0xf9001bbf
.word 0xb4000f9a
.loc 71 153 0
.word 0xb9801b40
.word 0xd2800101
.word 0x1b017c00
bl _p_187
.word 0xf9001ba0
.loc 71 155 0
.word 0xb9801b41

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3464]
bl _p_30
.word 0xaa0003f9
.loc 71 157 0
.word 0xd2800018
.word 0x14000039
.loc 71 160 0
.word 0x93407f00
.word 0xb9801b41
.word 0xeb00003f
.word 0x10000011
.word 0x54000e89
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400000
.word 0xb50000c0
.loc 71 161 0
bl _p_392
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400817
.word 0x14000024
.loc 71 163 0
.word 0x93407f00
.word 0xb9801b41
.word 0xeb00003f
.word 0x10000011
.word 0x54000ca9
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400000
.word 0xf90037a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2936]
bl _p_71
.word 0xf94037a1
.word 0xf90033a0
bl _p_313
.word 0xf94033a2
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xf9400323
.word 0xf9407870
.word 0xd63f0200
.loc 71 164 0
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x540009c9
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400000
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400817
.loc 71 167 0
.word 0xf9401ba0
.word 0xd2800101
.word 0x1b017f01
.word 0xaa1703e2
bl _p_393
.loc 71 157 0
.word 0x11000718
.word 0xb9801b40
.word 0x6b00031f
.word 0x54fff8cb
.loc 71 169 0
.word 0xf9401ba0
.word 0xb9801b41
.word 0x93407c21
bl _p_394

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3456]
bl _p_395
.word 0xaa0003fa
.loc 71 170 0
.word 0xaa1903f8
.word 0xd2800019
.word 0x14000013
.word 0x93407f20
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540005a9
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9400017
.loc 71 171 0
.word 0xaa1703e0
.word 0xd2800001
bl _p_396
.word 0x53001c00
.word 0x34000080
.loc 71 172 0
.word 0xaa1703e0
.word 0x394002fe
bl _p_397
.word 0x11000739
.loc 71 170 0
.word 0xb9801b00
.word 0x6b00033f
.word 0x54fffd8b
.loc 71 174 0
.word 0xaa1a03f9
.word 0xf9001fbf
.word 0x94000005
.word 0xf9401fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9002fbe
.loc 71 176 0
.word 0xf9401ba0
bl _p_191
.loc 71 177 0
.word 0xf9402fbe
.word 0xd61f03c0
.loc 71 178 0
.word 0xaa1903e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 71 151 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2861841
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_351:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_GetCount_intptr
Foundation_NSArray_GetCount_intptr:
.loc 71 201 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
adrp x1, L_OBJC_SELECTOR_REFERENCES_60@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_60@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba0
bl _p_398
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_352:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_GetAtIndex_intptr_System_nuint
Foundation_NSArray_GetAtIndex_intptr_System_nuint:
.loc 71 218 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
adrp x1, L_OBJC_SELECTOR_REFERENCES_61@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_61@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba0
.word 0xf9400fa2
bl _p_399
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_353:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_StringArrayFromHandle_intptr
Foundation_NSArray_StringArrayFromHandle_intptr:
.loc 71 231 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34000060
.loc 71 232 0
.word 0xd2800000
.word 0x1400002c
.loc 71 234 0
.word 0xaa1a03e0
bl _p_400
.word 0xaa0003f9
.loc 71 235 0
.word 0xaa1903e1
.word 0xeb1f003f
.word 0x10000011
.word 0x5400054b
.word 0xd29ffffe
.word 0xf2bffffe
.word 0xeb1e003f
.word 0x10000011
.word 0x540004ac
.word 0xeb1f003f
.word 0x10000011
.word 0x5400044b

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3472]
bl _p_30
.word 0xaa0003f8
.loc 71 237 0
.word 0xd2800000
.word 0x2a0003f7
.word 0x14000011
.loc 71 238 0
.word 0xeb1f02ff
.word 0x10000011
.word 0x540002eb
.word 0xaa1a03e0
.word 0xaa1703e1
bl _p_401
bl _p_329
.word 0xaa0003e2
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xf9400303
.word 0xf9407870
.word 0xd63f0200
.loc 71 237 0
.word 0xf9001bb7
.word 0xf9401ba0
.word 0x91000417
.word 0xeb1902ff
.word 0x9a9f27e0
.word 0x35fffdc0
.loc 71 239 0
.word 0xaa1803e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2802020
.word 0xaa1103e1
bl _p_2

Lme_354:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_ArrayFromHandle_T_REF_intptr
Foundation_NSArray_ArrayFromHandle_T_REF_intptr:
.loc 71 244 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001baf
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x34000060
.loc 71 245 0
.word 0xd2800000
.word 0x1400002c
.loc 71 247 0
.word 0xaa1a03e0
bl _p_400
.word 0xaa0003f9
.loc 71 248 0
.word 0xaa1903e0
.word 0xeb1f001f
.word 0x10000011
.word 0x5400054b
.word 0xd29ffffe
.word 0xf2bffffe
.word 0xeb1e001f
.word 0x10000011
.word 0x540004ac
.word 0xeb1f001f
.word 0x10000011
.word 0x5400044b
.word 0xf90023a0
.word 0xf9401ba0
bl _p_402
.word 0xf94023a1
bl _p_30
.word 0xaa0003f8
.loc 71 250 0
.word 0xd2800017
.word 0x14000010
.loc 71 251 0
.word 0x2a1703e0
.word 0xf90023a0
.word 0xf9401ba0
bl _p_403
.word 0xaa0003ef
.word 0xf94023a1
.word 0xaa1a03e0
bl _p_404
.word 0xaa0003e2
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xf9400303
.word 0xf9407870
.word 0xd63f0200
.loc 71 250 0
.word 0x110006f7
.word 0x2a1703e0
.word 0xeb19001f
.word 0x9a9f27e0
.word 0x35fffdc0
.loc 71 253 0
.word 0xaa1803e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2802020
.word 0xaa1103e1
bl _p_2

Lme_355:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_UnsafeGetItem_T_REF_intptr_System_nuint
Foundation_NSArray_UnsafeGetItem_T_REF_intptr_System_nuint:
.loc 71 338 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf90013af
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xaa1a03e1
bl _p_401
.word 0xaa0003fa
.loc 71 342 0
.word 0xaa1a03e0
.word 0xf9001ba0
bl _p_392
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xaa0103e2
.word 0x3940005e
.word 0xf9400821
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 71 343 0
.word 0xd2800000
.word 0x14000007
.loc 71 345 0
.word 0xf94013a0
bl _p_405
.word 0xaa0003ef
.word 0xaa1a03e0
.word 0xd2800001
bl _p_406
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_356:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_get_ClassHandle
Foundation_NSArray_get_ClassHandle:
.file 72 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSArray.g.cs"
.loc 72 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3480]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_357:
.text
	.align 4
	.no_dead_strip Foundation_NSArray__ctor
Foundation_NSArray__ctor:
.loc 72 58 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_251
.loc 72 61 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_58@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_58@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3304]
.word 0xf9400ba0
bl _p_253
.loc 72 62 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_358:
.text
	.align 4
	.no_dead_strip Foundation_NSArray__ctor_intptr
Foundation_NSArray__ctor_intptr:
.loc 72 89 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 72 91 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_359:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_Copy_Foundation_NSZone
Foundation_NSArray_Copy_Foundation_NSZone:
.loc 72 140 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_35a:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_FromObjects_intptr_System_nint
Foundation_NSArray_FromObjects_intptr_System_nint:
.loc 72 191 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3480]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_62@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_62@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba2
.word 0xf9400fa3
bl _p_407
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_35b:
.text
	.align 4
	.no_dead_strip Foundation_NSArray__cctor
Foundation_NSArray__cctor:
.loc 72 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3488]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3480]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_35c:
.text
	.align 4
	.no_dead_strip Foundation_NSCoder_get_ClassHandle
Foundation_NSCoder_get_ClassHandle:
.file 73 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSCoder.g.cs"
.loc 73 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3496]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_35d:
.text
	.align 4
	.no_dead_strip Foundation_NSCoder__ctor_intptr
Foundation_NSCoder__ctor_intptr:
.loc 73 74 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 73 76 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_35e:
.text
	.align 4
	.no_dead_strip Foundation_NSCoder__cctor
Foundation_NSCoder__cctor:
.loc 73 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3504]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3496]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_35f:
.text
	.align 4
	.no_dead_strip Foundation_NSData_System_Collections_IEnumerable_GetEnumerator
Foundation_NSData_System_Collections_IEnumerable_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3512]
.word 0xd2800801
bl _p_7
.word 0xb900201f
.word 0xf9400ba1
.word 0xf9000c01
.word 0x91006002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_360:
.text
	.align 4
	.no_dead_strip Foundation_NSData_System_Collections_Generic_IEnumerable_System_Byte_GetEnumerator
Foundation_NSData_System_Collections_Generic_IEnumerable_System_Byte_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3520]
.word 0xd2800701
bl _p_7
.word 0xb900181f
.word 0xf9400ba1
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_361:
.text
	.align 4
	.no_dead_strip Foundation_NSData_ToString
Foundation_NSData_ToString:
.file 74 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSData.cs"
.loc 74 229 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf
.word 0xf90013bf
.word 0xf9400ba0
.word 0xf9003fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2936]
bl _p_71
.word 0xf9403fa1
.word 0xf9003ba0
.word 0xd2800082
bl _p_408
.word 0xf9403ba0
.word 0xf9000fa0
.loc 74 230 0
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0xf90013a0
.word 0xf90017bf
.word 0x94000005
.word 0xf94017a0
.word 0xb4000040
bl _p_73
.word 0x1400001e
.word 0xf9002bbe
.word 0xf9400fa0
.word 0xb4000160
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xf9001ba0
.loc 74 233 0
.word 0xf9400ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9409c30
.word 0xd63f0200
.word 0xf90013a0
bl _p_37
.word 0xf90033a0
.word 0xf94033a0
.word 0xb4000060
.word 0xf94033a0
bl _p_38
.word 0x14000001
.loc 74 235 0
.word 0xf94013a0
.word 0x14000001
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_362:
.text
	.align 4
	.no_dead_strip Foundation_NSData_get_ClassHandle
Foundation_NSData_get_ClassHandle:
.file 75 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSData.g.cs"
.loc 75 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3528]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_363:
.text
	.align 4
	.no_dead_strip Foundation_NSData__ctor_intptr
Foundation_NSData__ctor_intptr:
.loc 75 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 75 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_364:
.text
	.align 4
	.no_dead_strip Foundation_NSData_Copy_Foundation_NSZone
Foundation_NSData_Copy_Foundation_NSZone:
.loc 75 173 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_365:
.text
	.align 4
	.no_dead_strip Foundation_NSData_get_Bytes
Foundation_NSData_get_Bytes:
.loc 75 505 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_63@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_63@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_366:
.text
	.align 4
	.no_dead_strip Foundation_NSData_get_Length
Foundation_NSData_get_Length:
.loc 75 518 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_64@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_64@PAGEOFF
ldr x1, [x1]
bl _p_398
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_367:
.text
	.align 4
	.no_dead_strip Foundation_NSData__cctor
Foundation_NSData__cctor:
.loc 75 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3536]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3528]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_368:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2__ctor_int
Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2__ctor_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9002001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_369:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2_System_IDisposable_Dispose
Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2_System_IDisposable_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_36a:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2_MoveNext
Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2_MoveNext:
.loc 74 0 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xb9802359
.word 0xf9400f58
.word 0x340000d9
.word 0xd2800020
.word 0x6b00033f
.word 0x54000640
.word 0xd2800000
.word 0x1400003e
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900235e
.loc 74 57 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf940e030
.word 0xd63f0200
.word 0xf9001740
.loc 74 58 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf940dc30
.word 0xd63f0200
.word 0xf9001b40
.loc 74 60 0
.word 0xd2800000
.word 0x2a0003e0
.word 0xf9001f40
.word 0x14000027
.loc 74 61 0
.word 0xf9401740
.word 0xf9401f41
.word 0xaa0103e1
.word 0x93407c21
.word 0x8b010000
.word 0x39400000
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3544]
.word 0xd2800221
bl _p_7
.word 0xf9401ba1
.word 0x39004001
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xd280003e
.word 0xb900235e
.word 0xd2800020
.word 0x1400000f
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900235e
.loc 74 60 0
.word 0xf9401f59
.word 0xf90017b9
.word 0xf94017a0
.word 0x91000400
.word 0xf9001f40
.word 0xf9401f40
.word 0xf9401b41
.word 0xeb01001f
.word 0x9a9f27e0
.word 0x35fffac0
.loc 74 63 0
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_36b:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2_System_Collections_Generic_IEnumerator_System_Object_get_Current
Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2_System_Collections_Generic_IEnumerator_System_Object_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_36c:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2_System_Collections_IEnumerator_Reset
Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2_System_Collections_IEnumerator_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_36d:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2_System_Collections_IEnumerator_get_Current
Foundation_NSData__System_Collections_IEnumerable_GetEnumeratord__2_System_Collections_IEnumerator_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_36e:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3__ctor_int
Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3__ctor_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9001801
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_36f:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3_System_IDisposable_Dispose
Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3_System_IDisposable_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_370:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3_MoveNext
Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3_MoveNext:
.loc 74 0 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xb9801b59
.word 0xf9400b58
.word 0x340000d9
.word 0xd2800020
.word 0x6b00033f
.word 0x540003e0
.word 0xd2800000
.word 0x1400002b
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9001b5e
.loc 74 67 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf940e030
.word 0xd63f0200
.word 0xf9001340
.loc 74 68 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf940dc30
.word 0xd63f0200
.word 0xf9001740
.loc 74 70 0
.word 0xd2800000
.word 0x2a0003e0
.word 0xf9001b40
.word 0x14000014
.loc 74 71 0
.word 0xf9401340
.word 0xf9401b41
.word 0xaa0103e1
.word 0x93407c21
.word 0x8b010000
.word 0x39400000
.word 0x39007340
.word 0xd280003e
.word 0xb9001b5e
.word 0xd2800020
.word 0x1400000f
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9001b5e
.loc 74 70 0
.word 0xf9401b59
.word 0xf90017b9
.word 0xf94017a0
.word 0x91000400
.word 0xf9001b40
.word 0xf9401b40
.word 0xf9401741
.word 0xeb01001f
.word 0x9a9f27e0
.word 0x35fffd20
.loc 74 72 0
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_371:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3_System_Collections_Generic_IEnumerator_System_Byte_get_Current
Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3_System_Collections_Generic_IEnumerator_System_Byte_get_Current:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39407000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_372:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3_System_Collections_IEnumerator_Reset
Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3_System_Collections_IEnumerator_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_373:
.text
	.align 4
	.no_dead_strip Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3_System_Collections_IEnumerator_get_Current
Foundation_NSData__System_Collections_Generic_IEnumerable_System_Byte_GetEnumeratord__3_System_Collections_IEnumerator_get_Current:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39407000
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3544]
.word 0xd2800221
bl _p_7
.word 0xf94013a1
.word 0x39004001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_374:
.text
	.align 4
	.no_dead_strip Foundation_NSDate_get_ClassHandle
Foundation_NSDate_get_ClassHandle:
.file 76 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSDate.g.cs"
.loc 76 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3552]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_375:
.text
	.align 4
	.no_dead_strip Foundation_NSDate__ctor_intptr
Foundation_NSDate__ctor_intptr:
.loc 76 89 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 76 91 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_376:
.text
	.align 4
	.no_dead_strip Foundation_NSDate_Copy_Foundation_NSZone
Foundation_NSDate_Copy_Foundation_NSZone:
.loc 76 132 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_377:
.text
	.align 4
	.no_dead_strip Foundation_NSDate__cctor
Foundation_NSDate__cctor:
.loc 76 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3560]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3552]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_378:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_FromObjectsAndKeys_Foundation_NSObject___Foundation_NSObject__
Foundation_NSDictionary_FromObjectsAndKeys_Foundation_NSObject___Foundation_NSObject__:
.file 77 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSDictionary.cs"
.loc 77 88 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf90013bf
.word 0xf90017bf
.word 0xf9400fa0
.word 0xb4000a60
.loc 77 90 0
.word 0xb40007da
.loc 77 92 0
.word 0xf9400fa0
.word 0xb9801800
.word 0xb9801b41
.word 0x6b01001f
.word 0x54000861
.loc 77 95 0
.word 0xf9400fa0
bl _p_390
.word 0xf90013a0
.loc 77 96 0
.word 0xaa1a03e0
bl _p_390
.word 0xf90017a0
.loc 77 97 0
.word 0xf94013a0
.word 0xf94017a1
bl _p_409
.word 0xaa0003fa
.word 0xf9001bbf
.word 0x9400000a
.word 0xf9401ba0
.word 0xb4000040
bl _p_73
.word 0xf9001fbf
.word 0x94000014
.word 0xf9401fa0
.word 0xb4000040
bl _p_73
.word 0x1400001f
.word 0xf9002fbe
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402fbe
.word 0xd61f03c0
.word 0xf90033be
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033be
.word 0xd61f03c0
.loc 77 98 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 77 91 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2863041
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 77 93 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2863181
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.loc 77 89 0
.word 0xd2862e41
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_379:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_FromObjectsAndKeys_object___object__
Foundation_NSDictionary_FromObjectsAndKeys_object___object__:
.loc 77 102 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf90013bf
.word 0xf90017bf
.word 0xf9400fa0
.word 0xb4000a60
.loc 77 104 0
.word 0xb40007da
.loc 77 106 0
.word 0xf9400fa0
.word 0xb9801800
.word 0xb9801b41
.word 0x6b01001f
.word 0x54000861
.loc 77 109 0
.word 0xf9400fa0
bl _p_410
.word 0xf90013a0
.loc 77 110 0
.word 0xaa1a03e0
bl _p_410
.word 0xf90017a0
.loc 77 111 0
.word 0xf94013a0
.word 0xf94017a1
bl _p_409
.word 0xaa0003fa
.word 0xf9001bbf
.word 0x9400000a
.word 0xf9401ba0
.word 0xb4000040
bl _p_73
.word 0xf9001fbf
.word 0x94000014
.word 0xf9401fa0
.word 0xb4000040
bl _p_73
.word 0x1400001f
.word 0xf9002fbe
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402fbe
.word 0xd61f03c0
.word 0xf90033be
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033be
.word 0xd61f03c0
.loc 77 112 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 77 105 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2863041
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 77 107 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2863181
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.loc 77 103 0
.word 0xd2862e41
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_37a:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_ContainsKeyValuePair_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject
Foundation_NSDictionary_ContainsKeyValuePair_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject:
.loc 77 149 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3568]
.word 0xf9400fa1
.word 0x9100a3a2
.word 0xf9400ba0
bl _p_411
.word 0x53001c00
.word 0x35000060
.loc 77 150 0
.word 0xd2800000
.word 0x14000010
.loc 77 152 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3576]
bl _p_412
.word 0xaa0003e3

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3568]
.word 0xf94013a1
.word 0xf94017a2
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9404c70
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_37b:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_ICollection_CopyTo_System_Array_int
Foundation_NSDictionary_System_Collections_ICollection_CopyTo_System_Array_int:
.loc 77 158 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xb4001239
.loc 77 160 0
.word 0xd2800000
.word 0x6b00035f
.word 0x54000ccb
.loc 77 162 0
.word 0xf9400320
.word 0x3940b000
.word 0xd2800021
.word 0x6b01001f
.word 0x54000d6c
.loc 77 164 0
.word 0xb9801b20
.word 0xd2800001
.word 0x6b01001f
.word 0x5400008d
.word 0xb9801b20
.word 0x6b00035f
.word 0x54000dca
.loc 77 166 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9412c30
.word 0xd63f0200
.word 0xaa0003e0
.word 0xb000340
.word 0xb9801b21
.word 0x6b01001f
.word 0x54000dec
.loc 77 168 0
.word 0xaa1803e0
.word 0xf9400301

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3584]
.word 0x92800cf0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f8
.loc 77 169 0
.word 0xaa1a03f7
.word 0x14000035
.loc 77 171 0
.word 0x9100c3a0
.word 0xf90023a0
.word 0xaa1803e0
.word 0xf9400301

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3592]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xf90003c0
.word 0xf90007c1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3600]
.word 0xd2800401
bl _p_7
.word 0xaa0003e1
.word 0x91004023
.word 0xaa0303e0
.word 0xf9401ba2
.word 0xf9000062
.word 0xd349fc03
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002002
.word 0xf9401fa0
.word 0xf9000040
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xaa1703e2
.word 0x110006f7
.word 0xaa1903e0
.word 0x3940033e
bl _p_413
.loc 77 170 0
.word 0xaa1803e0
.word 0xf9400301

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3608]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff840
.loc 77 172 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.loc 77 161 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2863e41
bl _p_68
.word 0xaa0003e1
.word 0xd28012c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 77 163 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2864101
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 77 165 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2864781
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 77 167 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2865481
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.loc 77 159 0
.word 0xd2863cc1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_37c:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_ICollection_get_Count
Foundation_NSDictionary_System_Collections_ICollection_get_Count:
.loc 77 175 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf9400021
.word 0xf9412c30
.word 0xd63f0200
.word 0xaa0003e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_37d:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_Add_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject
Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_Add_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject:
.loc 77 190 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_37e:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_Clear
Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_Clear:
.loc 77 195 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_37f:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_Contains_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject
Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_Contains_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject:
.loc 77 200 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_414
.word 0x53001c00
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_380:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_CopyTo_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject___int
Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_CopyTo_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject___int:
.loc 77 205 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xb4001119
.loc 77 207 0
.word 0xd2800000
.word 0x6b00035f
.word 0x54000ceb
.loc 77 210 0
.word 0xb9801b20
.word 0x6b00035f
.word 0x54000dcc
.loc 77 212 0
.word 0xb9801b20
.word 0x4b1a0000
.word 0xf90023a0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9412c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94023a0
.word 0xaa0103e1
.word 0x6b01001f
.word 0x54000d8b
.loc 77 215 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3616]
.word 0xd2800701
bl _p_7
.word 0xb900301f
.word 0xf9001018
.word 0x91008001
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa0003f8
.word 0x14000034
.loc 77 217 0
.word 0xaa1a03e0
.word 0xf90023a0
.word 0x1100075a
.word 0x9100a3a0
.word 0xf9001fa0
.word 0xaa1803e0
.word 0xf9400301

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3624]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401fbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf94023a0
.word 0x93407c00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000aa9
.word 0xd37cec00
.word 0x8b000320
.word 0x91008000
.word 0xf94017a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9401ba0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 77 216 0
.word 0xaa1803e0
.word 0xf9400301

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3608]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff860
.loc 77 218 0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.loc 77 208 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2866561
bl _p_68
.word 0xaa0003e1
.word 0xd28012c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 77 211 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28666e1
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 77 213 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28672a1
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.loc 77 206 0
.word 0xd2863cc1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_381:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_Remove_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject
Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_Remove_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject:
.loc 77 222 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_382:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_get_Count
Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_get_Count:
.loc 77 226 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf9400021
.word 0xf9412c30
.word 0xd63f0200
.word 0xaa0003e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_383:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_get_IsReadOnly
Foundation_NSDictionary_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_get_IsReadOnly:
.loc 77 230 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_384:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_IDictionary_Add_object_object
Foundation_NSDictionary_System_Collections_IDictionary_Add_object_object:
.loc 77 238 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_385:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_IDictionary_Clear
Foundation_NSDictionary_System_Collections_IDictionary_Clear:
.loc 77 243 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_386:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_IDictionary_GetEnumerator
Foundation_NSDictionary_System_Collections_IDictionary_GetEnumerator:
.loc 77 258 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3632]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003fa
.word 0xb400031a
.word 0xf9400340
.word 0xb9402801

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3640]
.word 0xeb02003f
.word 0x10000011
.word 0x540002a3
.word 0xf9401000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3640]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xeb1f001f
.word 0x10000011
.word 0x540000c0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_387:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_IDictionary_Remove_object
Foundation_NSDictionary_System_Collections_IDictionary_Remove_object:
.loc 77 263 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_388:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_IDictionary_get_Item_object
Foundation_NSDictionary_System_Collections_IDictionary_get_Item_object:
.loc 77 276 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1720]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803fa
.loc 77 277 0
.word 0xb5000078
.loc 77 278 0
.word 0xd2800000
.word 0x14000007
.loc 77 279 0
.word 0xf94013a0
.word 0xaa1a03e1
.word 0xf94013a2
.word 0xf9400042
.word 0xf9413050
.word 0xd63f0200
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_389:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_IDictionary_set_Item_object_object
Foundation_NSDictionary_System_Collections_IDictionary_set_Item_object_object:
.loc 77 282 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_38a:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_IDictionary_get_Keys
Foundation_NSDictionary_System_Collections_IDictionary_get_Keys:
.loc 77 287 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf9400021
.word 0xf9412830
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_38b:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_Generic_IDictionary_Foundation_NSObject_Foundation_NSObject_Add_Foundation_NSObject_Foundation_NSObject
Foundation_NSDictionary_System_Collections_Generic_IDictionary_Foundation_NSObject_Foundation_NSObject_Add_Foundation_NSObject_Foundation_NSObject:
.loc 77 300 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_38c:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_TryGetValue_T_REF_ObjCRuntime_INativeObject_T_REF_
Foundation_NSDictionary_TryGetValue_T_REF_ObjCRuntime_INativeObject_T_REF_:
.loc 77 320 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf90017af
.word 0xf9000fa0
.word 0xaa0103f9
.word 0xf90013a2
.word 0xb4000639
.loc 77 323 0
.word 0xf94013a0
.word 0xf900001f
.loc 77 325 0
.word 0xaa1903e0
.word 0xf9400321

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9400fa0
bl _p_415
.word 0xaa0003f9
.loc 77 326 0
.word 0xaa1903e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 77 327 0
.word 0xd2800000
.word 0x14000014
.loc 77 329 0
.word 0xf94017a0
bl _p_416
.word 0xaa0003ef
.word 0xaa1903e0
.word 0xd2800001
bl _p_417
.word 0xf94013a1
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 77 330 0
.word 0xd2800020
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 77 321 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2868021
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_38d:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_TryGetValue_Foundation_NSObject_Foundation_NSObject_
Foundation_NSDictionary_TryGetValue_Foundation_NSObject_Foundation_NSObject_:
.loc 77 335 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9413050
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94013a0
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.loc 77 337 0
.word 0xf9400000
.word 0xd2800001
.word 0xeb01001f
.word 0x9a9f97e0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_38e:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_Generic_IDictionary_Foundation_NSObject_Foundation_NSObject_get_Values
Foundation_NSDictionary_System_Collections_Generic_IDictionary_Foundation_NSObject_Foundation_NSObject_get_Values:
.loc 77 379 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf9400021
.word 0xf9412430
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_38f:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_System_Collections_IEnumerable_GetEnumerator
Foundation_NSDictionary_System_Collections_IEnumerable_GetEnumerator:
.loc 77 386 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3616]
.word 0xd2800701
bl _p_7
.word 0xb900301f
.word 0xf9400ba1
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_390:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_GetEnumerator
Foundation_NSDictionary_GetEnumerator:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3616]
.word 0xd2800701
bl _p_7
.word 0xb900301f
.word 0xf9400ba1
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_391:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_get_ClassHandle
Foundation_NSDictionary_get_ClassHandle:
.file 78 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSDictionary.g.cs"
.loc 78 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3648]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_392:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__ctor_intptr
Foundation_NSDictionary__ctor_intptr:
.loc 78 89 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 78 91 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_393:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_Copy_Foundation_NSZone
Foundation_NSDictionary_Copy_Foundation_NSZone:
.loc 78 196 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_394:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_FromObjectsAndKeysInternal_Foundation_NSArray_Foundation_NSArray
Foundation_NSDictionary_FromObjectsAndKeysInternal_Foundation_NSArray_Foundation_NSArray:
.loc 78 261 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3648]
.word 0xf9400001
adrp x0, L_OBJC_SELECTOR_REFERENCES_65@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_65@PAGEOFF
ldr x0, [x0]
.word 0xf90013a1
.word 0xf90017a0
.word 0xb4000099
.word 0x3940033e
.word 0xf9400b39
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400019
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xf94013a0
.word 0xf94017a1
.word 0xaa1903e2
.word 0xaa1a03e3
bl _p_302

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #2600]
bl _p_260
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_395:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_ObjectForKey_Foundation_NSObject
Foundation_NSDictionary_ObjectForKey_Foundation_NSObject:
.loc 78 355 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xb40001da
.loc 78 358 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_66@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_66@PAGEOFF
ldr x1, [x1]
.word 0x3940035e
.word 0xf9400b42
bl _p_332
bl _p_174
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 78 356 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2868021
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_396:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__AllKeys
Foundation_NSDictionary__AllKeys:
.loc 78 416 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_67@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_67@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_397:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__AllValues
Foundation_NSDictionary__AllValues:
.loc 78 428 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_68@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_68@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_398:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__ObjectForKey_intptr
Foundation_NSDictionary__ObjectForKey_intptr:
.loc 78 448 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_66@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_66@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa2
bl _p_332
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_399:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_get_Count
Foundation_NSDictionary_get_Count:
.loc 78 462 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_60@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_60@PAGEOFF
ldr x1, [x1]
bl _p_398
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_39a:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_get_Keys
Foundation_NSDictionary_get_Keys:
.loc 78 487 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_71
.word 0xf9002ba0
bl _p_72
.word 0xf9402ba0
.word 0xf90013a0
.loc 78 490 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_67@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_67@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3656]
bl _p_418
.word 0xaa0003fa
.loc 78 494 0
.word 0xf90017ba
.word 0xf9001bbf
.word 0x94000005
.word 0xf9401ba0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90027be
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.loc 78 496 0
.word 0xf94017a0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_39b:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_get_Values
Foundation_NSDictionary_get_Values:
.loc 78 519 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_71
.word 0xf9002ba0
bl _p_72
.word 0xf9402ba0
.word 0xf90013a0
.loc 78 522 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_68@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_68@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3656]
bl _p_418
.word 0xaa0003fa
.loc 78 526 0
.word 0xf90017ba
.word 0xf9001bbf
.word 0x94000005
.word 0xf9401ba0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90027be
.word 0xf94013a0
.word 0xb4000160
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.loc 78 528 0
.word 0xf94017a0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_39c:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__cctor
Foundation_NSDictionary__cctor:
.loc 78 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3664]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3648]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_39d:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__GetEnumeratord__64__ctor_int
Foundation_NSDictionary__GetEnumeratord__64__ctor_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9003001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_39e:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__GetEnumeratord__64_System_IDisposable_Dispose
Foundation_NSDictionary__GetEnumeratord__64_System_IDisposable_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_39f:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__GetEnumeratord__64_MoveNext
Foundation_NSDictionary__GetEnumeratord__64_MoveNext:
.loc 77 0 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xb9803359
.word 0xf9401358
.word 0x340000d9
.word 0xd2800020
.word 0x6b00033f
.word 0x54000aa0
.word 0xd2800000
.word 0x14000060
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900335e
.loc 77 391 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9412830
.word 0xd63f0200
.word 0xf9001740
.word 0x9100a341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xb900375f
.word 0x14000044
.word 0xf9401740
.word 0xb9803741
.word 0x93407c21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000929
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0xf9400019
.loc 77 392 0
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xf9400302
.word 0xf9413050
.word 0xd63f0200
.word 0xaa0003e2
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0x9100e3a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3568]
.word 0xaa1903e1
bl _p_419
.word 0xf9401fa0
.word 0xf90017a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0x91004342
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9401ba0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xd280003e
.word 0xb900335e
.word 0xd2800020
.word 0x1400000e
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900335e
.word 0xb9803740
.word 0x11000400
.word 0xb9003740
.loc 77 391 0
.word 0xb9803740
.word 0xf9401741
.word 0xb9801821
.word 0x6b01001f
.word 0x54fff72b
.word 0xf900175f
.loc 77 394 0
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_3a0:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__GetEnumeratord__64_System_Collections_Generic_IEnumerator_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_get_Current
Foundation_NSDictionary__GetEnumeratord__64_System_Collections_Generic_IEnumerator_System_Collections_Generic_KeyValuePair_Foundation_NSObject_Foundation_NSObject_get_Current:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0x91004000
.word 0xf9400001
.word 0xf9000ba1
.word 0xf9400400
.word 0xf9000fa0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3a1:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__GetEnumeratord__64_System_Collections_IEnumerator_Reset
Foundation_NSDictionary__GetEnumeratord__64_System_Collections_IEnumerator_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3a2:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary__GetEnumeratord__64_System_Collections_IEnumerator_get_Current
Foundation_NSDictionary__GetEnumeratord__64_System_Collections_IEnumerator_get_Current:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x91004000
.word 0xf9400001
.word 0xf9000fa1
.word 0xf9400400
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3568]
.word 0xd2800401
bl _p_7
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002022
.word 0xf94013a1
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3a3:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF__ctor_intptr
Foundation_NSDictionary_2_TKey_REF_TValue_REF__ctor_intptr:
.file 79 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSDictionary_2.cs"
.loc 79 59 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_420
.loc 79 61 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3a4:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_ObjectForKey_TKey_REF
Foundation_NSDictionary_2_TKey_REF_TValue_REF_ObjectForKey_TKey_REF:
.loc 79 101 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000360
.loc 79 104 0
.word 0xf9400ba0
.word 0xf90017a0
.word 0xf9400fa0
.word 0xf9400fa1
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94017a0
bl _p_415
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_421
.word 0xaa0003ef
.word 0xf94013a0
.word 0xd2800001
bl _p_422
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 79 102 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2868021
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_3a5:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_get_Keys
Foundation_NSDictionary_2_TKey_REF_TValue_REF_get_Keys:
.loc 79 109 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_71
.word 0xf9002ba0
bl _p_72
.word 0xf9402ba0
.word 0xf9000fa0
.loc 79 110 0
.word 0xf9400ba0
bl _p_423
.word 0xf9002ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_424
.word 0xaa0003ef
.word 0xf9402ba0
bl _p_425
.word 0xf90013a0
.word 0xf90017bf
.word 0x94000005
.word 0xf94017a0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90023be
.word 0xf9400fa0
.word 0xb4000160
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.loc 79 111 0
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_3a6:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_get_Values
Foundation_NSDictionary_2_TKey_REF_TValue_REF_get_Values:
.loc 79 125 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fbf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_71
.word 0xf9002ba0
bl _p_72
.word 0xf9402ba0
.word 0xf9000fa0
.loc 79 126 0
.word 0xf9400ba0
bl _p_426
.word 0xf9002ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_427
.word 0xaa0003ef
.word 0xf9402ba0
bl _p_428
.word 0xf90013a0
.word 0xf90017bf
.word 0x94000005
.word 0xf94017a0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90023be
.word 0xf9400fa0
.word 0xb4000160
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.loc 79 127 0
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_3a7:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_IDictionary_TKey_TValue_Add_TKey_REF_TValue_REF
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_IDictionary_TKey_TValue_Add_TKey_REF_TValue_REF:
.loc 79 261 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3a8:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_IDictionary_TKey_TValue_get_Values
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_IDictionary_TKey_TValue_get_Values:
.loc 79 291 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_429
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3a9:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Add_System_Collections_Generic_KeyValuePair_2_TKey_REF_TValue_REF
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Add_System_Collections_Generic_KeyValuePair_2_TKey_REF_TValue_REF:
.loc 79 299 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3aa:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Clear
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Clear:
.loc 79 304 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3ab:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Contains_System_Collections_Generic_KeyValuePair_2_TKey_REF_TValue_REF
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Contains_System_Collections_Generic_KeyValuePair_2_TKey_REF_TValue_REF:
.loc 79 310 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017bf
.word 0xf9400ba0
.word 0xf9001ba0
.word 0x910063a0
.word 0xf90027a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_430
.word 0xaa0003e1
.word 0xf94027a0
.word 0xf9400000
.word 0xf9001fa0
.word 0x9100a3a0
.word 0xf90023a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_431
.word 0xaa0003ef
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xf94023a2
bl _p_432
.word 0x53001c00
.word 0x35000060
.loc 79 311 0
.word 0xd2800000
.word 0x1400000e
.loc 79 313 0
.word 0xf94017a0
.word 0xf9001ba0
.word 0x910063a0
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_430
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xf9400421
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_3ac:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_CopyTo_System_Collections_Generic_KeyValuePair_2_TKey_REF_TValue_REF___int
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_CopyTo_System_Collections_Generic_KeyValuePair_2_TKey_REF_TValue_REF___int:
.loc 79 318 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xf90023bf
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xb40013b9
.loc 79 320 0
.word 0xd2800000
.word 0x6b00035f
.word 0x54000f8b
.loc 79 322 0
.word 0xb9801b38
.loc 79 323 0
.word 0xaa1803e0
.word 0xd2800001
.word 0x6b01001f
.word 0x5400006d
.word 0x6b18035f
.word 0x54000fea
.loc 79 325 0
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9412c30
.word 0xd63f0200
.word 0xaa0003e0
.word 0xb000340
.word 0x6b18001f
.word 0x5400100c
.loc 79 328 0
.word 0xaa1a03f8
.loc 79 329 0
.word 0xf94017a0
.word 0xf9003ba0
.word 0xf94017a0
.word 0xf9400000
bl _p_433
.word 0xaa0003ef
.word 0xf9403ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90023a0
.word 0x14000036
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94017a0
.word 0xf9400000
bl _p_434
.word 0xaa0003ef
.word 0xf9403ba1
.word 0x9100c3a0
.word 0xf90027a0
.word 0xaa0103e0
.word 0xf9400021
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xf90003c0
.word 0xf90007c1
.loc 79 330 0
.word 0xaa1803e0
.word 0x11000718
.word 0x93407c00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000d69
.word 0xd37cec00
.word 0x8b000320
.word 0x91008000
.word 0xf9401ba1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9401fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 79 329 0
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3608]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff800
.word 0xf9002bbf
.word 0x94000005
.word 0xf9402ba0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90037be
.word 0xf94023a0
.word 0xb4000160
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94037be
.word 0xd61f03c0
.loc 79 331 0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.loc 79 321 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2863e41
bl _p_68
.word 0xaa0003e1
.word 0xd28012c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 79 324 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2864781
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 79 326 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2869421
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.loc 79 319 0
.word 0xd2863cc1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_3ad:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Remove_System_Collections_Generic_KeyValuePair_2_TKey_REF_TValue_REF
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Remove_System_Collections_Generic_KeyValuePair_2_TKey_REF_TValue_REF:
.loc 79 335 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3ae:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_get_Count
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_get_Count:
.loc 79 340 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_435
.word 0xaa0003e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3af:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_get_IsReadOnly
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_get_IsReadOnly:
.loc 79 346 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3b0:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumerator
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumerator:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_436
.word 0xd2800701
bl _p_7
.word 0xf90013a0
.word 0xd2800001
bl _p_437
.word 0xf94013a3
.word 0xaa0303e2
.word 0xaa0203e0
.word 0xf9400ba1
.word 0xf9001061
.word 0x91008042
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3b1:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_IEnumerable_GetEnumerator
Foundation_NSDictionary_2_TKey_REF_TValue_REF_System_Collections_IEnumerable_GetEnumerator:
.loc 79 363 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf90013a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3616]
.word 0xd2800701
bl _p_7
.word 0xf94013a1
.word 0xb900301f
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3b2:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF__ctor_int
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF__ctor_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xb9801ba1
.word 0xb9003001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3b3:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF_System_IDisposable_Dispose
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF_System_IDisposable_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3b4:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF_MoveNext
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF_MoveNext:
.loc 79 0 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xf94013a0
.word 0xb980301a
.word 0xf94013a0
.word 0xf9401019
.word 0x340000da
.word 0xd2800020
.word 0x6b00035f
.word 0x54000c00
.word 0xd2800000
.word 0x14000071
.word 0xf94013a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900301e
.loc 79 354 0
.word 0xf94013a0
.word 0xf9002ba0
.word 0xaa1903e0
bl _p_438
.word 0xf9402ba1
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0xb900341f
.word 0x1400004f
.word 0xf94013a0
.word 0xf9401400
.word 0xf94013a1
.word 0xb9803421
.word 0x93407c21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000a89
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0xf940001a
.loc 79 355 0
.word 0xf94013a0
.word 0xf9002ba0
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_439
.word 0xf90033a0
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0x9100e3a0
.word 0xf9002fa0
.word 0xf94013a0
.word 0xf9400000
bl _p_440
.word 0xaa0003ef
.word 0xf9402fa0
.word 0xf94033a2
.word 0xaa1a03e1
bl _p_441
.word 0xf9402ba0
.word 0xf9401fa1
.word 0xf90017a1
.word 0xf94023a1
.word 0xf9001ba1
.word 0x91004002
.word 0xaa0203e0
.word 0xf94017a1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9401ba0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0xd280003e
.word 0xb900301e
.word 0xd2800020
.word 0x14000014
.word 0xf94013a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900301e
.word 0xf94013a0
.word 0xf94013a1
.word 0xb9803421
.word 0x11000421
.word 0xb9003401
.loc 79 354 0
.word 0xf94013a0
.word 0xb9803400
.word 0xf94013a1
.word 0xf9401421
.word 0xb9801821
.word 0x6b01001f
.word 0x54fff58b
.word 0xf94013a0
.word 0xf900141f
.loc 79 357 0
.word 0xd2800000
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_3b5:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF_System_Collections_Generic_IEnumerator_System_Collections_Generic_KeyValuePair_TKey_TValue_get_Current
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF_System_Collections_Generic_IEnumerator_System_Collections_Generic_KeyValuePair_TKey_TValue_get_Current:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf94013a0
.word 0x91004000
.word 0xf9400001
.word 0xf9000ba1
.word 0xf9400400
.word 0xf9000fa0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3b6:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF_System_Collections_IEnumerator_Reset
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF_System_Collections_IEnumerator_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3b7:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF_System_Collections_IEnumerator_get_Current
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_REF_TValue_REF_System_Collections_IEnumerator_get_Current:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x91004000
.word 0xf9400001
.word 0xf9000fa1
.word 0xf9400400
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_442
.word 0xd2800401
bl _p_7
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002022
.word 0xf94013a1
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3b8:
.text
	.align 4
	.no_dead_strip Foundation_NSErrorException__ctor_Foundation_NSError
Foundation_NSErrorException__ctor_Foundation_NSError:
.file 80 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSErrorException.cs"
.loc 80 32 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
bl _p_379
.loc 80 34 0
.word 0xf9400fa0
.word 0xb4000240
.loc 80 36 0
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9004420
.word 0x91022021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 80 37 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 80 35 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd286a541
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_3b9:
.text
	.align 4
	.no_dead_strip Foundation_NSErrorException_get_Message
Foundation_NSErrorException_get_Message:
.loc 80 61 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9404401
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9409c30
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3ba:
.text
	.align 4
	.no_dead_strip Foundation_NSNull_get_Null
Foundation_NSNull_get_Null:
.file 81 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSNull.cs"
.loc 81 11 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3672]
.word 0xf9400000
.word 0xb50000e0
.loc 81 12 0
bl _p_443
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3672]
.word 0xf9000001
.loc 81 13 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3672]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3bb:
.text
	.align 4
	.no_dead_strip Foundation_NSNull_get_ClassHandle
Foundation_NSNull_get_ClassHandle:
.file 82 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSNull.g.cs"
.loc 82 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3680]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3bc:
.text
	.align 4
	.no_dead_strip Foundation_NSNull__ctor_intptr
Foundation_NSNull__ctor_intptr:
.loc 82 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 82 90 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3bd:
.text
	.align 4
	.no_dead_strip Foundation_NSNull_Copy_Foundation_NSZone
Foundation_NSNull_Copy_Foundation_NSZone:
.loc 82 97 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3be:
.text
	.align 4
	.no_dead_strip Foundation_NSNull_get__Null
Foundation_NSNull_get__Null:
.loc 82 140 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3680]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_69@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_69@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3688]
bl _p_444
.loc 82 141 0
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3bf:
.text
	.align 4
	.no_dead_strip Foundation_NSNull__cctor
Foundation_NSNull__cctor:
.loc 82 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3696]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3680]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3c0:
.text
	.align 4
	.no_dead_strip Foundation_NSRunLoop_get_ClassHandle
Foundation_NSRunLoop_get_ClassHandle:
.file 83 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSRunLoop.g.cs"
.loc 83 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3704]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3c1:
.text
	.align 4
	.no_dead_strip Foundation_NSRunLoop__ctor_intptr
Foundation_NSRunLoop__ctor_intptr:
.loc 83 62 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 83 64 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3c2:
.text
	.align 4
	.no_dead_strip Foundation_NSRunLoop_get_Main
Foundation_NSRunLoop_get_Main:
.loc 83 287 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3704]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_70@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_70@PAGEOFF
ldr x1, [x1]
bl _p_210

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3712]
bl _p_445
.loc 83 288 0
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3c3:
.text
	.align 4
	.no_dead_strip Foundation_NSRunLoop_get_NSDefaultRunLoopMode
Foundation_NSRunLoop_get_NSDefaultRunLoopMode:
.loc 83 298 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3720]
.word 0xf9400000
.word 0xd2800001
bl _p_300
.word 0x53001c00
.word 0x340001c0
.loc 83 299 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1960]
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3728]
bl _p_249
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3720]
.word 0xf9000001
.loc 83 300 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3720]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3c4:
.text
	.align 4
	.no_dead_strip Foundation_NSRunLoop__cctor
Foundation_NSRunLoop__cctor:
.loc 83 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3736]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3704]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3c5:
.text
	.align 4
	.no_dead_strip Foundation_NSString_CreateWithCharacters_intptr_string_bool
Foundation_NSString_CreateWithCharacters_intptr_string_bool:
.file 84 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSString.cs"
.loc 84 98 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xaa0003f8
.word 0xf90013a1
.word 0xf90017a2
.word 0xf94013b7
.word 0xf94013a0
.word 0xb4000040
.word 0x910052f7
.loc 84 102 0
adrp x1, L_OBJC_SELECTOR_REFERENCES_71@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_71@PAGEOFF
ldr x1, [x1]
.word 0xf94013a0
.word 0xb9801000
.word 0x93407c03
.word 0xaa1803e0
.word 0xaa1703e2
bl _p_302
.word 0xaa0003f8
.loc 84 105 0
.word 0x3940a3a0
.word 0x34000060
.loc 84 106 0
.word 0xaa1803e0
bl _p_446
.loc 84 108 0
.word 0xaa1803e0
.word 0xa94163b7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3c6:
.text
	.align 4
	.no_dead_strip Foundation_NSString_CreateNative_string
Foundation_NSString_CreateNative_string:
.loc 84 115 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800001
bl _p_447
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3c7:
.text
	.align 4
	.no_dead_strip Foundation_NSString_CreateNative_string_bool
Foundation_NSString_CreateNative_string_bool:
.loc 84 120 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xb50000c0
.loc 84 121 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0x1400000c
.loc 84 126 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3744]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_72@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_72@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0xf9400ba1
.word 0x394063a2
.loc 84 129 0
bl _p_448
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3c8:
.text
	.align 4
	.no_dead_strip Foundation_NSString_ReleaseNative_intptr
Foundation_NSString_ReleaseNative_intptr:
.loc 84 134 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_449
.loc 84 135 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3c9:
.text
	.align 4
	.no_dead_strip Foundation_NSString__ctor_string
Foundation_NSString__ctor_string:
.loc 84 137 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
bl _p_450
.loc 84 138 0
.word 0xf9400fa0
.word 0xb4000180
.loc 84 141 0
.word 0xf9400ba0
.word 0xf9400800
.word 0xf9400fa1
.word 0xd2800002
bl _p_448
.word 0xaa0003e1
.word 0xf9400ba0
bl _p_118
.loc 84 142 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 84 139 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd286bcc1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_3ca:
.text
	.align 4
	.no_dead_strip Foundation_NSString_ToString
Foundation_NSString_ToString:
.loc 84 146 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3cb:
.text
	.align 4
	.no_dead_strip Foundation_NSString_FromHandle_intptr
Foundation_NSString_FromHandle_intptr:
.loc 84 165 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400ba0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 84 166 0
.word 0xd2800000
.word 0x14000007
.loc 84 171 0
adrp x1, L_OBJC_SELECTOR_REFERENCES_73@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_73@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba0
bl _p_210
bl _p_84
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3cc:
.text
	.align 4
	.no_dead_strip Foundation_NSString_Equals_Foundation_NSString_Foundation_NSString
Foundation_NSString_Equals_Foundation_NSString_Foundation_NSString:
.loc 84 177 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xeb1a033f
.word 0x54000061
.loc 84 178 0
.word 0xd2800020
.word 0x14000014
.loc 84 180 0
.word 0xb4000059
.word 0xb500007a
.loc 84 181 0
.word 0xd2800000
.word 0x14000010
.loc 84 183 0
.word 0x3940033e
.word 0xf9400b20
.word 0x3940035e
.word 0xf9400b41
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000060
.loc 84 184 0
.word 0xd2800020
.word 0x14000007
.loc 84 185 0
.word 0x3940035e
.word 0xf9400b41
.word 0xaa1903e0
.word 0x3940033e
bl _p_451
.word 0x53001c00
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3cd:
.text
	.align 4
	.no_dead_strip Foundation_NSString_op_Equality_Foundation_NSString_Foundation_NSString
Foundation_NSString_op_Equality_Foundation_NSString_Foundation_NSString:
.loc 84 190 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_452
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3ce:
.text
	.align 4
	.no_dead_strip Foundation_NSString_op_Inequality_Foundation_NSString_Foundation_NSString
Foundation_NSString_op_Inequality_Foundation_NSString_Foundation_NSString:
.loc 84 195 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_452
.word 0x53001c00
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3cf:
.text
	.align 4
	.no_dead_strip Foundation_NSString_Equals_object
Foundation_NSString_Equals_object:
.loc 84 200 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf94013b8
.word 0xf94013a0
.word 0xeb1f001f
.word 0x54000180
.word 0xf94013a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1992]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xf9400fa0
.word 0xaa1803e1
bl _p_452
.word 0x53001c00
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3d0:
.text
	.align 4
	.no_dead_strip Foundation_NSString_GetHashCode
Foundation_NSString_GetHashCode:
.loc 84 277 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_453
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3d1:
.text
	.align 4
	.no_dead_strip Foundation_NSString_get_ClassHandle
Foundation_NSString_get_ClassHandle:
.file 85 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSString.g.cs"
.loc 85 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3744]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3d2:
.text
	.align 4
	.no_dead_strip Foundation_NSString__ctor_intptr
Foundation_NSString__ctor_intptr:
.loc 85 89 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 85 91 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3d3:
.text
	.align 4
	.no_dead_strip Foundation_NSString__ctor_Foundation_NSData_Foundation_NSStringEncoding
Foundation_NSString__ctor_Foundation_NSData_Foundation_NSStringEncoding:
.loc 85 96 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xaa0103f9
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400fa0
bl _p_251
.loc 85 98 0
.word 0xb4000299
.loc 85 102 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_74@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_74@PAGEOFF
ldr x1, [x1]
.word 0x3940033e
.word 0xf9400b22
.word 0xf94013a3
bl _p_454
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3752]
.word 0xf9400fa0
bl _p_253
.loc 85 103 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 85 99 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd286c081
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_3d4:
.text
	.align 4
	.no_dead_strip Foundation_NSString_Copy_Foundation_NSZone
Foundation_NSString_Copy_Foundation_NSZone:
.loc 85 315 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3d5:
.text
	.align 4
	.no_dead_strip Foundation_NSString_IsEqualTo_intptr
Foundation_NSString_IsEqualTo_intptr:
.loc 85 568 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_75@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_75@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa2
bl _p_144
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3d6:
.text
	.align 4
	.no_dead_strip Foundation_NSString__cctor
Foundation_NSString__cctor:
.loc 85 89 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3408]
.word 0xf9400000
.word 0xf9000fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2936]
bl _p_71
.word 0xf9400fa1
.word 0xf9000ba0
bl _p_313
.word 0xf9400ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3760]
.word 0xf9000001
.loc 85 50 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3768]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3744]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3d7:
.text
	.align 4
	.no_dead_strip Foundation_NSTimer_CreateRepeatingScheduledTimer_System_TimeSpan_System_Action_1_Foundation_NSTimer
Foundation_NSTimer_CreateRepeatingScheduledTimer_System_TimeSpan_System_Action_1_Foundation_NSTimer:
.file 86 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSTimer.cs"
.loc 86 40 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf90013a1
.word 0xf9400ba0
.word 0x9e620000
.word 0xd295e91e
.word 0xf2b3579e
.word 0xf2dafe5e
.word 0xf2e7cf5e
.word 0x9e6703c1
.word 0x1e610800
.word 0xfd001fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3776]
bl _p_71
.word 0xf9001ba0
.word 0xf94013a1
bl _p_455
.word 0xf9401ba0
.word 0xfd401fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3784]
.word 0xf9400021
.word 0xd2800002
.word 0xd2800023
bl _p_456
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3d8:
.text
	.align 4
	.no_dead_strip Foundation_NSTimer_get_ClassHandle
Foundation_NSTimer_get_ClassHandle:
.file 87 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSTimer.g.cs"
.loc 87 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3792]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3d9:
.text
	.align 4
	.no_dead_strip Foundation_NSTimer__ctor_intptr
Foundation_NSTimer__ctor_intptr:
.loc 87 62 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 87 64 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3da:
.text
	.align 4
	.no_dead_strip Foundation_NSTimer_CreateScheduledTimer_double_Foundation_NSObject_ObjCRuntime_Selector_Foundation_NSObject_bool
Foundation_NSTimer_CreateScheduledTimer_double_Foundation_NSObject_ObjCRuntime_Selector_Foundation_NSObject_bool:
.loc 87 117 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xfd0017a0
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xf9001ba3
.word 0xb40006d7
.loc 87 119 0
.word 0xaa1803e0
.word 0xd2800001
bl _p_183
.word 0x53001c00
.word 0x35000760
.loc 87 121 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3792]
.word 0xf9400003
adrp x2, L_OBJC_SELECTOR_REFERENCES_76@PAGE
add x2, x2, L_OBJC_SELECTOR_REFERENCES_76@PAGEOFF
ldr x2, [x2]
.word 0xfd4017a0
.word 0x394002fe
.word 0xf9400ae1
.word 0x3940031e
.word 0xf9400f00
.word 0xaa0303f8
.word 0xaa0203f7
.word 0xfd001fa0
.word 0xf90023a1
.word 0xf90027a0
.word 0xb40000f9
.word 0xfd401fa0
.word 0x3940033e
.word 0xf9400b20
.word 0xfd001fa0
.word 0xaa0003f9
.word 0x14000008
.word 0xfd401fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xfd001fa0
.word 0xaa0003f9
.word 0xfd401fa0
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xf94023a2
.word 0xf94027a3
.word 0xaa1903e4
.word 0x3940c3a5
bl _p_457

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3800]
bl _p_458
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.loc 87 118 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd284aae1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 87 120 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd286ce01
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_3db:
.text
	.align 4
	.no_dead_strip Foundation_NSTimer_Invalidate
Foundation_NSTimer_Invalidate:
.loc 87 197 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_17@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_17@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 87 198 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3dc:
.text
	.align 4
	.no_dead_strip Foundation_NSTimer_Dispose_bool
Foundation_NSTimer_Dispose_bool:
.loc 87 297 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x394063a0
.word 0x340000c0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf9400021
.word 0xf940d030
.word 0xd63f0200
.loc 87 298 0
.word 0xf9400ba0
.word 0x394063a1
bl _p_299
.loc 87 299 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3dd:
.text
	.align 4
	.no_dead_strip Foundation_NSTimer__cctor
Foundation_NSTimer__cctor:
.loc 87 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3808]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3792]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3de:
.text
	.align 4
	.no_dead_strip Foundation_NSUrl_Equals_Foundation_NSUrl
Foundation_NSUrl_Equals_Foundation_NSUrl:
.file 88 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSUrl.cs"
.loc 88 60 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xaa1a03e0
.word 0xd2800001
bl _p_459
.word 0x53001c00
.word 0x34000060
.loc 88 61 0
.word 0xd2800000
.word 0x1400001d
.loc 88 63 0
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.word 0x3940035e
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x35000100
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xf9400322
.word 0xf9402c50
.word 0xd63f0200
.word 0x53001c00
.word 0x14000007
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xf9400322
.word 0xf940dc50
.word 0xd63f0200
.word 0x53001c00
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3df:
.text
	.align 4
	.no_dead_strip Foundation_NSUrl_ToString
Foundation_NSUrl_ToString:
.loc 88 95 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xf9400fa1
.word 0xf9400021
.word 0xf940d830
.word 0xd63f0200
.word 0xaa0003f9
.word 0xb5000080
.word 0xf9400fa0
bl _p_460
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3e0:
.text
	.align 4
	.no_dead_strip Foundation_NSUrl_op_Equality_Foundation_NSUrl_Foundation_NSUrl
Foundation_NSUrl_op_Equality_Foundation_NSUrl_Foundation_NSUrl:
.loc 88 159 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xeb00033f
.word 0x54000061
.loc 88 160 0
.word 0xd2800020
.word 0x1400000b
.loc 88 162 0
.word 0xb4000079
.word 0xf9400fa0
.word 0xb5000060
.loc 88 163 0
.word 0xd2800000
.word 0x14000006
.loc 88 165 0
.word 0xaa1903e0
.word 0xf9400fa1
.word 0x3940033e
bl _p_461
.word 0x53001c00
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3e1:
.text
	.align 4
	.no_dead_strip Foundation_NSUrl_get_ClassHandle
Foundation_NSUrl_get_ClassHandle:
.file 89 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSUrl.g.cs"
.loc 89 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3816]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3e2:
.text
	.align 4
	.no_dead_strip Foundation_NSUrl__ctor_intptr
Foundation_NSUrl__ctor_intptr:
.loc 89 76 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 89 78 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3e3:
.text
	.align 4
	.no_dead_strip Foundation_NSUrl_Copy_Foundation_NSZone
Foundation_NSUrl_Copy_Foundation_NSZone:
.loc 89 271 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3e4:
.text
	.align 4
	.no_dead_strip Foundation_NSUrl_IsEqual_Foundation_NSUrl
Foundation_NSUrl_IsEqual_Foundation_NSUrl:
.loc 89 570 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400800
.word 0xf9001fa0
adrp x0, L_OBJC_SELECTOR_REFERENCES_77@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_77@PAGEOFF
ldr x0, [x0]
.word 0xf9001ba0
.word 0xaa1a03e0
.word 0xd2800001
bl _p_459
.word 0xf9401ba1
.word 0xf9401fa2
.word 0x53001c00
.word 0xaa0203f9
.word 0xf90017a1
.word 0x35000080
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3e5:
.text
	.align 4
	.no_dead_strip Foundation_NSUrl_get_AbsoluteString
Foundation_NSUrl_get_AbsoluteString:
.loc 89 819 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_78@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_78@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3e6:
.text
	.align 4
	.no_dead_strip Foundation_NSUrl__cctor
Foundation_NSUrl__cctor:
.loc 89 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3824]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3816]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_3e7:
.text
	.align 4
	.no_dead_strip Foundation_ExportAttribute__ctor_string
Foundation_ExportAttribute__ctor_string:
.file 90 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/ExportAttribute.cs"
.loc 90 57 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.loc 90 58 0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900181e
.loc 90 59 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3e8:
.text
	.align 4
	.no_dead_strip Foundation_ExportAttribute__ctor_string_ObjCRuntime_ArgumentSemantic
Foundation_ExportAttribute__ctor_string_ObjCRuntime_ArgumentSemantic:
.loc 90 62 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.loc 90 63 0
.word 0xb98023a1
.word 0xb9001801
.loc 90 64 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3e9:
.text
	.align 4
	.no_dead_strip Foundation_OutletAttribute__ctor
Foundation_OutletAttribute__ctor:
.loc 90 96 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800001
bl _p_462
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3ea:
.text
	.align 4
	.no_dead_strip Foundation_ActionAttribute__ctor_string
Foundation_ActionAttribute__ctor_string:
.loc 90 103 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_462
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3eb:
.text
	.align 4
	.no_dead_strip Foundation_ModelAttribute__ctor
Foundation_ModelAttribute__ctor:
.file 91 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/ModelAttribute.cs"
.loc 91 30 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3ec:
.text
	.align 4
	.no_dead_strip Foundation_ModelNotImplementedException__ctor
Foundation_ModelNotImplementedException__ctor:
.file 92 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/ModelNotImplementedException.cs"
.loc 92 27 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_379
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3ed:
.text
	.align 4
	.no_dead_strip Foundation_You_Should_Not_Call_base_In_This_Method__ctor
Foundation_You_Should_Not_Call_base_In_This_Method__ctor:
.loc 92 31 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_379
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3ee:
.text
	.align 4
	.no_dead_strip Foundation_NSDispatcher__ctor
Foundation_NSDispatcher__ctor:
.file 93 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSAction.cs"
.loc 93 39 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_450
.loc 93 41 0
.word 0xf9400ba0
.word 0xd2800001
bl _p_306
.loc 93 42 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3ef:
.text
	.align 4
	.no_dead_strip Foundation_NSDispatcher__cctor
Foundation_NSDispatcher__cctor:
.loc 93 37 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3832]
.word 0xf9000fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1696]
.word 0xd2800401
bl _p_7
.word 0xf9400fa1
.word 0xf9000ba0
bl _p_463
.word 0xf9400ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3840]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3f1:
.text
	.align 4
	.no_dead_strip Foundation_NSSynchronizationContextDispatcher__ctor_System_Threading_SendOrPostCallback_object
Foundation_NSSynchronizationContextDispatcher__ctor_System_Threading_SendOrPostCallback_object:
.loc 93 72 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xaa1803e0
bl _p_464
.loc 93 74 0
.word 0xf9400fa0
.word 0xb40003e0
.loc 93 77 0
.word 0xf9400fa0
.word 0xf9001700
.word 0x9100a301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 93 78 0
.word 0xf94013a0
.word 0xf9001b00
.word 0x9100c301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 93 79 0
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 93 75 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd286ef61
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_3f2:
.text
	.align 4
	.no_dead_strip Foundation_NSSynchronizationContextDispatcher_Apply
Foundation_NSSynchronizationContextDispatcher_Apply:
.loc 93 81 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401402
.word 0xf9401801
.word 0xaa0203e0
.word 0xf90013a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3f3:
.text
	.align 4
	.no_dead_strip Foundation_NSTimerActionDispatcher__ctor_System_Action_1_Foundation_NSTimer
Foundation_NSTimerActionDispatcher__ctor_System_Action_1_Foundation_NSTimer:
.loc 93 92 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xaa1903e0
bl _p_450
.loc 93 94 0
.word 0xf9400fa0
.word 0xb40002a0
.loc 93 97 0
.word 0xf9400fa0
.word 0xf9001720
.word 0x9100a321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 93 98 0
.word 0xaa1903e0
.word 0xd2800001
bl _p_306
.loc 93 99 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 93 95 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd285c321
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_3f4:
.text
	.align 4
	.no_dead_strip Foundation_NSTimerActionDispatcher_Fire_Foundation_NSTimer
Foundation_NSTimerActionDispatcher_Fire_Foundation_NSTimer:
.loc 93 105 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9401402
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf90013a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94013a0
.loc 93 106 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3f5:
.text
	.align 4
	.no_dead_strip Foundation_NSTimerActionDispatcher__cctor
Foundation_NSTimerActionDispatcher__cctor:
.loc 93 88 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3848]
.word 0xf9000fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1696]
.word 0xd2800401
bl _p_7
.word 0xf9400fa1
.word 0xf9000ba0
bl _p_463
.word 0xf9400ba1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3784]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3f6:
.text
	.align 4
	.no_dead_strip Foundation_NSAsyncDispatcher__ctor
Foundation_NSAsyncDispatcher__ctor:
.loc 93 112 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_464
.loc 93 114 0
.word 0x910063a0
.word 0xf90013a0
.word 0xf9400ba0
bl _p_83
.word 0xf94013be
.word 0xf90003c0
.word 0xf9400ba0
.word 0x9100a000
.word 0xb9801ba1
.word 0xb9000001
.loc 93 115 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3f7:
.text
	.align 4
	.no_dead_strip Foundation_NSAsyncDispatcher_Apply
Foundation_NSAsyncDispatcher_Apply:
.loc 93 119 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xb9001bbf
.word 0xf9400ba0
.word 0x9100a000
.word 0xb9800000
.word 0xb9001ba0
.word 0x910063a0
bl _p_190
.loc 93 131 0
.word 0xf9400ba0
bl _p_397
.loc 93 133 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3f8:
.text
	.align 4
	.no_dead_strip Foundation_NSAsyncSynchronizationContextDispatcher__ctor_System_Threading_SendOrPostCallback_object
Foundation_NSAsyncSynchronizationContextDispatcher__ctor_System_Threading_SendOrPostCallback_object:
.loc 93 166 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xaa1803e0
bl _p_465
.loc 93 168 0
.word 0xf9400fa0
.word 0xb40003e0
.loc 93 171 0
.word 0xf9400fa0
.word 0xf9001b00
.word 0x9100c301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 93 172 0
.word 0xf94013a0
.word 0xf9001f00
.word 0x9100e301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 93 173 0
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 93 169 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd286ef61
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_3f9:
.text
	.align 4
	.no_dead_strip Foundation_NSAsyncSynchronizationContextDispatcher_Apply
Foundation_NSAsyncSynchronizationContextDispatcher_Apply:
.loc 93 178 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401802
.word 0xf9400ba0
.word 0xf9401c01
.word 0xaa0203e0
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.loc 93 179 0
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x1400000a
.word 0xf9001bbe
.loc 93 180 0
.word 0xf9400ba0
.word 0xf900181f
.loc 93 181 0
.word 0xf9400ba0
.word 0xf9001c1f
.loc 93 182 0
.word 0xf9400ba0
bl _p_466
.loc 93 183 0
.word 0xf9401bbe
.word 0xd61f03c0
.loc 93 184 0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_3fa:
.text
	.align 4
	.no_dead_strip Foundation_NSAutoreleasePool_get_ClassHandle
Foundation_NSAutoreleasePool_get_ClassHandle:
.file 94 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSAutoreleasePool.cs"
.loc 94 39 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3856]
bl _p_199
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3fb:
.text
	.align 4
	.no_dead_strip Foundation_NSAutoreleasePool__ctor
Foundation_NSAutoreleasePool__ctor:
.loc 94 42 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xaa1a03e0
bl _p_251
.loc 94 44 0
.word 0xf9400340
.word 0xf9400c00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3864]
.word 0xeb01001f
.word 0x9a9f17e1
.word 0xaa1a03e0
bl _p_306
.loc 94 45 0
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000140
.loc 94 46 0
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_58@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_58@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0xaa0003e1
.word 0xaa1a03e0
bl _p_118
.loc 94 47 0
.word 0x1400000a
.loc 94 48 0
.word 0xaa1a03e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_58@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_58@PAGEOFF
ldr x1, [x1]
bl _p_354
.word 0xaa0003e1
.word 0xaa1a03e0
bl _p_118
.loc 94 51 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3fc:
.text
	.align 4
	.no_dead_strip Foundation_NSAutoreleasePool__ctor_intptr
Foundation_NSAutoreleasePool__ctor_intptr:
.loc 94 65 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3fd:
.text
	.align 4
	.no_dead_strip Foundation_NSError_ToString
Foundation_NSError_ToString:
.file 95 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSError.cs"
.loc 95 60 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf9400021
.word 0xf940d430
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3fe:
.text
	.align 4
	.no_dead_strip Foundation_NSError_get_ClassHandle
Foundation_NSError_get_ClassHandle:
.file 96 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSError.g.cs"
.loc 96 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3872]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3ff:
.text
	.align 4
	.no_dead_strip Foundation_NSError__ctor_intptr
Foundation_NSError__ctor_intptr:
.loc 96 76 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 96 78 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_400:
.text
	.align 4
	.no_dead_strip Foundation_NSError_Copy_Foundation_NSZone
Foundation_NSError_Copy_Foundation_NSZone:
.loc 96 100 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_401:
.text
	.align 4
	.no_dead_strip Foundation_NSError_get_LocalizedDescription
Foundation_NSError_get_LocalizedDescription:
.loc 96 242 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_79@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_79@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_402:
.text
	.align 4
	.no_dead_strip Foundation_NSError__cctor
Foundation_NSError__cctor:
.loc 96 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3880]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3872]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_403:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_FromNFloat_System_nfloat
Foundation_NSNumber_FromNFloat_System_nfloat:
.file 97 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSNumber2.cs"
.loc 97 159 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd400ba0
bl _p_467
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_404:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_ToString
Foundation_NSNumber_ToString:
.loc 97 167 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf9400021
.word 0xf940e430
.word 0xd63f0200
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_405:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_CompareTo_object
Foundation_NSNumber_CompareTo_object:
.loc 97 172 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf94013b8
.word 0xf94013a0
.word 0xeb1f001f
.word 0x54000180
.word 0xf94013a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3888]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xf9400fa0
.word 0xaa1803e1
bl _p_468
.word 0x93407c00
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_406:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_CompareTo_Foundation_NSNumber
Foundation_NSNumber_CompareTo_Foundation_NSNumber:
.loc 97 179 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000160
.loc 97 181 0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf9400ba2
.word 0xf9400042
.word 0xf940ec50
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 97 180 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28700e1
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_407:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_Equals_object
Foundation_NSNumber_Equals_object:
.loc 97 187 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf94013b8
.word 0xf94013a0
.word 0xeb1f001f
.word 0x54000180
.word 0xf94013a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3888]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xf9400fa0
.word 0xaa1803e1
bl _p_469
.word 0x53001c00
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_408:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_Equals_Foundation_NSNumber
Foundation_NSNumber_Equals_Foundation_NSNumber:
.loc 97 193 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb5000060
.loc 97 194 0
.word 0xd2800000
.word 0x14000008
.loc 97 195 0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf9400ba2
.word 0xf9400042
.word 0xf940e850
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_409:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_GetHashCode
Foundation_NSNumber_GetHashCode:
.loc 97 204 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xf9400021
.word 0xf940e430
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402430
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_40a:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_get_ClassHandle
Foundation_NSNumber_get_ClassHandle:
.file 98 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSNumber.g.cs"
.loc 98 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3896]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_40b:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_intptr
Foundation_NSNumber__ctor_intptr:
.loc 98 76 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_470
.loc 98 78 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_40c:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_sbyte
Foundation_NSNumber__ctor_sbyte:
.loc 98 84 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 87 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_80@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_80@PAGEOFF
ldr x1, [x1]
.word 0x398063a2
bl _p_472
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3904]
.word 0xf9400ba0
bl _p_253
.loc 98 88 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_40d:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_byte
Foundation_NSNumber__ctor_byte:
.loc 98 97 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 100 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_81@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_81@PAGEOFF
ldr x1, [x1]
.word 0x394063a2
bl _p_473
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3912]
.word 0xf9400ba0
bl _p_253
.loc 98 101 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_40e:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_int16
Foundation_NSNumber__ctor_int16:
.loc 98 110 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 113 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_82@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_82@PAGEOFF
ldr x1, [x1]
.word 0x798033a2
bl _p_474
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3920]
.word 0xf9400ba0
bl _p_253
.loc 98 114 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_40f:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_uint16
Foundation_NSNumber__ctor_uint16:
.loc 98 123 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 126 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_83@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_83@PAGEOFF
ldr x1, [x1]
.word 0x794033a2
bl _p_475
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3928]
.word 0xf9400ba0
bl _p_253
.loc 98 127 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_410:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_int
Foundation_NSNumber__ctor_int:
.loc 98 136 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 139 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_84@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_84@PAGEOFF
ldr x1, [x1]
.word 0xb9801ba2
bl _p_476
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3936]
.word 0xf9400ba0
bl _p_253
.loc 98 140 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_411:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_uint
Foundation_NSNumber__ctor_uint:
.loc 98 149 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 152 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_85@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_85@PAGEOFF
ldr x1, [x1]
.word 0xb9401ba2
bl _p_477
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3944]
.word 0xf9400ba0
bl _p_253
.loc 98 153 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_412:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_long
Foundation_NSNumber__ctor_long:
.loc 98 162 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 165 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_86@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_86@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa2
bl _p_478
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3952]
.word 0xf9400ba0
bl _p_253
.loc 98 166 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_413:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_ulong
Foundation_NSNumber__ctor_ulong:
.loc 98 175 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 178 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_87@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_87@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa2
bl _p_252
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3960]
.word 0xf9400ba0
bl _p_253
.loc 98 179 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_414:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_single
Foundation_NSNumber__ctor_single:
.loc 98 188 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xbd001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 191 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_88@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_88@PAGEOFF
ldr x1, [x1]
.word 0xbd401ba0
bl _p_479
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3968]
.word 0xf9400ba0
bl _p_253
.loc 98 192 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_415:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_double
Foundation_NSNumber__ctor_double:
.loc 98 201 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 204 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_89@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_89@PAGEOFF
ldr x1, [x1]
.word 0xfd400fa0
bl _p_480
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3976]
.word 0xf9400ba0
bl _p_253
.loc 98 205 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_416:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__ctor_bool
Foundation_NSNumber__ctor_bool:
.loc 98 214 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xf9400001
.word 0xf9400ba0
bl _p_471
.loc 98 217 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_90@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_90@PAGEOFF
ldr x1, [x1]
.word 0x394063a2
bl _p_481
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #3984]
.word 0xf9400ba0
bl _p_253
.loc 98 218 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_417:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_Compare_Foundation_NSNumber
Foundation_NSNumber_Compare_Foundation_NSNumber:
.loc 98 253 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xb40001ba
.loc 98 256 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_91@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_91@PAGEOFF
ldr x1, [x1]
.word 0x3940035e
.word 0xf9400b42
bl _p_482
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 98 254 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28733a1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_418:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_FromBoolean_bool
Foundation_NSNumber_FromBoolean_bool:
.loc 98 279 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3896]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_92@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_92@PAGEOFF
ldr x1, [x1]
.word 0x394043a2
bl _p_481

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3992]
bl _p_483
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_419:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_FromDouble_double
Foundation_NSNumber_FromDouble_double:
.loc 98 293 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xfd000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3896]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_93@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_93@PAGEOFF
ldr x1, [x1]
.word 0xfd400ba0
bl _p_480

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3992]
bl _p_483
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_41a:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_FromNInt_System_nint
Foundation_NSNumber_FromNInt_System_nint:
.loc 98 335 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3896]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_94@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_94@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba2
bl _p_484

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3992]
bl _p_483
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_41b:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_FromNUInt_System_nuint
Foundation_NSNumber_FromNUInt_System_nuint:
.loc 98 342 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3896]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_95@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_95@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba2
bl _p_399

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3992]
bl _p_483
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_41c:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_IsEqualToNumber_Foundation_NSNumber
Foundation_NSNumber_IsEqualToNumber_Foundation_NSNumber:
.loc 98 384 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xb40001da
.loc 98 387 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_96@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_96@PAGEOFF
ldr x1, [x1]
.word 0x3940035e
.word 0xf9400b42
bl _p_144
.word 0x53001c00
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 98 385 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2874ce1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_41d:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber_get_StringValue
Foundation_NSNumber_get_StringValue:
.loc 98 576 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_97@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_97@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_41e:
.text
	.align 4
	.no_dead_strip Foundation_NSNumber__cctor
Foundation_NSNumber__cctor:
.loc 98 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4000]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3896]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_41f:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_disposed
Foundation_NSObject_get_disposed:
.file 99 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSObject2.cs"
.loc 99 87 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280003e
.word 0xa1e0000
.word 0xd2800021
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_420:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_set_disposed_bool
Foundation_NSObject_set_disposed_bool:
.loc 99 88 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xf90013a0
.word 0x350000da
.word 0xf9400fa0
.word 0x39408000
.word 0xd2801fde
.word 0xa1e001a
.word 0x14000005
.word 0xf9400fa0
.word 0x39408000
.word 0xd280003e
.word 0x2a1e001a
.word 0xf94013a0
.word 0x3900801a
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_421:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_IsRegisteredToggleRef
Foundation_NSObject_get_IsRegisteredToggleRef:
.loc 99 92 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280011e
.word 0xa1e0000
.word 0xd2800101
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_422:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_set_IsRegisteredToggleRef_bool
Foundation_NSObject_set_IsRegisteredToggleRef_bool:
.loc 99 93 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xf90013a0
.word 0x350000da
.word 0xf9400fa0
.word 0x39408000
.word 0xd2801efe
.word 0xa1e001a
.word 0x14000005
.word 0xf9400fa0
.word 0x39408000
.word 0xd280011e
.word 0x2a1e001a
.word 0xf94013a0
.word 0x3900801a
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_423:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_IsDirectBinding
Foundation_NSObject_get_IsDirectBinding:
.loc 99 97 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_424:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_set_IsDirectBinding_bool
Foundation_NSObject_set_IsDirectBinding_bool:
.loc 99 98 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xf90013a0
.word 0x350000da
.word 0xf9400fa0
.word 0x39408000
.word 0xd2801f7e
.word 0xa1e001a
.word 0x14000005
.word 0xf9400fa0
.word 0x39408000
.word 0xd280009e
.word 0x2a1e001a
.word 0xf94013a0
.word 0x3900801a
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_425:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_InFinalizerQueue
Foundation_NSObject_get_InFinalizerQueue:
.loc 99 105 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280021e
.word 0xa1e0000
.word 0xd2800201
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_426:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_IsCustomType
Foundation_NSObject_get_IsCustomType:
.loc 99 110 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0x39408340
.word 0xd280101e
.word 0xa1e0000
.word 0xd2801001
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x53001c19
.loc 99 111 0
.word 0xaa1903e0
.word 0x35000180
.loc 99 112 0
.word 0xf9400340
.word 0xf9400c00
bl _p_485
.word 0x53001c00
.word 0x53001c19
.loc 99 113 0
.word 0xaa1903e0
.word 0x340000a0
.loc 99 114 0
.word 0x39408340
.word 0xd280101e
.word 0x2a1e0000
.word 0x39008340
.loc 99 116 0
.word 0xaa1903e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_427:
.text
	.align 4
	.no_dead_strip Foundation_NSObject__ctor
Foundation_NSObject__ctor:
.loc 99 122 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_486
.word 0x53001c00
.word 0x53001c01
.loc 99 123 0
.word 0xf9400ba0
bl _p_487
.loc 99 124 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_428:
.text
	.align 4
	.no_dead_strip Foundation_NSObject__ctor_Foundation_NSObjectFlag
Foundation_NSObject__ctor_Foundation_NSObjectFlag:
.loc 99 130 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
bl _p_486
.word 0x53001c00
.word 0x53001c01
.loc 99 131 0
.word 0xf9400ba0
bl _p_487
.loc 99 132 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_429:
.text
	.align 4
	.no_dead_strip Foundation_NSObject__ctor_intptr
Foundation_NSObject__ctor_intptr:
.loc 99 134 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800002
bl _p_488
.loc 99 135 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_42a:
.text
	.align 4
	.no_dead_strip Foundation_NSObject__ctor_intptr_bool
Foundation_NSObject__ctor_intptr_bool:
.loc 99 138 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 99 139 0
.word 0x394083a1
bl _p_487
.loc 99 140 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_42b:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_Finalize
Foundation_NSObject_Finalize:
.loc 99 143 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba2
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042
.word 0xf940c850
.word 0xd63f0200
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9001fbe
.loc 99 144 0
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9401fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_42c:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_Dispose
Foundation_NSObject_Dispose:
.loc 99 147 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800021
.word 0xf9400ba2
.word 0xf9400042
.word 0xf940c850
.word 0xd63f0200
.loc 99 148 0
.word 0xf9400ba0
bl _p_167
.loc 99 149 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_42d:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_Initialize
Foundation_NSObject_Initialize:
.loc 99 153 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1472]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_42e:
.text
	.align 4
	.no_dead_strip wrapper_managed_to_native_Foundation_NSObject_RegisterToggleRef_Foundation_NSObject_intptr_bool
wrapper_managed_to_native_Foundation_NSObject_RegisterToggleRef_Foundation_NSObject_intptr_bool:
.word 0xa9b67bfd
.word 0x910003fd
.word 0x1000001e
.word 0xf9001bbe
.word 0xa903d3b3
.word 0xa904dbb5
.word 0xa905e3b7
.word 0xa906ebb9
.word 0xa907f3bb
.word 0xf90047bd
.word 0x910003f1
.word 0xf9004bb1
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #112]
.word 0xd63f0000
.word 0xaa0003f7
.word 0x910083a0
.word 0xf94002e1
.word 0xf90013a1
.word 0xf90002e0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xaa1a03e2
bl _p_489

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4008]
.word 0xb9400000
.word 0x35000160
.word 0x14000001
.word 0xf94013a0
.word 0xf90002e0
.word 0xf9402fb7
.word 0xf9403bba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xaa1a03e0
bl _p_38
bl _p_490
.word 0xaa0003fa
.word 0xb5ffff80
.word 0x17fffff4

Lme_42f:
.text
	.align 4
	.no_dead_strip wrapper_managed_to_native_Foundation_NSObject_xamarin_release_managed_ref_intptr_Foundation_NSObject
wrapper_managed_to_native_Foundation_NSObject_xamarin_release_managed_ref_intptr_Foundation_NSObject:
.word 0xa9b77bfd
.word 0x910003fd
.word 0x1000001e
.word 0xf90017be
.word 0xa90353b3
.word 0xa9045bb5
.word 0xa90563b7
.word 0xa9066bb9
.word 0xa90773bb
.word 0xf90043bd
.word 0x910003f1
.word 0xf90047b1
.word 0xf9000ba0
.word 0xaa0103fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #112]
.word 0xd63f0000
.word 0xaa0003f8
.word 0x910063a0
.word 0xf9400301
.word 0xf9000fa1
.word 0xf9000300
.word 0xf9400ba0
.word 0xaa1a03e1
bl _p_491

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4008]
.word 0xb9400000
.word 0x35000160
.word 0x14000001
.word 0xf9400fa0
.word 0xf9000300
.word 0xf9402fb8
.word 0xf94037ba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xaa1a03e0
bl _p_38
bl _p_490
.word 0xaa0003fa
.word 0xb5ffff80
.word 0x17fffff4

Lme_430:
.text
	.align 4
	.no_dead_strip wrapper_managed_to_native_Foundation_NSObject_xamarin_create_managed_ref_intptr_Foundation_NSObject_bool
wrapper_managed_to_native_Foundation_NSObject_xamarin_create_managed_ref_intptr_Foundation_NSObject_bool:
.word 0xa9b67bfd
.word 0x910003fd
.word 0x1000001e
.word 0xf9001bbe
.word 0xa903d3b3
.word 0xa904dbb5
.word 0xa905e3b7
.word 0xa906ebb9
.word 0xa907f3bb
.word 0xf90047bd
.word 0x910003f1
.word 0xf9004bb1
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #112]
.word 0xd63f0000
.word 0xaa0003f7
.word 0x910083a0
.word 0xf94002e1
.word 0xf90013a1
.word 0xf90002e0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xaa1a03e2
bl _p_492

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4008]
.word 0xb9400000
.word 0x35000160
.word 0x14000001
.word 0xf94013a0
.word 0xf90002e0
.word 0xf9402fb7
.word 0xf9403bba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xaa1a03e0
bl _p_38
bl _p_490
.word 0xaa0003fa
.word 0xb5ffff80
.word 0x17fffff4

Lme_431:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_MarkDirty
Foundation_NSObject_MarkDirty:
.loc 99 178 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800001
bl _p_291
.loc 99 179 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_432:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_MarkDirty_bool
Foundation_NSObject_MarkDirty_bool:
.loc 99 183 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0x39408320
.word 0xd280011e
.word 0xa1e0000
.word 0xd2800101
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x350001c0
.loc 99 186 0
.word 0x394063a0
.word 0x350000a0
.word 0xaa1903e0
bl _p_493
.word 0x53001c00
.word 0x35000100
.loc 99 189 0
.word 0xaa1903e0
.word 0xd2800021
bl _p_494
.loc 99 190 0
.word 0xf9400b21
.word 0xaa1903e0
.word 0x394063a2
bl _p_495
.loc 99 191 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_433:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_InitializeObject_bool
Foundation_NSObject_InitializeObject_bool:
.loc 99 194 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0x394063a0
.word 0x34000340
.word 0xf9400b20

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000240

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2160]
.word 0x39400000
.word 0x340001a0
.loc 99 195 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940c430
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x350007e0
.word 0x14000023
.loc 99 217 0
.word 0xf9400320
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941c430
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #4016]
.word 0xf9400021
bl _p_496
.word 0x53001c01
.word 0xaa1903e0
bl _p_306
.loc 99 218 0
.word 0xf9400b21
.word 0xaa1903e0
bl _p_497
.loc 99 223 0
.word 0x39408320
.word 0xd280005e
.word 0xa1e0000
.word 0xd2800041
.word 0x6b01001f
.word 0x9a9f17e0
.loc 99 224 0
.word 0x350000e0
.loc 99 225 0
.word 0xd2800001
.word 0x394063a0
.word 0x6b01001f
.word 0x9a9f17e1
.word 0xaa1903e0
bl _p_498
.loc 99 226 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 99 199 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28787c1
bl _p_68
.word 0xf90013a0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940c430
.word 0xd63f0200
.word 0xf90017a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1688]
.word 0xd2800301
bl _p_7
.word 0xf94017a1
.word 0xf9000801
bl _p_127
.word 0xaa0003e1
.word 0xf94013a0
bl _p_123
.word 0xaa0003e1
.word 0xd2801820
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.loc 99 196 0
.word 0xd2875821
bl _p_68
.word 0xf90013a0
.word 0xf9400320
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94013a0
bl _p_123
.word 0xaa0003e1
.word 0xd2801820
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0x17ffffd1

Lme_434:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_CreateManagedRef_bool
Foundation_NSObject_CreateManagedRef_bool:
.loc 99 230 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba1
.word 0xf9400820
.word 0x394063a2
bl _p_499
.loc 99 231 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_435:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_ReleaseManagedRef
Foundation_NSObject_ReleaseManagedRef:
.loc 99 235 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba1
.word 0xf9400820
bl _p_500
.loc 99 236 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_436:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_InvokeConformsToProtocol_intptr
Foundation_NSObject_InvokeConformsToProtocol_intptr:
.loc 99 296 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf9400ba2
.word 0xf9400042
.word 0xf940cc50
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_437:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_ConformsToProtocol_intptr
Foundation_NSObject_ConformsToProtocol_intptr:
.loc 99 305 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x53001c18
.loc 99 308 0
.word 0xaa1803e0
.word 0x34000660
.loc 99 309 0
.word 0xf9400320
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941c430
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #4016]
.word 0xf9400021
bl _p_501
.word 0x53001c00
.loc 99 310 0
.word 0x340004c0
.loc 99 313 0
.word 0xf9400320
.word 0xf9400c03

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #4024]
.word 0xaa0303e0
.word 0xd2800002
.word 0xf9400063
.word 0xf9404870
.word 0xd63f0200
.word 0xaa0003f7
.loc 99 314 0
.word 0xaa1703e0
.word 0xb4000320
.word 0xb9801ae0
.word 0xd2800021
.word 0x6b01001f
.word 0x540002a1
.loc 99 315 0
.word 0xd2800001
.word 0xb9801ae0
.word 0xeb01001f
.word 0x10000011
.word 0x540005e9
.word 0xf94012f8
.word 0xb4000178
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #4032]
.word 0xeb01001f
.word 0x10000011
.word 0x54000401
.word 0x3940031e
.word 0x39406300
.word 0x53001c18
.loc 99 326 0
.word 0x34000158
.loc 99 327 0
.word 0xf9400b20
adrp x1, L_OBJC_SELECTOR_REFERENCES_98@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_98@PAGEOFF
ldr x1, [x1]
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0x53001c1a
.loc 99 328 0
.word 0x1400000a
.loc 99 329 0
.word 0xaa1903e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_98@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_98@PAGEOFF
ldr x1, [x1]
.word 0xaa1a03e2
bl _p_502
.word 0x53001c00
.word 0x53001c1a
.loc 99 333 0
.word 0x3400007a
.loc 99 334 0
.word 0xd2800020
.word 0x14000002
.loc 99 337 0
.word 0xd2800000
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_438:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_DangerousRelease
Foundation_NSObject_DangerousRelease:
.loc 99 372 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
bl _p_449
.loc 99 373 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_439:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_DangerousRelease_intptr
Foundation_NSObject_DangerousRelease_intptr:
.loc 99 377 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400ba0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x350000c0
.loc 99 382 0
adrp x1, L_OBJC_SELECTOR_REFERENCES_2@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_2@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba0
bl _p_166
.loc 99 384 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_43a:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_DangerousAutorelease_intptr
Foundation_NSObject_DangerousAutorelease_intptr:
.loc 99 402 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
adrp x1, L_OBJC_SELECTOR_REFERENCES_99@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_99@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba0
bl _p_166
.loc 99 404 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_43b:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_DangerousRetain
Foundation_NSObject_DangerousRetain:
.loc 99 421 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_1@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_1@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 99 423 0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_43c:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_DangerousAutorelease
Foundation_NSObject_DangerousAutorelease:
.loc 99 441 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_99@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_99@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 99 443 0
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_43d:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_SuperHandle
Foundation_NSObject_get_SuperHandle:
.loc 99 448 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9400b40

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x350002e0
.loc 99 451 0
.word 0xf9400f40

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340000c0
.loc 99 452 0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940c430
.word 0xd63f0200
.word 0xf9000f40
.loc 99 454 0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000240
.word 0x91004340
.word 0xf9000fa0
.loc 99 456 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 99 449 0
.word 0xf9400340
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xd2801fc0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0xd2801f60
.word 0xaa1103e1
bl _p_2

Lme_43e:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_Handle
Foundation_NSObject_get_Handle:
.loc 99 462 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_43f:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_set_Handle_intptr
Foundation_NSObject_set_Handle_intptr:
.loc 99 464 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400b20
.word 0xf9400fa1
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000300
.loc 99 467 0
.word 0xf9400b20

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000060
.loc 99 468 0
.word 0xf9400b20
bl _p_503
.loc 99 470 0
.word 0xf9400fa0
.word 0xf9000b20
.loc 99 472 0
.word 0xf9400b20

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000080
.loc 99 473 0
.word 0xf9400b21
.word 0xaa1903e0
bl _p_497
.loc 99 474 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_440:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_InitializeHandle_intptr_string
Foundation_NSObject_InitializeHandle_intptr_string:
.loc 99 486 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400b00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000240

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2160]
.word 0x39400000
.word 0x340001a0
.loc 99 487 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf940c430
.word 0xd63f0200

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340008c0
.word 0x14000015
.loc 99 496 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400fa0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340000c0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2160]
.word 0x39400000
.word 0x350003a0
.loc 99 503 0
.word 0xaa1803e0
.word 0xf9400fa1
bl _p_118
.loc 99 504 0
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 99 488 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2875821
bl _p_68
.word 0xf9001ba0
.word 0xf9400300
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9401ba0
bl _p_123
.word 0xaa0003e1
.word 0xd2801820
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0x1400001c
.loc 99 497 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xaa1803e0
bl _p_118
.loc 99 498 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd287b5e1
bl _p_68
.word 0xf9001ba0
.word 0xf9400300
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xf94013a2
bl _p_24
.word 0xaa0003e1
.word 0xd2801820
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.loc 99 491 0
.word 0xd28787c1
bl _p_68
.word 0xf9001ba0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf940c430
.word 0xd63f0200
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1688]
.word 0xd2800301
bl _p_7
.word 0xf9401fa1
.word 0xf9000801
bl _p_127
.word 0xaa0003e1
.word 0xf9401ba0
bl _p_123
.word 0xaa0003e1
.word 0xd2801820
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_441:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_AllocIfNeeded
Foundation_NSObject_AllocIfNeeded:
.loc 99 507 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340001c0
.loc 99 511 0
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400c00
bl _p_143
adrp x1, L_OBJC_SELECTOR_REFERENCES_72@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_72@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xf9000801
.loc 99 513 0
.word 0xd2800020
.word 0x14000002
.loc 99 515 0
.word 0xd2800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_442:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_BeginInvokeOnMainThread_System_Threading_SendOrPostCallback_object
Foundation_NSObject_BeginInvokeOnMainThread_System_Threading_SendOrPostCallback_object:
.loc 99 588 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4040]
bl _p_71
.word 0xf9001ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_504
.word 0xf9401ba3
.loc 99 593 0
.word 0xaa0303e0
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_100@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_100@PAGEOFF
ldr x1, [x1]
adrp x2, L_OBJC_SELECTOR_REFERENCES_101@PAGE
add x2, x2, L_OBJC_SELECTOR_REFERENCES_101@PAGEOFF
ldr x2, [x2]
.word 0x3940007e
.word 0xf9400863
.word 0xd2800004
bl _p_505
.loc 99 596 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_443:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_InvokeOnMainThread_System_Threading_SendOrPostCallback_object
Foundation_NSObject_InvokeOnMainThread_System_Threading_SendOrPostCallback_object:
.loc 99 613 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4048]
bl _p_71
.word 0xf9002ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_506
.word 0xf9402ba0
.word 0xf90017a0
.loc 99 618 0
.word 0xf94017a0
.word 0xaa0003e1
.word 0x3940003e
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_100@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_100@PAGEOFF
ldr x1, [x1]
adrp x2, L_OBJC_SELECTOR_REFERENCES_101@PAGE
add x2, x2, L_OBJC_SELECTOR_REFERENCES_101@PAGEOFF
ldr x2, [x2]
.word 0xf94017a3
.word 0xaa0303e4
.word 0x3940009e
.word 0xf9400863
.word 0xd2800024
bl _p_505
.loc 99 621 0
.word 0xf9001bbf
.word 0x94000005
.word 0xf9401ba0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90027be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.loc 99 622 0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_444:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_FromObject_object
Foundation_NSObject_FromObject_object:
.loc 99 626 0 prologue_end
.word 0xd2804610
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa9007bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xb500007a
.loc 99 627 0
bl _p_392
.word 0x14000322
.loc 99 628 0
.word 0xf9400340
.word 0xf9400c19
.loc 99 629 0
.word 0xaa1903e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1880]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000140

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1880]
.word 0xaa1903e0
.word 0xf9400322
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0x340001c0
.loc 99 630 0
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1720]
.word 0xeb01001f
.word 0x10000011
.word 0x540061c1
.word 0xaa1a03e0
.word 0x14000303
.loc 99 632 0
.word 0xaa1903e0
bl _p_507
.word 0x93407c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x51000c18
.word 0xd280021e
.word 0x6b1e031f
.word 0x540027a2
.word 0xd37df300
.word 0x2a0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4056]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.loc 99 634 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54005ec1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #4064]
.word 0xeb01001f
.word 0x10000011
.word 0x54005dc1
.word 0x39404340
.word 0xf9010fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xf9410fa1
.word 0xf9010ba0
bl _p_508
.word 0xf9410ba0
.word 0x140002da
.loc 99 636 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54005bc1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #4080]
.word 0xeb01001f
.word 0x10000011
.word 0x54005ac1
.word 0x79402340
.word 0xf9010fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xf9410fa1
.word 0xf9010ba0
bl _p_509
.word 0xf9410ba0
.word 0x140002c2
.loc 99 638 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540058c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #4088]
.word 0xeb01001f
.word 0x10000011
.word 0x540057c1
.word 0x39804340
.word 0xf9010fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xf9410fa1
.word 0xf9010ba0
bl _p_510
.word 0xf9410ba0
.word 0x140002aa
.loc 99 640 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540055c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #0]
.word 0xeb01001f
.word 0x10000011
.word 0x540054c1
.word 0x39404340
.word 0xf9010fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xf9410fa1
.word 0xf9010ba0
bl _p_511
.word 0xf9410ba0
.word 0x14000292
.loc 99 642 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540052c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #8]
.word 0xeb01001f
.word 0x10000011
.word 0x540051c1
.word 0x79802340
.word 0xf9010fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xf9410fa1
.word 0xf9010ba0
bl _p_512
.word 0xf9410ba0
.word 0x1400027a
.loc 99 644 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54004fc1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0xeb01001f
.word 0x10000011
.word 0x54004ec1
.word 0x79402340
.word 0xf9010fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xf9410fa1
.word 0xf9010ba0
bl _p_509
.word 0xf9410ba0
.word 0x14000262
.loc 99 646 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54004cc1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #24]
.word 0xeb01001f
.word 0x10000011
.word 0x54004bc1
.word 0xb9801340
.word 0xf9010fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xf9410fa1
.word 0xf9010ba0
bl _p_513
.word 0xf9410ba0
.word 0x1400024a
.loc 99 648 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540049c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #32]
.word 0xeb01001f
.word 0x10000011
.word 0x540048c1
.word 0xb9401340
.word 0xf9010fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xf9410fa1
.word 0xf9010ba0
bl _p_514
.word 0xf9410ba0
.word 0x14000232
.loc 99 650 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540046c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #40]
.word 0xeb01001f
.word 0x10000011
.word 0x540045c1
.word 0xf9400b40
.word 0xf9010fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xf9410fa1
.word 0xf9010ba0
bl _p_515
.word 0xf9410ba0
.word 0x1400021a
.loc 99 652 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540043c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #48]
.word 0xeb01001f
.word 0x10000011
.word 0x540042c1
.word 0xf9400b40
.word 0xf9010fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xf9410fa1
.word 0xf9010ba0
bl _p_516
.word 0xf9410ba0
.word 0x14000202
.loc 99 654 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540040c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #56]
.word 0xeb01001f
.word 0x10000011
.word 0x54003fc1
.word 0xbd401340
.word 0xfd0113a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xfd4113a0
.word 0xf9010ba0
bl _p_517
.word 0xf9410ba0
.word 0x140001ea
.loc 99 656 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54003dc1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #64]
.word 0xeb01001f
.word 0x10000011
.word 0x54003cc1
.word 0xfd400b40
.word 0xfd0113a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4072]
bl _p_71
.word 0xfd4113a0
.word 0xf9010ba0
bl _p_518
.word 0xf9410ba0
.word 0x140001d2
.loc 99 658 0
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #72]
.word 0xeb01001f
.word 0x10000011
.word 0x54003a01

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2936]
bl _p_71
.word 0xf9010ba0
.word 0xaa1a03e1
bl _p_313
.word 0xf9410ba0
.word 0x140001be
.loc 99 660 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1856]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x34000220
.loc 99 661 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54003781
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #80]
.word 0xeb01001f
.word 0x10000011
.word 0x54003681
.word 0xf9400b40
bl _p_519
.word 0x140001a8
.loc 99 663 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #88]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x340002e0
.loc 99 664 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540034c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #584]
.word 0xeb01001f
.word 0x10000011
.word 0x540033c1
.word 0x91004340
.word 0xb9800001
.word 0xb90203a1
.word 0xb9800400
.word 0xb90207a0
.word 0xbd4203a0
.word 0xbd4207a1
bl _p_520
.word 0x1400018c
.loc 99 665 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #96]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x340003a0
.loc 99 666 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54003141
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #552]
.word 0xeb01001f
.word 0x10000011
.word 0x54003041
.word 0x91004340
.word 0xb9800001
.word 0xb901f3a1
.word 0xb9800401
.word 0xb901f7a1
.word 0xb9800801
.word 0xb901fba1
.word 0xb9800c00
.word 0xb901ffa0
.word 0xbd41f3a0
.word 0xbd41f7a1
.word 0xbd41fba2
.word 0xbd41ffa3
bl _p_521
.word 0x1400016a
.loc 99 667 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #104]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x340002e0
.loc 99 668 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002d01
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #504]
.word 0xeb01001f
.word 0x10000011
.word 0x54002c01
.word 0x91004340
.word 0xb9800001
.word 0xb901eba1
.word 0xb9800400
.word 0xb901efa0
.word 0xbd41eba0
.word 0xbd41efa1
bl _p_522
.word 0x1400014e
.loc 99 671 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #112]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x34000220
.loc 99 672 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002981
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xeb01001f
.word 0x10000011
.word 0x54002881
.word 0xf9400b40
bl _p_523
.word 0x14000138
.loc 99 673 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #120]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x34000220
.loc 99 674 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x540026c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xeb01001f
.word 0x10000011
.word 0x540025c1
.word 0xf9400b40
bl _p_524
.word 0x14000122
.loc 99 675 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x34000220
.loc 99 676 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002401
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #400]
.word 0xeb01001f
.word 0x10000011
.word 0x54002301
.word 0xfd400b40
bl _p_525
.word 0x1400010c
.loc 99 677 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #136]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x340002e0
.loc 99 678 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002141
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2800]
.word 0xeb01001f
.word 0x10000011
.word 0x54002041
.word 0x91004340
.word 0xf9400001
.word 0xf900efa1
.word 0xf9400400
.word 0xf900f3a0
.word 0xfd40efa0
.word 0xfd40f3a1
bl _p_526
.word 0x140000f0
.loc 99 679 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #144]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x340003a0
.loc 99 680 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001dc1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2808]
.word 0xeb01001f
.word 0x10000011
.word 0x54001cc1
.word 0x91004340
.word 0xf9400001
.word 0xf900dfa1
.word 0xf9400401
.word 0xf900e3a1
.word 0xf9400801
.word 0xf900e7a1
.word 0xf9400c00
.word 0xf900eba0
.word 0xfd40dfa0
.word 0xfd40e3a1
.word 0xfd40e7a2
.word 0xfd40eba3
bl _p_527
.word 0x140000ce
.loc 99 681 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #152]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x340002e0
.loc 99 682 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001981
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2792]
.word 0xeb01001f
.word 0x10000011
.word 0x54001881
.word 0x91004340
.word 0xf9400001
.word 0xf900d7a1
.word 0xf9400400
.word 0xf900dba0
.word 0xfd40d7a0
.word 0xfd40dba1
bl _p_528
.word 0x140000b2
.loc 99 686 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #160]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x34000540
.loc 99 687 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001601
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2752]
.word 0xeb01001f
.word 0x10000011
.word 0x54001501
.word 0x91004340
.word 0xf9400001
.word 0xf900bfa1
.word 0xf9400401
.word 0xf900c3a1
.word 0xf9400801
.word 0xf900c7a1
.word 0xf9400c01
.word 0xf900cba1
.word 0xf9401001
.word 0xf900cfa1
.word 0xf9401400
.word 0xf900d3a0
.word 0x910523a0
.word 0xf940bfa1
.word 0xf900a7a1
.word 0xf940c3a1
.word 0xf900aba1
.word 0xf940c7a1
.word 0xf900afa1
.word 0xf940cba1
.word 0xf900b3a1
.word 0xf940cfa1
.word 0xf900b7a1
.word 0xf940d3a1
.word 0xf900bba1
bl _p_529
.word 0x14000083
.loc 99 688 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #168]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x340003a0
.loc 99 689 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001021
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #3248]
.word 0xeb01001f
.word 0x10000011
.word 0x54000f21
.word 0x91004340
.word 0xf9400001
.word 0xf90097a1
.word 0xf9400401
.word 0xf9009ba1
.word 0xf9400801
.word 0xf9009fa1
.word 0xf9400c00
.word 0xf900a3a0
.word 0xfd4097a0
.word 0xfd409ba1
.word 0xfd409fa2
.word 0xfd40a3a3
bl _p_530
.word 0x14000061
.loc 99 691 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #176]
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x340006a0
.loc 99 692 0
.word 0xf9400340
.word 0x3940b001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000be1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #2880]
.word 0xeb01001f
.word 0x10000011
.word 0x54000ae1
.word 0x91004341
.word 0x9102a3a0
.word 0xd2801002
bl _p_218
.word 0x9100a3a0
.word 0xf94057a1
.word 0xf90017a1
.word 0xf9405ba1
.word 0xf9001ba1
.word 0xf9405fa1
.word 0xf9001fa1
.word 0xf94063a1
.word 0xf90023a1
.word 0xf94067a1
.word 0xf90027a1
.word 0xf9406ba1
.word 0xf9002ba1
.word 0xf9406fa1
.word 0xf9002fa1
.word 0xf94073a1
.word 0xf90033a1
.word 0xf94077a1
.word 0xf90037a1
.word 0xf9407ba1
.word 0xf9003ba1
.word 0xf9407fa1
.word 0xf9003fa1
.word 0xf94083a1
.word 0xf90043a1
.word 0xf94087a1
.word 0xf90047a1
.word 0xf9408ba1
.word 0xf9004ba1
.word 0xf9408fa1
.word 0xf9004fa1
.word 0xf94093a1
.word 0xf90053a1
bl _p_531
.word 0x14000027
.loc 99 697 0
.word 0xaa1a03f9
.word 0xeb1f035f
.word 0x540002c0
.word 0xf9400358
.word 0xb9402b00

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1704]
.word 0xeb01001f
.word 0x540001c3
.word 0xf9401300

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1704]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xb5000040
.word 0xd2800019
.word 0xaa1903fa
.loc 99 698 0
.word 0xb4000199
.loc 99 699 0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
bl _p_174
.word 0x14000002
.loc 99 700 0
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa9407bfd
.word 0xd2804610
.word 0x910003f1
.word 0x8b100231
.word 0x9100023f
.word 0xd65f03c0
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_445:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_GetHashCode
Foundation_NSObject_GetHashCode:
.loc 99 729 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fbf
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x350000a0
.loc 99 730 0
.word 0xaa1a03e0
bl _p_532
.word 0x93407c00
.word 0x1400000c
.loc 99 732 0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940c030
.word 0xd63f0200
.word 0xf9000fa0
.word 0xf9400fa0
.word 0x93407c00
.word 0xf9400fa1
.word 0xd360fc21
.word 0x93407c21
.word 0x4a010000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_446:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_Equals_object
Foundation_NSObject_Equals_object:
.loc 99 737 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb500007a
.loc 99 738 0
.word 0xd2800000
.word 0x14000033
.loc 99 739 0
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1720]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803f7
.loc 99 740 0
.word 0xb5000078
.loc 99 741 0
.word 0xd2800000
.word 0x14000022
.loc 99 743 0
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x394002fe
.word 0x394082e1
.word 0xd280009e
.word 0xa1e0021
.word 0xd2800082
.word 0x6b02003f
.word 0x9a9f17e1
.word 0x6b01001f
.word 0x54000060
.loc 99 744 0
.word 0xd2800000
.word 0x14000011
.loc 99 746 0
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x35000080
.word 0xeb1a033f
.word 0x9a9f17e0
.word 0x14000007
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400322
.word 0xf940bc50
.word 0xd63f0200
.word 0x53001c00
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_447:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_Equals_Foundation_NSObject
Foundation_NSObject_Equals_Foundation_NSObject:
.loc 99 752 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb500007a
.loc 99 753 0
.word 0xd2800000
.word 0x1400001d
.loc 99 755 0
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.word 0x3940035e
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x35000100
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xf9400322
.word 0xf9402c50
.word 0xd63f0200
.word 0x53001c00
.word 0x14000007
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xf9400322
.word 0xf940bc50
.word 0xd63f0200
.word 0x53001c00
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_448:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_ToString
Foundation_NSObject_ToString:
.loc 99 761 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xf9400fa1
.word 0xf9400021
.word 0xf9409c30
.word 0xd63f0200
.word 0xaa0003f9
.word 0xb5000080
.word 0xf9400fa0
bl _p_533
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_449:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_ClearHandle
Foundation_NSObject_ClearHandle:
.loc 99 778 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400ba0
.word 0xf9000801
.loc 99 779 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_44a:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_Dispose_bool
Foundation_NSObject_Dispose_bool:
.loc 99 782 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0x39408320
.word 0xd280003e
.word 0xa1e0000
.word 0xd2800021
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x35000260
.loc 99 784 0
.word 0xaa1903e0
.word 0xd2800021
bl _p_534
.loc 99 786 0
.word 0xf9400b20

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000100
.loc 99 787 0
.word 0x394063a0
.word 0x34000080
.loc 99 788 0
.word 0xaa1903e0
bl _p_535
.loc 99 789 0
.word 0x14000003
.loc 99 790 0
.word 0xaa1903e0
bl _p_536
.loc 99 793 0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_44b:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_ClassHandle
Foundation_NSObject_get_ClassHandle:
.file 100 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSObject.g.cs"
.loc 100 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1472]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_44c:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_GetNativeHash
Foundation_NSObject_GetNativeHash:
.loc 100 270 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 100 271 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_102@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_102@PAGEOFF
ldr x1, [x1]
bl _p_398
.word 0x14000007
.loc 100 273 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_102@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_102@PAGEOFF
ldr x1, [x1]
bl _p_537
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_44d:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_IsEqual_Foundation_NSObject
Foundation_NSObject_IsEqual_Foundation_NSObject:
.loc 100 282 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340002a0
.loc 100 283 0
.word 0xf9400b21
adrp x0, L_OBJC_SELECTOR_REFERENCES_77@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_77@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xaa0003f8
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0x14000016
.loc 100 285 0
.word 0xaa1903e0
bl _p_333
.word 0xaa0003e1
adrp x0, L_OBJC_SELECTOR_REFERENCES_77@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_77@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xaa0003f8
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1a03e2
bl _p_502
.word 0x53001c00
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_44e:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_IsKindOfClass_ObjCRuntime_Class
Foundation_NSObject_IsKindOfClass_ObjCRuntime_Class:
.loc 100 294 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340002a0
.loc 100 295 0
.word 0xf9400b21
adrp x0, L_OBJC_SELECTOR_REFERENCES_0@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_0@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xaa0003f8
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0x14000016
.loc 100 297 0
.word 0xaa1903e0
bl _p_333
.word 0xaa0003e1
adrp x0, L_OBJC_SELECTOR_REFERENCES_0@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_0@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xaa0003f8
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1a03e2
bl _p_502
.word 0x53001c00
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_44f:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_IsMemberOfClass_ObjCRuntime_Class
Foundation_NSObject_IsMemberOfClass_ObjCRuntime_Class:
.loc 100 306 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340002a0
.loc 100 307 0
.word 0xf9400b21
adrp x0, L_OBJC_SELECTOR_REFERENCES_103@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_103@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xaa0003f8
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0x14000016
.loc 100 309 0
.word 0xaa1903e0
bl _p_333
.word 0xaa0003e1
adrp x0, L_OBJC_SELECTOR_REFERENCES_103@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_103@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xaa0003f8
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1a03e2
bl _p_502
.word 0x53001c00
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_450:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_PerformSelector_ObjCRuntime_Selector
Foundation_NSObject_PerformSelector_ObjCRuntime_Selector:
.loc 100 418 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xaa1a03e0
.word 0xd2800001
bl _p_183
.word 0x53001c00
.word 0x35000400
.loc 100 420 0
.word 0xf9400fa0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000160
.loc 100 421 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_104@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_104@PAGEOFF
ldr x1, [x1]
.word 0x3940035e
.word 0xf9400f42
bl _p_332
bl _p_174
.word 0x1400000a
.loc 100 423 0
.word 0xf9400fa0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_104@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_104@PAGEOFF
ldr x1, [x1]
.word 0x3940035e
.word 0xf9400f42
bl _p_334
bl _p_174
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 100 419 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd287f801
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_451:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_PerformSelector_ObjCRuntime_Selector_Foundation_NSObject
Foundation_NSObject_PerformSelector_ObjCRuntime_Selector_Foundation_NSObject:
.loc 100 431 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xaa1903e0
.word 0xd2800001
bl _p_183
.word 0x53001c00
.word 0x350007c0
.loc 100 433 0
.word 0x39408300
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000320
.loc 100 434 0
.word 0xf9400b02
adrp x1, L_OBJC_SELECTOR_REFERENCES_105@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_105@PAGEOFF
ldr x1, [x1]
.word 0x3940033e
.word 0xf9400f20
.word 0xaa0203f9
.word 0xaa0103f8
.word 0xaa0003f7
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1703e2
.word 0xaa1a03e3
bl _p_302
bl _p_174
.word 0x1400001a
.loc 100 436 0
.word 0xaa1803e0
bl _p_333
.word 0xaa0003e2
adrp x1, L_OBJC_SELECTOR_REFERENCES_105@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_105@PAGEOFF
ldr x1, [x1]
.word 0x3940033e
.word 0xf9400f20
.word 0xaa0203f9
.word 0xaa0103f8
.word 0xaa0003f7
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1703e2
.word 0xaa1a03e3
bl _p_538
bl _p_174
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 100 432 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd287f801
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_452:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_PerformSelector_ObjCRuntime_Selector_Foundation_NSObject_Foundation_NSObject
Foundation_NSObject_PerformSelector_ObjCRuntime_Selector_Foundation_NSObject_Foundation_NSObject:
.loc 100 444 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa
.word 0xaa1803e0
.word 0xd2800001
bl _p_183
.word 0x53001c00
.word 0x35000a20
.loc 100 446 0
.word 0x394082e0
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000440
.loc 100 447 0
.word 0xf9400ae2
adrp x1, L_OBJC_SELECTOR_REFERENCES_106@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_106@PAGEOFF
ldr x1, [x1]
.word 0x3940031e
.word 0xf9400f00
.word 0xaa0203f8
.word 0xaa0103f7
.word 0xaa0003f6
.word 0xb4000099
.word 0x3940033e
.word 0xf9400b39
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400019
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xaa1903e3
.word 0xaa1a03e4
bl _p_539
bl _p_174
.word 0x14000023
.loc 100 449 0
.word 0xaa1703e0
bl _p_333
.word 0xaa0003e2
adrp x1, L_OBJC_SELECTOR_REFERENCES_106@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_106@PAGEOFF
ldr x1, [x1]
.word 0x3940031e
.word 0xf9400f00
.word 0xaa0203f8
.word 0xaa0103f7
.word 0xaa0003f6
.word 0xb4000099
.word 0x3940033e
.word 0xf9400b39
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400019
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1603e2
.word 0xaa1903e3
.word 0xaa1a03e4
bl _p_540
bl _p_174
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 100 445 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd287f801
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_453:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_RespondsToSelector_ObjCRuntime_Selector
Foundation_NSObject_RespondsToSelector_ObjCRuntime_Selector:
.loc 100 514 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0x39408320
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x340003a0
.loc 100 515 0
.word 0xf9400b20
.word 0xf9001fa0
adrp x0, L_OBJC_SELECTOR_REFERENCES_107@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_107@PAGEOFF
ldr x0, [x0]
.word 0xf9001ba0
.word 0xaa1a03e0
.word 0xd2800001
bl _p_183
.word 0xf9401ba1
.word 0xf9401fa2
.word 0x53001c00
.word 0xaa0203f9
.word 0xaa0103f8
.word 0x35000080
.word 0x3940035e
.word 0xf9400f5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0x1400001d
.loc 100 517 0
.word 0xaa1903e0
bl _p_333
.word 0xf9001fa0
adrp x0, L_OBJC_SELECTOR_REFERENCES_107@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_107@PAGEOFF
ldr x0, [x0]
.word 0xf9001ba0
.word 0xaa1a03e0
.word 0xd2800001
bl _p_183
.word 0xf9401ba1
.word 0xf9401fa2
.word 0x53001c00
.word 0xaa0203f9
.word 0xaa0103f8
.word 0x35000080
.word 0x3940035e
.word 0xf9400f5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xaa1a03e2
bl _p_502
.word 0x53001c00
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_454:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_Class
Foundation_NSObject_get_Class:
.loc 100 699 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 100 700 0
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_3@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_3@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0xaa0003fa
.loc 100 701 0
.word 0x14000008
.loc 100 702 0
.word 0xaa1a03e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_3@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_3@PAGEOFF
ldr x1, [x1]
bl _p_354
.word 0xaa0003fa
.loc 100 704 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x35000100

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1688]
.word 0xd2800301
bl _p_7
.word 0xf900081a
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_455:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_Description
Foundation_NSObject_get_Description:
.loc 100 726 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 100 727 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_108@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_108@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x14000008
.loc 100 729 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_108@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_108@PAGEOFF
ldr x1, [x1]
bl _p_354
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_456:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_IsProxy
Foundation_NSObject_get_IsProxy:
.loc 100 739 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 100 740 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_109@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_109@PAGEOFF
ldr x1, [x1]
bl _p_350
.word 0x53001c00
.word 0x14000008
.loc 100 742 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_109@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_109@PAGEOFF
ldr x1, [x1]
bl _p_351
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_457:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_RetainCount
Foundation_NSObject_get_RetainCount:
.loc 100 752 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 100 753 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_110@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_110@PAGEOFF
ldr x1, [x1]
bl _p_398
.word 0x14000007
.loc 100 755 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_110@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_110@PAGEOFF
ldr x1, [x1]
bl _p_537
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_458:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_Self
Foundation_NSObject_get_Self:
.loc 100 765 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39408000
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000120
.loc 100 766 0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_111@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_111@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_174
.word 0x14000008
.loc 100 768 0
.word 0xf9400ba0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_111@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_111@PAGEOFF
ldr x1, [x1]
bl _p_354
bl _p_174
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_459:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_Superclass
Foundation_NSObject_get_Superclass:
.loc 100 779 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 100 780 0
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_112@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_112@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0xaa0003fa
.loc 100 781 0
.word 0x14000008
.loc 100 782 0
.word 0xaa1a03e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_112@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_112@PAGEOFF
ldr x1, [x1]
bl _p_354
.word 0xaa0003fa
.loc 100 784 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x35000100

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1688]
.word 0xd2800301
bl _p_7
.word 0xf900081a
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_45a:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_get_Zone
Foundation_NSObject_get_Zone:
.loc 100 794 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0x39408340
.word 0xd280009e
.word 0xa1e0000
.word 0xd2800081
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x34000100
.loc 100 795 0
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_113@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_113@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0xaa0003fa
.loc 100 796 0
.word 0x14000008
.loc 100 797 0
.word 0xaa1a03e0
bl _p_333
adrp x1, L_OBJC_SELECTOR_REFERENCES_113@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_113@PAGEOFF
ldr x1, [x1]
bl _p_354
.word 0xaa0003fa
.loc 100 799 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400000
.word 0xeb00035f
.word 0x9a9f17e0
.word 0x35000100

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #184]
.word 0xd2800301
bl _p_7
.word 0xf900081a
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_45b:
.text
	.align 4
	.no_dead_strip Foundation_NSObject__cctor
Foundation_NSObject__cctor:
.file 101 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSObject.iOS.cs"
.loc 101 66 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1880]
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941c430
.word 0xd63f0200
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4016]
.word 0xf9000001
.loc 100 23 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1880]
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941c430
.word 0xd63f0200
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #192]
.word 0xf9000001
.loc 100 50 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #200]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1472]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_45c:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_NSObject_Disposer__ctor
Foundation_NSObject_NSObject_Disposer__ctor:
.loc 99 809 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_450
.loc 99 812 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_45d:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_NSObject_Disposer_Add_Foundation_NSObject
Foundation_NSObject_NSObject_Disposer_Add_Foundation_NSObject:
.loc 99 816 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0xf9001bbf
.word 0x3900e3bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xf9400000
.word 0xf9001ba0
.word 0xd2800000
.word 0x3900e3a0
.word 0xf9401bb9
.word 0x9100e3b8
.word 0xaa1903e0
.word 0xaa1803e1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1903e0
.word 0xaa1803e1
bl _p_109
.loc 99 817 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf9400000
.word 0xaa0003f9
.word 0xaa1a03f8
.word 0x3940001e
.word 0xf9400b3a
.word 0xb9801b37
.word 0xb9801f20
.word 0x11000400
.word 0xb9001f20
.word 0xb9801b40
.word 0x6b0002ff
.word 0x54000142
.word 0x110006e0
.word 0xb9001b20
.word 0xaa1a03e0
.word 0xaa1703e1
.word 0xaa1803e2
.word 0xf9400343
.word 0xf9407870
.word 0xd63f0200
.word 0x14000005
.word 0xaa1903e0
.word 0xaa1803e1
bl _p_541
.word 0x14000001
.loc 99 818 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf9400000
.word 0xaa0003e1
.word 0x3940003e
.word 0xb9801800
.word 0xd2800021
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x53001c1a
.loc 99 819 0
.word 0xf90023bf
.word 0x94000005
.word 0xf94023a0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf9002fbe
.word 0x3940e3a0
.word 0x34000060
.word 0xf9401ba0
bl _p_111
.word 0xf9402fbe
.word 0xd61f03c0
.loc 99 820 0
.word 0x3400023a
.loc 99 825 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_100@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_100@PAGEOFF
ldr x1, [x1]
adrp x2, L_OBJC_SELECTOR_REFERENCES_114@PAGE
add x2, x2, L_OBJC_SELECTOR_REFERENCES_114@PAGEOFF
ldr x2, [x2]

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #1672]
.word 0xf9400063
.word 0xd2800004
bl _p_505
.loc 99 827 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_45e:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_NSObject_Disposer_Drain_Foundation_NSObject
Foundation_NSObject_NSObject_Disposer_Drain_Foundation_NSObject:
.loc 99 833 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xf90023bf
.word 0x390123bf
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0xf9001fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xf9400000
.word 0xf90023a0
.word 0xd2800000
.word 0x390123a0
.word 0xf94023ba
.word 0x910123b9
.word 0xaa1a03e0
.word 0xaa1903e1
bl _mono_monitor_enter_v4_fast
.word 0x35000080
.word 0xaa1a03e0
.word 0xaa1903e1
bl _p_109
.loc 99 834 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf940001a
.loc 99 835 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf9400000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xf9400021
.word 0xeb01001f
.word 0x540001e1
.loc 99 836 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #240]
.word 0xf9400001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf9000001
.word 0xf9002bbf
.word 0x94000013
.word 0xf9402ba0
.word 0xb4000040
bl _p_73
.word 0x14000016
.loc 99 838 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #232]
.word 0xf9400001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf9000001
.loc 99 839 0
.word 0xf9002bbf
.word 0x94000005
.word 0xf9402ba0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf9003fbe
.word 0x394123a0
.word 0x34000060
.word 0xf94023a0
bl _p_111
.word 0xf9403fbe
.word 0xd61f03c0
.loc 99 841 0
.word 0x9100a3a8
.word 0xaa1a03e0
.word 0x3940035e
bl _p_542
.word 0x14000008

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xf9401fa1
.loc 99 842 0
.word 0xaa0103e0
.word 0x3940003e
bl _p_535
.loc 99 841 0
.word 0x9100a3a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #248]
bl _p_543
.word 0x53001c00
.word 0x35fffe60
.word 0xf9002fbf
.word 0x94000005
.word 0xf9402fa0
.word 0xb4000040
bl _p_73
.word 0x14000009
.word 0xf90047be
.word 0x9100a3a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xf90033a0
.word 0xf94047be
.word 0xd61f03c0
.loc 99 843 0
.word 0xaa1a03f9
.word 0x3940035e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xb9801b5a
.word 0xb9001b3f
.word 0xb9801f20
.word 0x11000400
.word 0xb9001f20
.word 0xd2800000
.word 0x6b00035f
.word 0x540000ad
.word 0xf9400b20
.word 0xd2800001
.word 0xaa1a03e2
bl _p_544
.loc 99 844 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_45f:
.text
	.align 4
	.no_dead_strip Foundation_NSObject_NSObject_Disposer__cctor
Foundation_NSObject_NSObject_Disposer__cctor:
.loc 99 798 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xd2800401
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #272]
.word 0xf9400000
.word 0xf9000820
.word 0x91004022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #232]
.word 0xf9000001
.loc 99 799 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xd2800401
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #272]
.word 0xf9400000
.word 0xf9000820
.word 0x91004022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #240]
.word 0xf9000001
.loc 99 800 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #232]
.word 0xf9400001

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf9000001
.loc 99 802 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #280]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xf9000001
.loc 99 807 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1448]
.word 0xd2800201
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_460:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_FromRectangleF_System_Drawing_RectangleF
Foundation_NSValue_FromRectangleF_System_Drawing_RectangleF:
.file 102 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSValue.cs"
.loc 102 42 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xbd0013a0
.word 0xbd0017a1
.word 0xbd001ba2
.word 0xbd001fa3
.word 0x910143a0
.word 0xf9003ba0
.word 0xbd4013a0
.word 0xbd4017a1
.word 0xbd401ba2
.word 0xbd401fa3
bl _p_545
.word 0xf9403bbe
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.word 0xfd402ba0
.word 0xfd402fa1
.word 0xfd4033a2
.word 0xfd4037a3
bl _p_527
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_461:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_FromSizeF_System_Drawing_SizeF
Foundation_NSValue_FromSizeF_System_Drawing_SizeF:
.loc 102 47 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xbd0013a0
.word 0xbd0017a1
.word 0x910143a0
.word 0xf90033a0
.word 0xbd4013a0
.word 0xbd4017a1
bl _p_546
.word 0xf94033be
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd402ba0
.word 0xfd402fa1
bl _p_526
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_462:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_FromPointF_System_Drawing_PointF
Foundation_NSValue_FromPointF_System_Drawing_PointF:
.loc 102 52 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xbd0013a0
.word 0xbd0017a1
.word 0x910143a0
.word 0xf90033a0
.word 0xbd4013a0
.word 0xbd4017a1
bl _p_547
.word 0xf94033be
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd402ba0
.word 0xfd402fa1
bl _p_528
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_463:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_get_ClassHandle
Foundation_NSValue_get_ClassHandle:
.file 103 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSValue.g.cs"
.loc 103 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_464:
.text
	.align 4
	.no_dead_strip Foundation_NSValue__ctor_Foundation_NSObjectFlag
Foundation_NSValue__ctor_Foundation_NSObjectFlag:
.loc 103 70 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_251
.loc 103 72 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_465:
.text
	.align 4
	.no_dead_strip Foundation_NSValue__ctor_intptr
Foundation_NSValue__ctor_intptr:
.loc 103 76 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 103 78 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_466:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_Copy_Foundation_NSZone
Foundation_NSValue_Copy_Foundation_NSZone:
.loc 103 85 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_467:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_FromCATransform3D_CoreAnimation_CATransform3D
Foundation_NSValue_FromCATransform3D_CoreAnimation_CATransform3D:
.loc 103 108 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_115@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_115@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba3
.word 0x910063a2
.word 0xf9400064
.word 0xf9000fa4
.word 0xf9400464
.word 0xf90013a4
.word 0xf9400864
.word 0xf90017a4
.word 0xf9400c64
.word 0xf9001ba4
.word 0xf9401064
.word 0xf9001fa4
.word 0xf9401464
.word 0xf90023a4
.word 0xf9401864
.word 0xf90027a4
.word 0xf9401c64
.word 0xf9002ba4
.word 0xf9402064
.word 0xf9002fa4
.word 0xf9402464
.word 0xf90033a4
.word 0xf9402864
.word 0xf90037a4
.word 0xf9402c64
.word 0xf9003ba4
.word 0xf9403064
.word 0xf9003fa4
.word 0xf9403464
.word 0xf90043a4
.word 0xf9403864
.word 0xf90047a4
.word 0xf9403c63
.word 0xf9004ba3
bl _p_548

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #296]
bl _p_549
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_468:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_FromCGAffineTransform_CoreGraphics_CGAffineTransform
Foundation_NSValue_FromCGAffineTransform_CoreGraphics_CGAffineTransform:
.loc 103 116 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_116@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_116@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba3
.word 0x910063a2
.word 0xf9400064
.word 0xf9000fa4
.word 0xf9400464
.word 0xf90013a4
.word 0xf9400864
.word 0xf90017a4
.word 0xf9400c64
.word 0xf9001ba4
.word 0xf9401064
.word 0xf9001fa4
.word 0xf9401463
.word 0xf90023a3
bl _p_550

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #296]
bl _p_549
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_469:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_FromCGPoint_CoreGraphics_CGPoint
Foundation_NSValue_FromCGPoint_CoreGraphics_CGPoint:
.loc 103 123 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_117@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_117@PAGEOFF
ldr x1, [x1]
.word 0xfd400ba0
.word 0xfd400fa1
bl _p_551

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #296]
bl _p_549
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_46a:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_FromCGRect_CoreGraphics_CGRect
Foundation_NSValue_FromCGRect_CoreGraphics_CGRect:
.loc 103 130 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd000fa1
.word 0xfd0013a2
.word 0xfd0017a3

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_118@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_118@PAGEOFF
ldr x1, [x1]
.word 0xfd400ba0
.word 0xfd400fa1
.word 0xfd4013a2
.word 0xfd4017a3
bl _p_335

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #296]
bl _p_549
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_46b:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_FromCGSize_CoreGraphics_CGSize
Foundation_NSValue_FromCGSize_CoreGraphics_CGSize:
.loc 103 137 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_119@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_119@PAGEOFF
ldr x1, [x1]
.word 0xfd400ba0
.word 0xfd400fa1
bl _p_552

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #296]
bl _p_549
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_46c:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_FromUIEdgeInsets_UIKit_UIEdgeInsets
Foundation_NSValue_FromUIEdgeInsets_UIKit_UIEdgeInsets:
.loc 103 228 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xfd000ba0
.word 0xfd000fa1
.word 0xfd0013a2
.word 0xfd0017a3

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_120@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_120@PAGEOFF
ldr x1, [x1]
.word 0xfd400ba0
.word 0xfd400fa1
.word 0xfd4013a2
.word 0xfd4017a3
bl _p_553

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #296]
bl _p_549
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_46d:
.text
	.align 4
	.no_dead_strip Foundation_NSValue_ValueFromPointer_intptr
Foundation_NSValue_ValueFromPointer_intptr:
.loc 103 309 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xf9400000
adrp x1, L_OBJC_SELECTOR_REFERENCES_121@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_121@PAGEOFF
ldr x1, [x1]
.word 0xf9400ba2
bl _p_332

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #296]
bl _p_549
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_46e:
.text
	.align 4
	.no_dead_strip Foundation_NSValue__cctor
Foundation_NSValue__cctor:
.loc 103 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #304]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_46f:
.text
	.align 4
	.no_dead_strip Foundation_NSZone__ctor_intptr
Foundation_NSZone__ctor_intptr:
.file 104 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSZone.cs"
.loc 104 26 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 104 27 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_471:
.text
	.align 4
	.no_dead_strip Foundation_NSZone__ctor_intptr_bool
Foundation_NSZone__ctor_intptr_bool:
.loc 104 31 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 104 34 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_472:
.text
	.align 4
	.no_dead_strip Foundation_NSZone_get_Handle
Foundation_NSZone_get_Handle:
.loc 104 36 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_473:
.text
	.align 4
	.no_dead_strip Foundation_NSZone_set_Handle_intptr
Foundation_NSZone_set_Handle_intptr:
.loc 104 36 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_474:
.text
	.align 4
	.no_dead_strip Foundation_NSZone__cctor
Foundation_NSZone__cctor:
.loc 104 50 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
bl _p_554
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #184]
.word 0xd2800301
bl _p_7
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xf9000820

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #312]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_475:
.text
	.align 4
	.no_dead_strip Foundation_ProtocolAttribute_get_WrapperType
Foundation_ProtocolAttribute_get_WrapperType:
.file 105 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/ProtocolAttribute.cs"
.loc 105 34 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_476:
.text
	.align 4
	.no_dead_strip Foundation_RegisterAttribute__ctor
Foundation_RegisterAttribute__ctor:
.file 106 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/RegisterAttribute.cs"
.loc 106 37 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_477:
.text
	.align 4
	.no_dead_strip Foundation_RegisterAttribute__ctor_string
Foundation_RegisterAttribute__ctor_string:
.loc 106 39 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 106 40 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_478:
.text
	.align 4
	.no_dead_strip Foundation_RegisterAttribute__ctor_string_bool
Foundation_RegisterAttribute__ctor_string_bool:
.loc 106 43 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.loc 106 44 0
.word 0x394083a1
.word 0x39006001
.loc 106 45 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_479:
.text
	.align 4
	.no_dead_strip Foundation_RegisterAttribute_get_IsWrapper
Foundation_RegisterAttribute_get_IsWrapper:
.loc 106 53 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39406000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_47a:
.text
	.align 4
	.no_dead_strip Foundation_RegisterAttribute_set_SkipRegistration_bool
Foundation_RegisterAttribute_set_SkipRegistration_bool:
.loc 106 57 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0x394063a1
.word 0xf9400ba0
.word 0x39006401
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_47b:
.text
	.align 4
	.no_dead_strip Foundation_NSCopyingWrapper__ctor_intptr_bool
Foundation_NSCopyingWrapper__ctor_intptr_bool:
.file 107 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSCopying.g.cs"
.loc 107 60 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x394083a2
bl _p_259
.loc 107 62 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_47d:
.text
	.align 4
	.no_dead_strip Foundation_NSCopyingWrapper_Copy_Foundation_NSZone
Foundation_NSCopyingWrapper_Copy_Foundation_NSZone:
.loc 107 68 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_47e:
.text
	.align 4
	.no_dead_strip Foundation_NSEnumerator_get_ClassHandle
Foundation_NSEnumerator_get_ClassHandle:
.file 108 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSEnumerator.g.cs"
.loc 108 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #320]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_47f:
.text
	.align 4
	.no_dead_strip Foundation_NSEnumerator__ctor_intptr
Foundation_NSEnumerator__ctor_intptr:
.loc 108 74 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 108 76 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_480:
.text
	.align 4
	.no_dead_strip Foundation_NSEnumerator__cctor
Foundation_NSEnumerator__cctor:
.loc 108 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #328]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #320]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_481:
.text
	.align 4
	.no_dead_strip Foundation_NSException_get_ClassHandle
Foundation_NSException_get_ClassHandle:
.file 109 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSException.g.cs"
.loc 109 52 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xf9400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_482:
.text
	.align 4
	.no_dead_strip Foundation_NSException__ctor_intptr
Foundation_NSException__ctor_intptr:
.loc 109 76 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_130
.loc 109 78 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_483:
.text
	.align 4
	.no_dead_strip Foundation_NSException_Copy_Foundation_NSZone
Foundation_NSException_Copy_Foundation_NSZone:
.loc 109 108 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_54@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_54@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_332
bl _p_174
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_484:
.text
	.align 4
	.no_dead_strip Foundation_NSException_get_CallStackSymbols
Foundation_NSException_get_CallStackSymbols:
.loc 109 147 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_122@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_122@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_555
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_485:
.text
	.align 4
	.no_dead_strip Foundation_NSException_get_Name
Foundation_NSException_get_Name:
.loc 109 160 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_123@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_123@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_486:
.text
	.align 4
	.no_dead_strip Foundation_NSException_get_Reason
Foundation_NSException_get_Reason:
.loc 109 173 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_124@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_124@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_487:
.text
	.align 4
	.no_dead_strip Foundation_NSException__cctor
Foundation_NSException__cctor:
.loc 109 50 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #344]
bl _p_199
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_488:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper__ctor_intptr_bool
Foundation_NSObjectProtocolWrapper__ctor_intptr_bool:
.file 110 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/Foundation/NSObjectProtocol.g.cs"
.loc 110 194 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x394083a2
bl _p_259
.loc 110 196 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_49c:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_GetNativeHash
Foundation_NSObjectProtocolWrapper_GetNativeHash:
.loc 110 202 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_102@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_102@PAGEOFF
ldr x1, [x1]
bl _p_398
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_49d:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_IsEqual_Foundation_NSObject
Foundation_NSObjectProtocolWrapper_IsEqual_Foundation_NSObject:
.loc 110 209 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_77@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_77@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_49e:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_PerformSelector_ObjCRuntime_Selector
Foundation_NSObjectProtocolWrapper_PerformSelector_ObjCRuntime_Selector:
.loc 110 216 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xaa1a03e0
.word 0xd2800001
bl _p_183
.word 0x53001c00
.word 0x350001c0
.loc 110 218 0
.word 0xf9400fa0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_104@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_104@PAGEOFF
ldr x1, [x1]
.word 0x3940035e
.word 0xf9400f42
bl _p_332
bl _p_174
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 110 217 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd287f801
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_49f:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_PerformSelector_ObjCRuntime_Selector_Foundation_NSObject
Foundation_NSObjectProtocolWrapper_PerformSelector_ObjCRuntime_Selector_Foundation_NSObject:
.loc 110 225 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xaa1903e0
.word 0xd2800001
bl _p_183
.word 0x53001c00
.word 0x350003c0
.loc 110 227 0
.word 0xf94017a0
.word 0xf9400802
adrp x1, L_OBJC_SELECTOR_REFERENCES_105@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_105@PAGEOFF
ldr x1, [x1]
.word 0x3940033e
.word 0xf9400f20
.word 0xaa0203f9
.word 0xaa0103f8
.word 0xf9001ba0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xf9401ba2
.word 0xaa1a03e3
bl _p_302
bl _p_174
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 110 226 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd287f801
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4a0:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_PerformSelector_ObjCRuntime_Selector_Foundation_NSObject_Foundation_NSObject
Foundation_NSObjectProtocolWrapper_PerformSelector_ObjCRuntime_Selector_Foundation_NSObject_Foundation_NSObject:
.loc 110 234 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba0
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa
.word 0xaa1803e0
.word 0xd2800001
bl _p_183
.word 0x53001c00
.word 0x350004e0
.loc 110 236 0
.word 0xf9401ba0
.word 0xf9400802
adrp x1, L_OBJC_SELECTOR_REFERENCES_106@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_106@PAGEOFF
ldr x1, [x1]
.word 0x3940031e
.word 0xf9400f00
.word 0xaa0203f8
.word 0xaa0103f7
.word 0xf9001fa0
.word 0xb4000099
.word 0x3940033e
.word 0xf9400b39
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400019
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xf9401fa2
.word 0xaa1903e3
.word 0xaa1a03e4
bl _p_539
bl _p_174
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 110 235 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd287f801
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4a1:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_IsKindOfClass_ObjCRuntime_Class
Foundation_NSObjectProtocolWrapper_IsKindOfClass_ObjCRuntime_Class:
.loc 110 243 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_0@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_0@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4a2:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_IsMemberOfClass_ObjCRuntime_Class
Foundation_NSObjectProtocolWrapper_IsMemberOfClass_ObjCRuntime_Class:
.loc 110 250 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400801
adrp x0, L_OBJC_SELECTOR_REFERENCES_103@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_103@PAGEOFF
ldr x0, [x0]
.word 0xaa0103f9
.word 0xf90017a0
.word 0xb400009a
.word 0x3940035e
.word 0xf9400b5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4a3:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_ConformsToProtocol_intptr
Foundation_NSObjectProtocolWrapper_ConformsToProtocol_intptr:
.loc 110 257 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_98@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_98@PAGEOFF
ldr x1, [x1]
.word 0xf9400fa2
bl _p_144
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4a4:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_RespondsToSelector_ObjCRuntime_Selector
Foundation_NSObjectProtocolWrapper_RespondsToSelector_ObjCRuntime_Selector:
.loc 110 264 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf94013a0
.word 0xf9400800
.word 0xf9001fa0
adrp x0, L_OBJC_SELECTOR_REFERENCES_107@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_107@PAGEOFF
ldr x0, [x0]
.word 0xf9001ba0
.word 0xaa1a03e0
.word 0xd2800001
bl _p_183
.word 0xf9401ba1
.word 0xf9401fa2
.word 0x53001c00
.word 0xaa0203f9
.word 0xf90017a1
.word 0x35000080
.word 0x3940035e
.word 0xf9400f5a
.word 0x14000005

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf940001a
.word 0xaa1903e0
.word 0xf94017a1
.word 0xaa1a03e2
bl _p_144
.word 0x53001c00
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_4a5:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_DangerousRetain
Foundation_NSObjectProtocolWrapper_DangerousRetain:
.loc 110 271 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_1@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_1@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_174
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4a6:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_DangerousRelease
Foundation_NSObjectProtocolWrapper_DangerousRelease:
.loc 110 278 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_2@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_2@PAGEOFF
ldr x1, [x1]
bl _p_166
.loc 110 279 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4a7:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_DangerousAutorelease
Foundation_NSObjectProtocolWrapper_DangerousAutorelease:
.loc 110 285 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_99@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_99@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_174
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4a8:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_get_Description
Foundation_NSObjectProtocolWrapper_get_Description:
.loc 110 292 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_108@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_108@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_329
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4a9:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_get_Superclass
Foundation_NSObjectProtocolWrapper_get_Superclass:
.loc 110 302 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_112@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_112@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0xaa0003fa
.loc 110 303 0
.word 0xaa1a03e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000100

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1688]
.word 0xd2800301
bl _p_7
.word 0xf900081a
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4aa:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_get_Class
Foundation_NSObjectProtocolWrapper_get_Class:
.loc 110 313 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_3@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_3@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0xaa0003fa
.loc 110 314 0
.word 0xaa1a03e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000100

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1688]
.word 0xd2800301
bl _p_7
.word 0xf900081a
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4ab:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_get_Self
Foundation_NSObjectProtocolWrapper_get_Self:
.loc 110 323 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_111@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_111@PAGEOFF
ldr x1, [x1]
bl _p_210
bl _p_174
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4ac:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_get_IsProxy
Foundation_NSObjectProtocolWrapper_get_IsProxy:
.loc 110 332 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_109@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_109@PAGEOFF
ldr x1, [x1]
bl _p_350
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4ad:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_get_RetainCount
Foundation_NSObjectProtocolWrapper_get_RetainCount:
.loc 110 341 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
adrp x1, L_OBJC_SELECTOR_REFERENCES_110@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_110@PAGEOFF
ldr x1, [x1]
bl _p_398
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4ae:
.text
	.align 4
	.no_dead_strip Foundation_NSObjectProtocolWrapper_get_Zone
Foundation_NSObjectProtocolWrapper_get_Zone:
.loc 110 351 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9400b40
adrp x1, L_OBJC_SELECTOR_REFERENCES_113@PAGE
add x1, x1, L_OBJC_SELECTOR_REFERENCES_113@PAGEOFF
ldr x1, [x1]
bl _p_210
.word 0xaa0003fa
.loc 110 352 0
.word 0xaa1a03e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000100

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #184]
.word 0xd2800301
bl _p_7
.word 0xf900081a
.word 0x14000002
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4af:
.text
	.align 4
	.no_dead_strip CoreVideo_CVBuffer__ctor_intptr
CoreVideo_CVBuffer__ctor_intptr:
.file 111 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreVideo/CVBuffer.cs"
.loc 111 76 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400fa0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000120
.loc 111 79 0
.word 0xf9400fa0
bl _p_556
.loc 111 80 0
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 111 81 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 111 77 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd28484e1
bl _p_68
.word 0xaa0003e1
.word 0xd2801820
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4b0:
.text
	.align 4
	.no_dead_strip CoreVideo_CVBuffer__ctor_intptr_bool
CoreVideo_CVBuffer__ctor_intptr_bool:
.loc 111 86 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0x394083a0
.word 0x35000060
.loc 111 87 0
.word 0xf9400fa0
bl _p_556
.loc 111 89 0
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 111 90 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4b1:
.text
	.align 4
	.no_dead_strip CoreVideo_CVBuffer_Finalize
CoreVideo_CVBuffer_Finalize:
.loc 111 94 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba2
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9001fbe
.loc 111 95 0
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9401fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_4b2:
.text
	.align 4
	.no_dead_strip CoreVideo_CVBuffer_Dispose
CoreVideo_CVBuffer_Dispose:
.loc 111 99 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800021
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.loc 111 100 0
.word 0xf9400ba0
bl _p_167
.loc 111 101 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4b3:
.text
	.align 4
	.no_dead_strip CoreVideo_CVBuffer_get_Handle
CoreVideo_CVBuffer_get_Handle:
.loc 111 104 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4b4:
.text
	.align 4
	.no_dead_strip CoreVideo_CVBuffer_Dispose_bool
CoreVideo_CVBuffer_Dispose_bool:
.loc 111 115 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000140
.loc 111 116 0
.word 0xf9400ba0
.word 0xf9400800
bl _p_557
.loc 111 117 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400ba0
.word 0xf9000801
.loc 111 119 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4b7:
.text
	.align 4
	.no_dead_strip CoreVideo_CVImageBuffer__ctor_intptr
CoreVideo_CVImageBuffer__ctor_intptr:
.file 112 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreVideo/CVImageBuffer.cs"
.loc 112 145 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_558
.loc 112 147 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4b8:
.text
	.align 4
	.no_dead_strip CoreVideo_CVImageBuffer__ctor_intptr_bool
CoreVideo_CVImageBuffer__ctor_intptr_bool:
.loc 112 152 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x394083a2
bl _p_559
.loc 112 154 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4b9:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueueSynchronizationContext__ctor_CoreFoundation_DispatchQueue
CoreFoundation_DispatchQueueSynchronizationContext__ctor_CoreFoundation_DispatchQueue:
.file 113 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreFoundation/DispatchQueueSynchronizationContext.cs"
.loc 113 41 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xd2800001
bl _p_560
.word 0x53001c00
.word 0x35000240
.loc 113 43 0
.word 0xf9400fa0
.word 0xf9400ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 113 44 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.loc 113 42 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2885e81
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4ba:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueueSynchronizationContext_CreateCopy
CoreFoundation_DispatchQueueSynchronizationContext_CreateCopy:
.loc 113 48 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c00
.word 0xf90017a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800401
bl _p_7
.word 0xf94017a1
.word 0xf90013a0
bl _p_561
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4bb:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueueSynchronizationContext_Post_System_Threading_SendOrPostCallback_object
CoreFoundation_DispatchQueueSynchronizationContext_Post_System_Threading_SendOrPostCallback_object:
.loc 113 0 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #360]
.word 0xd2800401
bl _p_7
.word 0xf9400fa1
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf94013a1
.word 0xf9000c01
.word 0x91006002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.loc 113 53 0
.word 0xf9400ba1
.word 0xf9400c21
.word 0xf9001fa1
.word 0xaa0003e1
.word 0xf9001ba1
.word 0xeb1f001f
.word 0x10000011
.word 0x54000620

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2352]
.word 0xd2800e01
bl _p_7
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xf9401fa2
.word 0xeb1f001f
.word 0x10000011
.word 0x54000460
.word 0xf9001020
.word 0x91008023
.word 0xd349fc63
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xf9001420

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xf9002020

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #384]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0x3940005e
bl _p_562
.loc 113 54 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801f60
.word 0xaa1103e1
bl _p_2
.word 0xd2801280
.word 0xaa1103e1
bl _p_2

Lme_4bc:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueueSynchronizationContext_Send_System_Threading_SendOrPostCallback_object
CoreFoundation_DispatchQueueSynchronizationContext_Send_System_Threading_SendOrPostCallback_object:
.loc 113 0 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #392]
.word 0xd2800401
bl _p_7
.word 0xf9400fa1
.word 0xf9000801
.word 0x91004002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf94013a1
.word 0xf9000c01
.word 0x91006002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.loc 113 58 0
.word 0xf9400ba1
.word 0xf9400c21
.word 0xf9001fa1
.word 0xaa0003e1
.word 0xf9001ba1
.word 0xeb1f001f
.word 0x10000011
.word 0x54000620

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #2352]
.word 0xd2800e01
bl _p_7
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xf9401fa2
.word 0xeb1f001f
.word 0x10000011
.word 0x54000460
.word 0xf9001020
.word 0x91008023
.word 0xd349fc63
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #400]
.word 0xf9001420

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xf9002020

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #416]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f
.word 0xaa0203e0
.word 0x3940005e
bl _p_563
.loc 113 59 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801f60
.word 0xaa1103e1
bl _p_2
.word 0xd2801280
.word 0xaa1103e1
bl _p_2

Lme_4bd:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueueSynchronizationContext__c__DisplayClass3_0__ctor
CoreFoundation_DispatchQueueSynchronizationContext__c__DisplayClass3_0__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4be:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueueSynchronizationContext__c__DisplayClass3_0__Postb__0
CoreFoundation_DispatchQueueSynchronizationContext__c__DisplayClass3_0__Postb__0:
.loc 113 53 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400802
.word 0xf9400c01
.word 0xaa0203e0
.word 0xf90013a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4bf:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueueSynchronizationContext__c__DisplayClass4_0__ctor
CoreFoundation_DispatchQueueSynchronizationContext__c__DisplayClass4_0__ctor:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4c0:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueueSynchronizationContext__c__DisplayClass4_0__Sendb__0
CoreFoundation_DispatchQueueSynchronizationContext__c__DisplayClass4_0__Sendb__0:
.loc 113 58 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400802
.word 0xf9400c01
.word 0xaa0203e0
.word 0xf90013a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4c1:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchObject__ctor_intptr_bool
CoreFoundation_DispatchObject__ctor_intptr_bool:
.file 114 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/CoreFoundation/Dispatch.cs"
.loc 114 64 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400fa0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000160
.loc 114 67 0
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000801
.loc 114 68 0
.word 0x394083a0
.word 0x35000060
.loc 114 69 0
.word 0xf9400fa0
bl _p_564
.loc 114 70 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 114 65 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2886201
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4c2:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchObject_Finalize
CoreFoundation_DispatchObject_Finalize:
.loc 114 84 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba2
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.word 0xf9000fbf
.word 0x94000005
.word 0xf9400fa0
.word 0xb4000040
bl _p_73
.word 0x14000006
.word 0xf9001fbe
.loc 114 85 0
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9401fbe
.word 0xd61f03c0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_4c5:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchObject_Dispose
CoreFoundation_DispatchObject_Dispose:
.loc 114 89 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xd2800021
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9403850
.word 0xd63f0200
.loc 114 90 0
.word 0xf9400ba0
bl _p_167
.loc 114 91 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4c6:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchObject_get_Handle
CoreFoundation_DispatchObject_get_Handle:
.loc 114 94 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4c7:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchObject_Dispose_bool
CoreFoundation_DispatchObject_Dispose_bool:
.loc 114 99 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x34000140
.loc 114 100 0
.word 0xf9400ba0
.word 0xf9400800
bl _p_565
.loc 114 101 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf9400ba0
.word 0xf9000801
.loc 114 103 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4c8:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchObject_Equals_object
CoreFoundation_DispatchObject_Equals_object:
.loc 114 139 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xb500007a
.loc 114 140 0
.word 0xd2800000
.word 0x14000013
.loc 114 142 0
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.loc 114 143 0
.word 0xf9400b00
.word 0xf94013a1
.word 0xf9400821
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4c9:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchObject_GetHashCode
CoreFoundation_DispatchObject_GetHashCode:
.loc 114 148 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4ca:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueue__ctor_intptr_bool
CoreFoundation_DispatchQueue__ctor_intptr_bool:
.loc 114 178 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x394083a2
bl _p_566
.loc 114 180 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4cb:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueue__ctor_intptr
CoreFoundation_DispatchQueue__ctor_intptr:
.loc 114 182 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xd2800002
bl _p_566
.loc 114 184 0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4cc:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueue_static_dispatcher_to_managed_intptr
CoreFoundation_DispatchQueue_static_dispatcher_to_managed_intptr:
.loc 114 328 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xb90023bf
.word 0xf90017bf
.word 0x910083a0
.word 0xf9001ba0
.word 0xaa1a03e0
bl _p_75
.word 0xf9401bbe
.word 0xf90003c0
.loc 114 329 0
.word 0x910083a0
bl _p_76
.word 0xaa0003fa
.word 0xaa1a03f9
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #432]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800019
.word 0xaa1903fa
.loc 114 330 0
.word 0x910083a0
bl _p_190
.loc 114 331 0
.word 0xb40004f9
.loc 114 332 0
bl _p_567
.word 0xf90017a0
.loc 114 340 0
.word 0xf94017a0
.word 0xb50001e0
.loc 114 341 0
.word 0x3940035e
.word 0xf9400f40
.word 0xf90037a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800401
bl _p_7
.word 0xf94037a1
.word 0xf90033a0
bl _p_561
.word 0xf94033a0
bl _p_311
.word 0x14000001
.loc 114 344 0
.word 0x3940035e
.word 0xf9400b41
.word 0xaa0103e0
.word 0xf90033a1
.word 0xf9400c30
.word 0xd63f0200
.word 0xf94033a0
.loc 114 345 0
.word 0xf9001fbf
.word 0x94000005
.word 0xf9401fa0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf9002bbe
.loc 114 346 0
.word 0xf94017a0
.word 0xb5000060
.loc 114 347 0
.word 0xd2800000
bl _p_311
.loc 114 348 0
.word 0xf9402bbe
.word 0xd61f03c0
.loc 114 351 0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_4cd:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueue_static_dispatcher_iterations_to_managed_intptr_intptr
CoreFoundation_DispatchQueue_static_dispatcher_iterations_to_managed_intptr_intptr:
.loc 114 356 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1
.word 0xb9002bbf
.word 0xf9001bbf
.word 0x9100a3a0
.word 0xf9001fa0
.word 0xaa1903e0
bl _p_75
.word 0xf9401fbe
.word 0xf90003c0
.loc 114 357 0
.word 0x9100a3a0
bl _p_76
.word 0xaa0003f9
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000160
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803f9
.loc 114 358 0
.word 0x9100a3a0
bl _p_190
.loc 114 359 0
.word 0xb4000598
.loc 114 360 0
bl _p_567
.word 0xf9001ba0
.loc 114 368 0
.word 0xf9401ba0
.word 0xb50001e0
.loc 114 369 0
.word 0x3940033e
.word 0xf9400f20
.word 0xf9003fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800401
bl _p_7
.word 0xf9403fa1
.word 0xf9003ba0
bl _p_561
.word 0xf9403ba0
bl _p_311
.word 0x14000001
.loc 114 372 0
.word 0x3940033e
.word 0xf9400b20
.word 0xf9003fa0
.word 0xf94013a0
bl _p_568
.word 0xaa0003e1
.word 0xf9403fa2
.word 0xaa0203e0
.word 0xf9003ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9403ba0
.loc 114 373 0
.word 0xf90023bf
.word 0x94000005
.word 0xf94023a0
.word 0xb4000040
bl _p_73
.word 0x14000008
.word 0xf90033be
.loc 114 374 0
.word 0xf9401ba0
.word 0xb5000060
.loc 114 375 0
.word 0xd2800000
bl _p_311
.loc 114 376 0
.word 0xf94033be
.word 0xd61f03c0
.loc 114 379 0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_4ce:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueue_DispatchAsync_System_Action
CoreFoundation_DispatchQueue_DispatchAsync_System_Action:
.loc 114 383 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000320
.loc 114 386 0
.word 0xf9400ba1
.word 0xf9400820
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #448]
.word 0xf9400fa0
bl _p_569
.word 0x910083a1
.word 0xf90017a1
bl _p_83
.word 0xf94017be
.word 0xf90003c0
.word 0xf9401ba0
.word 0xb98023a1
.word 0x93407c21

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #456]
.word 0xf9400042
bl _p_570
.loc 114 387 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 114 384 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd285c321
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4cf:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueue_DispatchSync_System_Action
CoreFoundation_DispatchQueue_DispatchSync_System_Action:
.loc 114 391 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb4000320
.loc 114 394 0
.word 0xf9400ba1
.word 0xf9400820
.word 0xf9001ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #448]
.word 0xf9400fa0
bl _p_569
.word 0x910083a1
.word 0xf90017a1
bl _p_83
.word 0xf94017be
.word 0xf90003c0
.word 0xf9401ba0
.word 0xb98023a1
.word 0x93407c21

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #456]
.word 0xf9400042
bl _p_571
.loc 114 395 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 114 392 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd285c321
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4d0:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueue_Equals_object
CoreFoundation_DispatchQueue_Equals_object:
.loc 114 457 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fba
.word 0xf90013a0
.word 0xaa0103fa
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803fa
.loc 114 458 0
.word 0xaa1803e0
.word 0xd2800001
bl _p_560
.word 0x53001c00
.word 0x34000060
.loc 114 459 0
.word 0xd2800000
.word 0x14000007
.loc 114 460 0
.word 0x3940035e
.word 0xf9400b40
.word 0xf94013a1
.word 0xf9400821
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf9400bb8
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4d3:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueue_op_Equality_CoreFoundation_DispatchQueue_CoreFoundation_DispatchQueue
CoreFoundation_DispatchQueue_op_Equality_CoreFoundation_DispatchQueue_CoreFoundation_DispatchQueue:
.loc 114 465 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xb50000c0
.loc 114 466 0
.word 0xd2800001
.word 0xf9400fa0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x14000008
.loc 114 467 0
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf9400ba2
.word 0xf9400042
.word 0xf9402c50
.word 0xd63f0200
.word 0x53001c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4d4:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueue_GetHashCode
CoreFoundation_DispatchQueue_GetHashCode:
.loc 114 479 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4d5:
.text
	.align 4
	.no_dead_strip CoreFoundation_DispatchQueue__cctor
CoreFoundation_DispatchQueue__cctor:
.loc 114 288 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1448]
.word 0xd2800201
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #464]
.word 0xf9000001
.loc 114 320 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #472]
.word 0xd2800e01
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #480]
.word 0xf9001420

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #488]
.word 0xf9002020

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #496]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #456]
.word 0xf9000001
.loc 114 323 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #504]
.word 0xd2800e01
bl _p_7
.word 0xaa0003e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xf9001420

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #520]
.word 0xf9002020

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #528]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0x3901803f

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_4d6:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_ConstructNSObject_T_GSHAREDVT_intptr_System_Type_ObjCRuntime_Runtime_MissingCtorResolution_intptr_intptr
ObjCRuntime_Runtime_ConstructNSObject_T_GSHAREDVT_intptr_System_Type_ObjCRuntime_Runtime_MissingCtorResolution_intptr_intptr:
.loc 9 1084 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xf90013b5
.word 0xa902ebb9
.word 0xf9001fa8
.word 0xf9002faf
.word 0xf90023a0
.word 0xf90027a1
.word 0xf9002ba2
.word 0xaa0303f9
.word 0xaa0403fa
.word 0xf9402fa0
bl _p_572
.word 0xaa0003f5
.word 0xb98002a0
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f4
.word 0xb9803aa0
.word 0x8b000280
.word 0xf94012a1
.word 0xf94016a2
.word 0xd63f0040
.word 0xd2800001
.word 0xf94027a0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x35000ec0
.loc 9 1087 0
.word 0xf94027a0
bl _p_131
.word 0xaa0003f3
.loc 9 1089 0
.word 0xaa1303e0
.word 0xd2800001
bl _p_132
.word 0x53001c00
.word 0x340004a0
.loc 9 1090 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xf94023a0
.word 0xf94027a2
.word 0xb98053a3
.word 0xaa1903e4
.word 0xaa1a03e5
bl _p_133
.loc 9 1091 0
.word 0xb9803aa0
.word 0x8b000280
.word 0xf94012a1
.word 0xf94016a2
.word 0xd63f0040
.word 0xb9803aa0
.word 0x8b000281
.word 0xb98052a0
.word 0x8b000280
.word 0xf94012a2
.word 0xf9401aa3
.word 0xd63f0060
.word 0xf9401fa0
.word 0xb98052a1
.word 0x8b010281
.word 0xf90037a1
.word 0xf90033a0
.word 0xf94012a0
.word 0xf9401aa0
.word 0xf9402fa0
bl _p_573
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _mono_gsharedvt_value_copy
.word 0x14000044
.loc 9 1094 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800021
bl _p_30
.word 0xf90037a0
.word 0xf90033a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1752]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf94037a3
.word 0xf94023a0
.word 0xf9000840
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94033a1
.word 0xaa1303e0
.word 0x3940027e
bl _p_134
.word 0xf94006a1
bl _p_574
.word 0xaa0003fa
.word 0xf9400ab9
.word 0xd280005e
.word 0xeb1e033f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e033f
.word 0x540000e0
.word 0x91004359
.word 0x1400000c
.word 0xb98042a0
.word 0x8b000299
.word 0xf900033a
.word 0x14000008
.word 0xf9400ea1
.word 0xb9804aa0
.word 0x8b000288
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xb9804aa0
.word 0x8b000299
.word 0xb9805aa0
.word 0x8b000280
.word 0xf94012a2
.word 0xf9401aa3
.word 0xaa1903e1
.word 0xd63f0060
.word 0xf9401fa0
.word 0xb9805aa1
.word 0x8b010281
.word 0xf90037a1
.word 0xf90033a0
.word 0xf94012a0
.word 0xf9401aa0
.word 0xf9402fa0
bl _p_573
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _mono_gsharedvt_value_copy
.word 0xa94153b3
.word 0xf94013b5
.word 0xa942ebb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 9 1085 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2813e21
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4e0:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_ConstructINativeObject_T_GSHAREDVT_intptr_bool_System_Type_ObjCRuntime_Runtime_MissingCtorResolution
ObjCRuntime_Runtime_ConstructINativeObject_T_GSHAREDVT_intptr_bool_System_Type_ObjCRuntime_Runtime_MissingCtorResolution:
.loc 9 1100 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xf90013b6
.word 0xa902ebb9
.word 0xf9001fa8
.word 0xf9002baf
.word 0xf90023a0
.word 0xf90027a1
.word 0xaa0203f9
.word 0xaa0303fa
.word 0xf9402ba0
bl _p_575
.word 0xaa0003f6
.word 0xb98002c0
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f5
.word 0xd2800000
.word 0xeb00033f
.word 0x9a9f17e0
.word 0x35000f60
.loc 9 1103 0
.word 0xaa1903e0
.word 0x3940033e
bl _p_137
.word 0x53001c00
.word 0x340000c0
.loc 9 1104 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940a430
.word 0xd63f0200
.word 0xaa0003f9
.loc 9 1106 0
.word 0xaa1903e0
bl _p_138
.loc 9 1108 0
.word 0xaa0003e1
.word 0xf90033a1
.word 0xd2800001
bl _p_132
.word 0xf94033a1
.word 0x53001c00
.word 0xaa0103f4
.word 0x340001a0
.loc 9 1109 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xd2800000
.word 0x93407c04
.word 0xd2800000
.word 0x93407c05
.word 0xf94023a0
.word 0xaa1903e2
.word 0xaa1a03e3
bl _p_133

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800041
bl _p_30
.word 0xf9003fa0
.loc 9 1111 0
.word 0xf9003ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1752]
.word 0xd2800301
bl _p_7
.word 0xaa0003e2
.word 0xf9403fa3
.word 0xf94023a0
.word 0xf9000840
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf90037a0
.word 0xf90033a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1848]
.word 0xd2800221
bl _p_7
.word 0xaa0003e2
.word 0xf94037a3
.word 0x394123a0
.word 0x39004040
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94033a1
.word 0xaa1403e0
.word 0x3940029e
bl _p_134
.word 0xf94006c1
bl _p_574
.word 0xaa0003fa
.word 0xf9400ad9
.word 0xd280005e
.word 0xeb1e033f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e033f
.word 0x540000e0
.word 0x91004359
.word 0x1400000c
.word 0xb98032c0
.word 0x8b0002b9
.word 0xf900033a
.word 0x14000008
.word 0xf9400ec1
.word 0xb9803ac0
.word 0x8b0002a8
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xb9803ac0
.word 0x8b0002b9
.word 0xb98042c0
.word 0x8b0002a0
.word 0xf94012c2
.word 0xf94016c3
.word 0xaa1903e1
.word 0xd63f0060
.word 0xf9401fa0
.word 0xb98042c1
.word 0x8b0102a1
.word 0xf90037a1
.word 0xf90033a0
.word 0xf94012c0
.word 0xf94016c0
.word 0xf9402ba0
bl _p_576
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _mono_gsharedvt_value_copy
.word 0xa94157b4
.word 0xf94013b6
.word 0xa942ebb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.loc 9 1101 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2813e21
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4e1:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetNSObject_T_GSHAREDVT_intptr
ObjCRuntime_Runtime_GetNSObject_T_GSHAREDVT_intptr:
.loc 9 1193 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001fa8
.word 0xf90023af
.word 0xaa0003fa
.word 0xf94023a0
bl _p_577
.word 0xaa0003f9
.word 0xb9800320
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f8
.word 0xb9804320
.word 0x8b000300
.word 0xf9401721
.word 0xf9401b22
.word 0xd63f0040
.word 0xb9804b21
.word 0xaa1803e0
.word 0x8b010000
.word 0xf9401721
.word 0xf9401b22
.word 0xd63f0040

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xaa1a03e0
bl _p_578
.word 0x53001c00
.word 0x34000360
.loc 9 1194 0
.word 0xb9804b20
.word 0x8b000300
.word 0xf9401721
.word 0xf9401b22
.word 0xd63f0040
.word 0xb9804b20
.word 0x8b000301
.word 0xb9806b20
.word 0x8b000300
.word 0xf9401722
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9401fa0
.word 0xb9806b21
.word 0x8b010301
.word 0xf9002fa1
.word 0xf9002ba0
.word 0xf9401720
.word 0xf9401f20
.word 0xf94023a0
bl _p_579
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402fa1
bl _mono_gsharedvt_value_copy
.word 0x140000bb
.loc 9 1196 0
.word 0xaa1a03e0
bl _p_92
.word 0xaa0003f7
.loc 9 1199 0
.word 0xaa1703e0
.word 0xb5000b40
.loc 9 1201 0
.word 0xaa1a03e0
bl _p_119
.word 0xaa0003f7
.loc 9 1205 0
.word 0xaa1703e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1480]
.word 0xf9400021
bl _p_120
.word 0x53001c00
.word 0x340006c0
.loc 9 1206 0
.word 0xaa1703e0
bl _p_128
.word 0xaa0003f7
.loc 9 1207 0
.word 0xaa1703e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340000a0
.loc 9 1208 0
.word 0xf94023a0
bl _p_580
.word 0xaa0003f7
.word 0x1400002b
.loc 9 1209 0
.word 0xf94023a0
bl _p_580
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940f030
.word 0xd63f0200
.word 0x53001c00
.word 0x340000a0
.loc 9 1210 0
.word 0xf94023a0
bl _p_580
.word 0xaa0003f7
.word 0x1400001e
.loc 9 1211 0
.word 0xf94023a0
bl _p_580
.word 0xaa0003e1
.word 0xaa1703e0
.word 0xf94002e2
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0x350002a0
.loc 9 1213 0
adrp x0, L_OBJC_SELECTOR_REFERENCES_0@PAGE
add x0, x0, L_OBJC_SELECTOR_REFERENCES_0@PAGEOFF
ldr x0, [x0]
.word 0xf9002ba0
.word 0xf94023a0
bl _p_580
bl _p_143
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xaa1a03e0
bl _p_144
.word 0x53001c00
.word 0x34000100
.loc 9 1216 0
.word 0xf94023a0
bl _p_580
.word 0xaa0003f7
.loc 9 1218 0
.word 0x14000004
.loc 9 1219 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x23, [x16, #544]
.loc 9 1221 0
.word 0xd2800000
.word 0x93407c00
.word 0xf9002ba0
.word 0xd2800000
.word 0x93407c00
.word 0xf9002fa0
.word 0xf94023a0
bl _p_581
.word 0xf90033a0
.word 0xf94023a0
bl _p_582
.word 0xaa0003e5
.word 0xf9402ba3
.word 0xf9402fa4
.word 0xf94033af
.word 0xb9804320
.word 0x8b000308
.word 0xaa1a03e0
.word 0xaa1703e1
.word 0xd2800002
.word 0xd63f00a0
.loc 9 1222 0
.word 0x14000050
.loc 9 1223 0
.word 0xf94023a0
bl _p_583
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1703e0
bl _p_148
.word 0xf9400721
bl _p_574
.word 0xaa0003fa
.word 0xf9400b36
.word 0xd280005e
.word 0xeb1e02df
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e02df
.word 0x540000e0
.word 0x91004356
.word 0x1400000c
.word 0xb9805320
.word 0x8b000316
.word 0xf90002da
.word 0x14000008
.word 0xf9400f21
.word 0xb9805b20
.word 0x8b000308
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xb9805b20
.word 0x8b000316
.word 0xb9804320
.word 0x8b000300
.word 0xf9401722
.word 0xf9401f23
.word 0xaa1603e1
.word 0xd63f0060
.loc 9 1224 0
.word 0xb9804320
.word 0x8b000301
.word 0xb9806320
.word 0x8b000300
.word 0xf9401722
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9400b3a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000320
.word 0xf94023a0
bl _p_584
bl _p_585
.word 0xb9806321
.word 0x8b010301
.word 0xf90033a1
.word 0xf9002ba0
.word 0x91004000
.word 0xf9002fa0
.word 0xf9401720
.word 0xf9401f20
.word 0xf94023a0
bl _p_579
.word 0xaa0003e2
.word 0xf9402fa0
.word 0xf94033a1
bl _mono_gsharedvt_value_copy
.word 0xf9402ba0
.word 0xaa0003fa
.word 0x1400000a
.word 0xb9806320
.word 0x8b000300
.word 0xf940001a
.word 0x14000006
.word 0xf9401321
.word 0xb9806320
.word 0x8b000300
.word 0xd63f0020
.word 0xaa0003fa
.word 0xb400029a
.loc 9 1228 0
.word 0xf9401fa0
.word 0xb9804321
.word 0x8b010301
.word 0xf9002fa1
.word 0xf9002ba0
.word 0xf9401720
.word 0xf9401f20
.word 0xf94023a0
bl _p_579
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402fa1
bl _mono_gsharedvt_value_copy
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 9 1225 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2814321
bl _p_68
.word 0xf9002ba0
.word 0xf94002e0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf94023a0
bl _p_580
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402fa1
bl _p_24
.word 0xaa0003e1
.word 0xd2801d80
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4e2:
.text
	.align 4
	.no_dead_strip ObjCRuntime_Runtime_GetINativeObject_T_GSHAREDVT_intptr_bool
ObjCRuntime_Runtime_GetINativeObject_T_GSHAREDVT_intptr_bool:
.loc 9 1370 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001bb9
.word 0xf9001fa8
.word 0xf9002baf
.word 0xf90023a0
.word 0xf90027a1
.word 0xf9402ba0
bl _p_586
.word 0xaa0003f9
.word 0xb9800320
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f8
.word 0xb9804320
.word 0x8b000300
.word 0xf9401721
.word 0xf9401b22
.word 0xd63f0040
.word 0xb9804b21
.word 0xaa1803e0
.word 0x8b010000
.word 0xf9401721
.word 0xf9401b22
.word 0xd63f0040
.word 0xf94023a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_578
.word 0x53001c00
.word 0x34000360
.loc 9 1371 0
.word 0xb9804b20
.word 0x8b000300
.word 0xf9401721
.word 0xf9401b22
.word 0xd63f0040
.word 0xb9804b20
.word 0x8b000301
.word 0xb9806b20
.word 0x8b000300
.word 0xf9401722
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9401fa0
.word 0xb9806b21
.word 0x8b010301
.word 0xf90037a1
.word 0xf90033a0
.word 0xf9401720
.word 0xf9401f20
.word 0xf9402ba0
bl _p_587
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _mono_gsharedvt_value_copy
.word 0x140000cd
.loc 9 1373 0
.word 0xf94023a0
bl _p_92
.word 0xaa0003f7
.loc 9 1374 0
.word 0xaa1703e0
.word 0xf90033a0
.word 0xf9402ba0
bl _p_588
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf9400441
bl _p_148
.word 0xf9400721
bl _p_574
.word 0xaa0003f6
.word 0xf9400b35
.word 0xd280005e
.word 0xeb1e02bf
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e02bf
.word 0x540000e0
.word 0x910042d5
.word 0x1400000c
.word 0xb9805320
.word 0x8b000315
.word 0xf90002b6
.word 0x14000008
.word 0xf9400f21
.word 0xb9805b20
.word 0x8b000308
.word 0xaa1603e0
.word 0xd63f0020
.word 0xb9805b20
.word 0x8b000315
.word 0xb9804320
.word 0x8b000300
.word 0xf9401722
.word 0xf9401f23
.word 0xaa1503e1
.word 0xd63f0060
.loc 9 1375 0
.word 0xb9804320
.word 0x8b000301
.word 0xb9806320
.word 0x8b000300
.word 0xf9401722
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9400b36
.word 0xd280005e
.word 0xeb1e02df
.word 0x54000300
.word 0xd280007e
.word 0xeb1e02df
.word 0x54000320
.word 0xf9402ba0
bl _p_589
bl _p_585
.word 0xb9806321
.word 0x8b010301
.word 0xf9003ba1
.word 0xf90033a0
.word 0x91004000
.word 0xf90037a0
.word 0xf9401720
.word 0xf9401f20
.word 0xf9402ba0
bl _p_587
.word 0xaa0003e2
.word 0xf94037a0
.word 0xf9403ba1
bl _mono_gsharedvt_value_copy
.word 0xf94033a0
.word 0xaa0003f6
.word 0x1400000a
.word 0xb9806320
.word 0x8b000300
.word 0xf9400016
.word 0x14000006
.word 0xf9401321
.word 0xb9806320
.word 0x8b000300
.word 0xd63f0020
.word 0xaa0003f6
.word 0xb40001f6
.loc 9 1377 0
.word 0xf9401fa0
.word 0xb9804321
.word 0x8b010301
.word 0xf90037a1
.word 0xf90033a0
.word 0xf9401720
.word 0xf9401f20
.word 0xf9402ba0
bl _p_587
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _mono_gsharedvt_value_copy
.word 0x1400006b
.loc 9 1380 0
.word 0xb4000297
.loc 9 1382 0
.word 0xf9402ba0
bl _p_590
bl _p_149
.word 0x53001c00
.word 0x350001e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #552]
.word 0xf90033a0
.word 0xf9402ba0
bl _p_590
.word 0xaa0003e1
.word 0xf94033a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9407450
.word 0xd63f0200
.word 0x53001c00
.word 0x35000ba0
.loc 9 1389 0
.word 0xf94023a0
.word 0xf90033a0
.word 0xf9402ba0
bl _p_590
.word 0xaa0003e1
.word 0xf94033a0
.word 0xd2800002
bl _p_151
.word 0xaa0003f6
.loc 9 1391 0
.word 0xaa1603e2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #552]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0x340004e0
.loc 9 1392 0
.word 0xb5000cd7
.loc 9 1400 0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xd2800000
.word 0x93407c00
.word 0xf9003fa0
.word 0xd2800000
.word 0x93407c00
.word 0xf90043a0
.word 0xf9402ba0
bl _p_591
.word 0xf90047a0
.word 0xf9402ba0
bl _p_592
.word 0xaa0003e5
.word 0xf9403ba0
.word 0xf9403fa3
.word 0xf94043a4
.word 0xf94047af
.word 0xb9807321
.word 0x8b010308
.word 0xaa1603e1
.word 0xd2800002
.word 0xd63f00a0
.word 0xf9401fa0
.word 0xb9807321
.word 0x8b010301
.word 0xf90037a1
.word 0xf90033a0
.word 0xf9401720
.word 0xf9401f20
.word 0xf9402ba0
bl _p_587
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _mono_gsharedvt_value_copy
.word 0x1400001e
.loc 9 1403 0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf9402ba0
bl _p_593
.word 0xf9003fa0
.word 0xf9402ba0
bl _p_594
.word 0xaa0003e4
.word 0xf9403ba0
.word 0xf9403faf
.word 0xb9807b21
.word 0x8b010308
.word 0x394123a1
.word 0xaa1603e2
.word 0xd2800023
.word 0xd63f0080
.word 0xf9401fa0
.word 0xb9807b21
.word 0x8b010301
.word 0xf90037a1
.word 0xf90033a0
.word 0xf9401720
.word 0xf9401f20
.word 0xf9402ba0
bl _p_587
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _mono_gsharedvt_value_copy
.word 0xa9415bb5
.word 0xa94263b7
.word 0xf9401bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.loc 9 1384 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2814fa1
bl _p_68
.word 0xf90033a0
.word 0xf94002e0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xf90037a0
.word 0xf9402ba0
bl _p_590
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
bl _p_24
.word 0xaa0003e1
.word 0xd2801d80
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 9 1396 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2815c61
bl _p_68
.word 0xf90033a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xd2800081
bl _p_30
.word 0xf9005ba0
.word 0xf90057a0
.word 0xaa1603e0
.word 0xf94002c1
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9405ba3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94057a0
.word 0xf9004fa0
.word 0xf9004ba0
.word 0x910103a0
.word 0xf90053a0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2813da1
bl _p_68
.word 0xaa0003e1
.word 0xf94053a0
bl _p_126
.word 0xaa0003e2
.word 0xf9404fa3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9404ba0
.word 0xf90047a0
.word 0xf9003fa0
.word 0xf94023a0
bl _p_119
bl _p_154
.word 0xf90043a0
.word 0xd2802840
bl _p_97
.word 0xaa0003e2
.word 0xf94043a0
.word 0xf94047a3
.word 0xf9000840
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf9403fa0
.word 0xf9003ba0
.word 0xf90037a0
.word 0xf94002e0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941bc30
.word 0xd63f0200
.word 0xaa0003e2
.word 0xf9403ba3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407870
.word 0xd63f0200
.word 0xf94033a1
.word 0xf94037a2
.word 0xd283e880
bl _p_70
bl _p_38

Lme_4e3:
.text
ut_1252:
add x0, x0, 16
b ObjCRuntime_BlockLiteral_GetDelegateForBlock_T_GSHAREDVT
.text
	.align 4
	.no_dead_strip ObjCRuntime_BlockLiteral_GetDelegateForBlock_T_GSHAREDVT
ObjCRuntime_BlockLiteral_GetDelegateForBlock_T_GSHAREDVT:
.loc 22 236 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba8
.word 0xf9001faf
.word 0xaa0003fa
.word 0xf9401fa0
bl _p_595
.word 0xaa0003f9
.word 0xb9800320
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f8
.word 0xf9400b40
.word 0xf90023a0
.word 0xf9401fa0
bl _p_596
.word 0xaa0003e1
.word 0xf94023a0
bl _p_193
.word 0xf9400721
bl _p_574
.word 0xaa0003fa
.word 0xf9400b37
.word 0xd280005e
.word 0xeb1e02ff
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e02ff
.word 0x540000e0
.word 0x91004357
.word 0x1400000c
.word 0xb9803320
.word 0x8b000317
.word 0xf90002fa
.word 0x14000008
.word 0xf9400f21
.word 0xb9803b20
.word 0x8b000308
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xb9803b20
.word 0x8b000317
.word 0xb9804320
.word 0x8b000300
.word 0xf9401322
.word 0xf9401723
.word 0xaa1703e1
.word 0xd63f0060
.word 0xf9401ba0
.word 0xb9804321
.word 0x8b010301
.word 0xf90027a1
.word 0xf90023a0
.word 0xf9401320
.word 0xf9401720
.word 0xf9401fa0
bl _p_597
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _mono_gsharedvt_value_copy
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4e4:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_From_T_GSHAREDVT_T_GSHAREDVT___long
Foundation_NSArray_From_T_GSHAREDVT_T_GSHAREDVT___long:
.loc 71 89 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90027af
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf94027a0
bl _p_598
.word 0xaa0003f8
.word 0xb9800300
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f7
.word 0xb4000059
.word 0xb500013a
.loc 71 90 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3440]
bl _p_71
.word 0xf9002ba0
bl _p_388
.word 0xf9402ba0
.word 0x14000063
.loc 71 92 0
.word 0xd29fffe0
.word 0xf2bfffe0
.word 0xf2dfffe0
.word 0xf2ffffe0
.word 0xeb00035f
.word 0x54000081
.loc 71 93 0
.word 0xb9801b20
.word 0x93407c1a
.word 0x14000005
.loc 71 94 0
.word 0xb9801b20
.word 0x93407c00
.word 0xeb00035f
.word 0x54000bac
.loc 71 97 0
.word 0xd29ffffe
.word 0xf2bffffe
.word 0xeb1e035f
.word 0x10000011
.word 0x5400120c
.word 0xeb1f035f
.word 0x10000011
.word 0x540011ab

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #3448]
.word 0xaa1a03e1
bl _p_30
.word 0xaa0003f6
.loc 71 98 0
.word 0xd2800000
.word 0x93407c15
.word 0x14000041
.loc 71 99 0
.word 0x93407ea0
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000f89
.word 0xf9400701
.word 0x1b017c00
.word 0x8b000320
.word 0x91008001
.word 0xb9803300
.word 0x8b0002e0
.word 0xf9401302
.word 0xf9401703
.word 0xd63f0060
.word 0xf9400b14
.word 0xd280005e
.word 0xeb1e029f
.word 0x54000300
.word 0xd280007e
.word 0xeb1e029f
.word 0x54000320
.word 0xf94027a0
bl _p_599
bl _p_585
.word 0xb9803301
.word 0x8b0102e1
.word 0xf90033a1
.word 0xf9002ba0
.word 0x91004000
.word 0xf9002fa0
.word 0xf9401300
.word 0xf9401700
.word 0xf94027a0
bl _p_600
.word 0xaa0003e2
.word 0xf9402fa0
.word 0xf94033a1
bl _mono_gsharedvt_value_copy
.word 0xf9402ba0
.word 0xaa0003f4
.word 0x1400000a
.word 0xb9803300
.word 0x8b0002e0
.word 0xf9400014
.word 0x14000006
.word 0xf9400f01
.word 0xb9803300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003f4
.word 0xaa1403e0
bl _p_389
.word 0xaa0003f4
.loc 71 100 0
.word 0xaa1403e0
.word 0xb40004c0
.loc 71 102 0
.word 0xaa1603e0
.word 0xaa1503e1
.word 0xaa1403e2
.word 0xf94002c3
.word 0xf9407870
.word 0xd63f0200
.loc 71 98 0
.word 0xaa1503e0
bl _p_601
.word 0xaa0003f5
.word 0xeb1a02bf
.word 0x54fff7eb
.loc 71 104 0
.word 0xaa1603e0
bl _p_390
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 71 95 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd285fcc1
bl _p_68
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2860701
bl _p_68
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_38
.loc 71 101 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2860881
bl _p_68
.word 0xf9002ba0
.word 0x93407ea0
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000349
.word 0xf9400701
.word 0x1b017c00
.word 0x8b000320
.word 0x91008000
.word 0xf9002fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #560]
.word 0xf90033a0
.word 0xf94027a0
bl _p_600
.word 0xaa0003e2
.word 0xf9402fa0
.word 0xf94033a1
.word 0xd2800003
.word 0xd2800004
bl _p_602
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_123
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2
.word 0xd2802020
.word 0xaa1103e1
bl _p_2

Lme_4e5:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_ArrayFromHandle_T_GSHAREDVT_intptr
Foundation_NSArray_ArrayFromHandle_T_GSHAREDVT_intptr:
.loc 71 244 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023af
.word 0xaa0003fa
.word 0xf94023a0
bl _p_603
.word 0xaa0003f9
.word 0xb9800320
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f8

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1672]
.word 0xf9400001
.word 0xaa1a03e0
bl _p_578
.word 0x53001c00
.word 0x34000060
.loc 71 245 0
.word 0xd2800000
.word 0x14000041
.loc 71 247 0
.word 0xaa1a03e0
bl _p_400
.word 0xaa0003f7
.loc 71 248 0
.word 0xaa1703e0
.word 0xeb1f001f
.word 0x10000011
.word 0x5400086b
.word 0xd29ffffe
.word 0xf2bffffe
.word 0xeb1e001f
.word 0x10000011
.word 0x540007cc
.word 0xeb1f001f
.word 0x10000011
.word 0x5400076b
.word 0xf9002ba0
.word 0xf94023a0
bl _p_604
.word 0xf9402ba1
bl _p_30
.word 0xaa0003f6
.loc 71 250 0
.word 0xd2800015
.word 0x14000025
.loc 71 251 0
.word 0x2a1503e0
.word 0xf90033a0
.word 0xf94023a0
bl _p_605
.word 0xf90037a0
.word 0xf94023a0
bl _p_606
.word 0xaa0003e2
.word 0xf94033a1
.word 0xf94037af
.word 0xb9802320
.word 0x8b000308
.word 0xaa1a03e0
.word 0xd63f0040
.word 0x93407ea0
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x540003a9
.word 0xf9400721
.word 0x1b017c00
.word 0x8b0002c0
.word 0x91008000
.word 0xb9802321
.word 0x8b010301
.word 0xf9002fa1
.word 0xf9002ba0
.word 0xf9400b20
.word 0xf9400f20
.word 0xf94023a0
bl _p_607
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402fa1
bl _mono_gsharedvt_value_copy
.loc 71 250 0
.word 0x110006b5
.word 0x2a1503e0
.word 0xeb17001f
.word 0x9a9f27e0
.word 0x35fffb20
.loc 71 253 0
.word 0xaa1603e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2
.word 0xd2802020
.word 0xaa1103e1
bl _p_2

Lme_4e6:
.text
	.align 4
	.no_dead_strip Foundation_NSArray_UnsafeGetItem_T_GSHAREDVT_intptr_System_nuint
Foundation_NSArray_UnsafeGetItem_T_GSHAREDVT_intptr_System_nuint:
.loc 71 338 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xf90017a8
.word 0xf9001faf
.word 0xf9001ba0
.word 0xaa0103fa
.word 0xf9401fa0
bl _p_608
.word 0xaa0003f8
.word 0xb9800300
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f7
.word 0xb9802300
.word 0x8b0002e0
.word 0xf9400701
.word 0xf9400b02
.word 0xd63f0040
.word 0xf9401ba0
.word 0xaa1a03e1
bl _p_401
.word 0xaa0003fa
.loc 71 342 0
.word 0xaa1a03e0
.word 0xf90023a0
bl _p_392
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_609
.word 0xaa0003e1
.word 0xf94023a0
bl _p_578
.word 0x53001c00
.word 0x34000360
.loc 71 343 0
.word 0xb9802300
.word 0x8b0002e0
.word 0xf9400701
.word 0xf9400b02
.word 0xd63f0040
.word 0xb9802300
.word 0x8b0002e1
.word 0xb9802b00
.word 0x8b0002e0
.word 0xf9400702
.word 0xf9400f03
.word 0xd63f0060
.word 0xf94017a0
.word 0xb9802b01
.word 0x8b0102e1
.word 0xf90027a1
.word 0xf90023a0
.word 0xf9400700
.word 0xf9400f00
.word 0xf9401fa0
bl _p_610
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _mono_gsharedvt_value_copy
.word 0x1400001a
.loc 71 345 0
.word 0xf9401fa0
bl _p_611
.word 0xf9002ba0
.word 0xf9401fa0
bl _p_612
.word 0xaa0003e2
.word 0xf9402baf
.word 0xb9803300
.word 0x8b0002e8
.word 0xaa1a03e0
.word 0xd2800001
.word 0xd63f0040
.word 0xf94017a0
.word 0xb9803301
.word 0x8b0102e1
.word 0xf90027a1
.word 0xf90023a0
.word 0xf9400700
.word 0xf9400f00
.word 0xf9401fa0
bl _p_610
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _mono_gsharedvt_value_copy
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4e7:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_TryGetValue_T_GSHAREDVT_ObjCRuntime_INativeObject_T_GSHAREDVT_
Foundation_NSDictionary_TryGetValue_T_GSHAREDVT_ObjCRuntime_INativeObject_T_GSHAREDVT_:
.loc 77 320 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013b9
.word 0xf9001faf
.word 0xf90017a0
.word 0xaa0103f9
.word 0xf9001ba2
.word 0xf9401fa0
bl _p_613
.word 0xaa0003f7
.word 0xb98002e0
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f6
.word 0xb4000779
.loc 77 323 0
.word 0xf94006e1
.word 0xf9400ae2
.word 0xf9401ba0
.word 0xd63f0040
.loc 77 325 0
.word 0xaa1903e0
.word 0xf9400321

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94017a0
bl _p_415
.word 0xaa0003f9
.loc 77 326 0
.word 0xaa1903e0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #1672]
.word 0xf9400021
bl _p_578
.word 0x53001c00
.word 0x34000060
.loc 77 327 0
.word 0xd2800000
.word 0x1400001b
.loc 77 329 0
.word 0xf9401fa0
bl _p_614
.word 0xf9002ba0
.word 0xf9401fa0
bl _p_615
.word 0xaa0003e2
.word 0xf9402baf
.word 0xb98022e0
.word 0x8b0002c8
.word 0xaa1903e0
.word 0xd2800001
.word 0xd63f0040
.word 0xb98022e0
.word 0x8b0002c0
.word 0xf90027a0
.word 0xf9401ba0
.word 0xf90023a0
.word 0xf94006e0
.word 0xf9400ee0
.word 0xf9401fa0
bl _p_616
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _mono_gsharedvt_value_copy
.loc 77 330 0
.word 0xd2800020
.word 0xa9415fb6
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.loc 77 321 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2868021
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4e8:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT__ctor_intptr
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT__ctor_intptr:
.loc 79 59 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
bl _p_617
.word 0xf90013a0
.word 0xf94013a0
.word 0xb9800000
.word 0xf90013bf
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_420
.loc 79 61 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4e9:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_ObjectForKey_TKey_GSHAREDVT
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_ObjectForKey_TKey_GSHAREDVT:
.loc 79 101 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba8
.word 0xf9001fa0
.word 0xf90023a1
.word 0xf9401fa0
.word 0xf9400000
bl _p_618
.word 0xaa0003fa
.word 0xb9800340
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f9
.word 0xf94023a1
.word 0xb9803b40
.word 0x8b000320
.word 0xf9400f42
.word 0xf9401343
.word 0xd63f0060
.word 0xf9400758
.word 0xd280005e
.word 0xeb1e031f
.word 0x54000340
.word 0xd280007e
.word 0xeb1e031f
.word 0x54000360
.word 0xf9401fa0
.word 0xf9400000
bl _p_619
bl _p_585
.word 0xb9803b41
.word 0x8b010321
.word 0xf90033a1
.word 0xf9002ba0
.word 0x91004000
.word 0xf9002fa0
.word 0xf9400f40
.word 0xf9401340
.word 0xf9401fa0
.word 0xf9400000
bl _p_620
.word 0xaa0003e2
.word 0xf9402fa0
.word 0xf94033a1
bl _mono_gsharedvt_value_copy
.word 0xf9402ba0
.word 0xaa0003f8
.word 0x1400000a
.word 0xb9803b40
.word 0x8b000320
.word 0xf9400018
.word 0x14000006
.word 0xf9400b41
.word 0xb9803b40
.word 0x8b000320
.word 0xd63f0020
.word 0xaa0003f8
.word 0xb4000b98
.loc 79 104 0
.word 0xf9401fb8
.word 0xf94023a1
.word 0xb9804340
.word 0x8b000320
.word 0xf9400f42
.word 0xf9401343
.word 0xd63f0060
.word 0xf9400757
.word 0xd280005e
.word 0xeb1e02ff
.word 0x54000340
.word 0xd280007e
.word 0xeb1e02ff
.word 0x54000360
.word 0xf9401fa0
.word 0xf9400000
bl _p_619
bl _p_585
.word 0xb9804341
.word 0x8b010321
.word 0xf90033a1
.word 0xf9002ba0
.word 0x91004000
.word 0xf9002fa0
.word 0xf9400f40
.word 0xf9401340
.word 0xf9401fa0
.word 0xf9400000
bl _p_620
.word 0xaa0003e2
.word 0xf9402fa0
.word 0xf94033a1
bl _mono_gsharedvt_value_copy
.word 0xf9402ba0
.word 0xaa0003f7
.word 0x1400000a
.word 0xb9804340
.word 0x8b000320
.word 0xf9400017
.word 0x14000006
.word 0xf9400b41
.word 0xb9804340
.word 0x8b000320
.word 0xd63f0020
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xf94002e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1712]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa1803e0
bl _p_415
.word 0xf90033a0
.word 0xf9401fa0
.word 0xf9400000
bl _p_621
.word 0xf90037a0
.word 0xf9401fa0
.word 0xf9400000
bl _p_622
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037af
.word 0xb9804b41
.word 0x8b010328
.word 0xd2800001
.word 0xd63f0040
.word 0xf9401ba0
.word 0xb9804b41
.word 0x8b010321
.word 0xf9002fa1
.word 0xf9002ba0
.word 0xf9401740
.word 0xf9401b40
.word 0xf9401fa0
.word 0xf9400000
bl _p_623
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402fa1
bl _mono_gsharedvt_value_copy
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 79 102 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2868021
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_4ea:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_get_Keys
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_get_Keys:
.loc 79 109 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xf9400000
bl _p_624
.word 0xaa0003fa
.word 0xb9800340
.word 0xf90013bf
.word 0xf90017bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_71
.word 0xf9002ba0
bl _p_72
.word 0xf9402ba0
.word 0xf90017a0
.loc 79 110 0
.word 0xf9400fa0
bl _p_423
.word 0xf9002ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_625
.word 0xf9002fa0
.word 0xf9400fa0
.word 0xf9400000
bl _p_626
.word 0xaa0003e1
.word 0xf9402ba0
.word 0xf9402faf
.word 0xd63f0020
.word 0xaa0003fa
.word 0xf9001bbf
.word 0x94000005
.word 0xf9401ba0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90027be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.loc 79 111 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4eb:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_get_Values
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_get_Values:
.loc 79 125 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xf9400000
bl _p_627
.word 0xaa0003fa
.word 0xb9800340
.word 0xf90013bf
.word 0xf90017bf

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #1584]
bl _p_71
.word 0xf9002ba0
bl _p_72
.word 0xf9402ba0
.word 0xf90017a0
.loc 79 126 0
.word 0xf9400fa0
bl _p_426
.word 0xf9002ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_628
.word 0xf9002fa0
.word 0xf9400fa0
.word 0xf9400000
bl _p_629
.word 0xaa0003e1
.word 0xf9402ba0
.word 0xf9402faf
.word 0xd63f0020
.word 0xaa0003fa
.word 0xf9001bbf
.word 0x94000005
.word 0xf9401ba0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90027be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.loc 79 127 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4ec:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_IDictionary_TKey_TValue_Add_TKey_GSHAREDVT_TValue_GSHAREDVT
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_IDictionary_TKey_TValue_Add_TKey_GSHAREDVT_TValue_GSHAREDVT:
.loc 79 261 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf9400000
bl _p_630
.word 0xf90017a0
.word 0xf94017a0
.word 0xb9800000
.word 0xf90017bf
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4ed:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_IDictionary_TKey_TValue_get_Values
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_IDictionary_TKey_TValue_get_Values:
.loc 79 291 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_631
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xb9800000
.word 0xf9000fbf
.word 0xf9400ba0
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_632
.word 0xaa0003e1
.word 0xf94013a0
.word 0xd63f0020
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4ee:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Add_System_Collections_Generic_KeyValuePair_2_TKey_GSHAREDVT_TValue_GSHAREDVT
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Add_System_Collections_Generic_KeyValuePair_2_TKey_GSHAREDVT_TValue_GSHAREDVT:
.loc 79 299 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
bl _p_633
.word 0xf90013a0
.word 0xf94013a0
.word 0xb9800000
.word 0xf90013bf
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4ef:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Clear
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Clear:
.loc 79 304 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_634
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xb9800000
.word 0xf9000fbf
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4f0:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Contains_System_Collections_Generic_KeyValuePair_2_TKey_GSHAREDVT_TValue_GSHAREDVT
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Contains_System_Collections_Generic_KeyValuePair_2_TKey_GSHAREDVT_TValue_GSHAREDVT:
.loc 79 310 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba0
.word 0xf9001fa1
.word 0xf9401ba0
.word 0xf9400000
bl _p_635
.word 0xaa0003fa
.word 0xb9800340
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f9
.word 0xb9805340
.word 0x8b000320
.word 0xf9401741
.word 0xf9401b42
.word 0xd63f0040
.word 0xf9401bb8
.word 0xf9401fa0
.word 0xf90023a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_636
.word 0xf90027a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_637
.word 0xaa0003e1
.word 0xf94023a0
.word 0xf94027af
.word 0xb9805b43
.word 0xaa1903e2
.word 0x8b030048
.word 0xd63f0020
.word 0xf9400757
.word 0xd280005e
.word 0xeb1e02ff
.word 0x54000340
.word 0xd280007e
.word 0xeb1e02ff
.word 0x54000360
.word 0xf9401ba0
.word 0xf9400000
bl _p_638
bl _p_585
.word 0xb9805b41
.word 0x8b010321
.word 0xf9002ba1
.word 0xf90023a0
.word 0x91004000
.word 0xf90027a0
.word 0xf9401f40
.word 0xf9402340
.word 0xf9401ba0
.word 0xf9400000
bl _p_639
.word 0xaa0003e2
.word 0xf94027a0
.word 0xf9402ba1
bl _mono_gsharedvt_value_copy
.word 0xf94023a0
.word 0xaa0003f7
.word 0x1400000a
.word 0xb9805b40
.word 0x8b000320
.word 0xf9400017
.word 0x14000006
.word 0xf9400b41
.word 0xb9805b40
.word 0x8b000320
.word 0xd63f0020
.word 0xaa0003f7
.word 0xb9805340
.word 0x8b000320
.word 0xf90023a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_640
.word 0xf90027a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_641
.word 0xaa0003e3
.word 0xf94023a2
.word 0xf94027af
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xd63f0060
.word 0x53001c00
.word 0x35000060
.loc 79 311 0
.word 0xd2800000
.word 0x14000065
.loc 79 313 0
.word 0xb9805340
.word 0x8b000321
.word 0xb9806340
.word 0x8b000320
.word 0xf9401742
.word 0xf9402743
.word 0xd63f0060
.word 0xf9400f58
.word 0xd280005e
.word 0xeb1e031f
.word 0x54000340
.word 0xd280007e
.word 0xeb1e031f
.word 0x54000360
.word 0xf9401ba0
.word 0xf9400000
bl _p_642
bl _p_585
.word 0xb9806341
.word 0x8b010321
.word 0xf9002ba1
.word 0xf90023a0
.word 0x91004000
.word 0xf90027a0
.word 0xf9401740
.word 0xf9402740
.word 0xf9401ba0
.word 0xf9400000
bl _p_643
.word 0xaa0003e2
.word 0xf94027a0
.word 0xf9402ba1
bl _mono_gsharedvt_value_copy
.word 0xf94023a0
.word 0xaa0003f8
.word 0x1400000a
.word 0xb9806340
.word 0x8b000320
.word 0xf9400018
.word 0x14000006
.word 0xf9401341
.word 0xb9806340
.word 0x8b000320
.word 0xd63f0020
.word 0xaa0003f8
.word 0xf9401fa0
.word 0xf90023a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_636
.word 0xf90027a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_644
.word 0xaa0003e1
.word 0xf94023a0
.word 0xf94027af
.word 0xb9806b42
.word 0x8b020328
.word 0xd63f0020
.word 0xf9400f57
.word 0xd280005e
.word 0xeb1e02ff
.word 0x54000340
.word 0xd280007e
.word 0xeb1e02ff
.word 0x54000360
.word 0xf9401ba0
.word 0xf9400000
bl _p_642
bl _p_585
.word 0xb9806b41
.word 0x8b010321
.word 0xf9002ba1
.word 0xf90023a0
.word 0x91004000
.word 0xf90027a0
.word 0xf9401740
.word 0xf9402740
.word 0xf9401ba0
.word 0xf9400000
bl _p_643
.word 0xaa0003e2
.word 0xf94027a0
.word 0xf9402ba1
bl _mono_gsharedvt_value_copy
.word 0xf94023a0
.word 0xaa0003fa
.word 0x1400000a
.word 0xb9806b40
.word 0x8b000320
.word 0xf940001a
.word 0x14000006
.word 0xf9401341
.word 0xb9806b40
.word 0x8b000320
.word 0xd63f0020
.word 0xaa0003fa
.word 0xeb1a031f
.word 0x9a9f17e0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4f1:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_CopyTo_System_Collections_Generic_KeyValuePair_2_TKey_GSHAREDVT_TValue_GSHAREDVT___int
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_CopyTo_System_Collections_Generic_KeyValuePair_2_TKey_GSHAREDVT_TValue_GSHAREDVT___int:
.loc 79 318 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001fa0
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xf9401fa0
.word 0xf9400000
bl _p_645
.word 0xaa0003f8
.word 0xb9800300
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f7
.word 0xf90023bf
.word 0xb9802b00
.word 0x8b0002e0
.word 0xf9400b01
.word 0xf9400f02
.word 0xd63f0040
.word 0xb4001219
.loc 79 320 0
.word 0xd2800000
.word 0x6b00035f
.word 0x54000deb
.loc 79 322 0
.word 0xb9801b36
.loc 79 323 0
.word 0xaa1603e0
.word 0xd2800001
.word 0x6b01001f
.word 0x5400006d
.word 0x6b16035f
.word 0x54000e4a
.loc 79 325 0
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9412c30
.word 0xd63f0200
.word 0xaa0003e0
.word 0xb000340
.word 0x6b16001f
.word 0x54000e6c
.loc 79 328 0
.word 0xaa1a03f6
.loc 79 329 0
.word 0xf9401fa0
.word 0xf9003ba0
.word 0xf9401fa0
.word 0xf9400000
bl _p_646
.word 0xf9003fa0
.word 0xf9401fa0
.word 0xf9400000
bl _p_647
.word 0xaa0003e1
.word 0xf9403ba0
.word 0xf9403faf
.word 0xd63f0020
.word 0xf90023a0
.word 0x14000028
.word 0xf94023a0
.word 0xf90043a0
.word 0xf9401fa0
.word 0xf9400000
bl _p_648
.word 0xf90047a0
.word 0xf9401fa0
.word 0xf9400000
bl _p_649
.word 0xaa0003e1
.word 0xf94043a0
.word 0xf94047af
.word 0xb9802b02
.word 0x8b0202e8
.word 0xd63f0020
.loc 79 330 0
.word 0xaa1603e0
.word 0x110006d6
.word 0x93407c00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000c29
.word 0xf9400701
.word 0x1b017c00
.word 0x8b000320
.word 0x91008000
.word 0xb9802b01
.word 0x8b0102e1
.word 0xf9003fa1
.word 0xf9003ba0
.word 0xf9400b00
.word 0xf9401300
.word 0xf9401fa0
.word 0xf9400000
bl _p_650
.word 0xaa0003e2
.word 0xf9403ba0
.word 0xf9403fa1
bl _mono_gsharedvt_value_copy
.loc 79 329 0
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3608]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff9c0
.word 0xf90027bf
.word 0x94000005
.word 0xf94027a0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf90033be
.word 0xf94023a0
.word 0xb4000160
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94033be
.word 0xd61f03c0
.loc 79 331 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.loc 79 321 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2863e41
bl _p_68
.word 0xaa0003e1
.word 0xd28012c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 79 324 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2864781
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 79 326 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2869421
bl _p_68
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.loc 79 319 0
.word 0xd2863cc1
bl _p_68
.word 0xaa0003e1
.word 0xd28012a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_4f2:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Remove_System_Collections_Generic_KeyValuePair_2_TKey_GSHAREDVT_TValue_GSHAREDVT
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Remove_System_Collections_Generic_KeyValuePair_2_TKey_GSHAREDVT_TValue_GSHAREDVT:
.loc 79 335 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400000
bl _p_651
.word 0xf90013a0
.word 0xf94013a0
.word 0xb9800000
.word 0xf90013bf
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4f3:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_get_Count
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_get_Count:
.loc 79 340 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_652
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xb9800000
.word 0xf9000fbf
.word 0xf9400ba0
bl _p_435
.word 0xaa0003e0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4f4:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_get_IsReadOnly
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_get_IsReadOnly:
.loc 79 346 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_653
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xb9800000
.word 0xf9000fbf
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4f5:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumerator
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumerator:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xf9400000
bl _p_654
.word 0xaa0003fa
.word 0xb9800340
.word 0xf90013bf
.word 0xf9400fa0
.word 0xf9400000
bl _p_655
bl _p_585
.word 0xf9001fa0
.word 0xf9400fa0
.word 0xf9400000
bl _p_656
.word 0xaa0003e2
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xd2800001
.word 0xd63f0040
.word 0xf9401ba2
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400743
.word 0xd1000463
.word 0x8b030042
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_4f6:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_IEnumerable_GetEnumerator
Foundation_NSDictionary_2_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_IEnumerable_GetEnumerator:
.loc 79 363 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_657
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xb9800000
.word 0xf9000fbf
.word 0xf9400ba0
bl _p_658
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4f7:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT__ctor_int
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT__ctor_int:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf9400fa0
.word 0xf9400000
bl _p_659
.word 0xaa0003f9
.word 0xb9800320
.word 0xf90017bf
.word 0xf9400fa0
.word 0xf9400721
.word 0xd1000421
.word 0x8b010000
.word 0xb98023a1
.word 0xb9000001
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4f8:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT_System_IDisposable_Dispose
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT_System_IDisposable_Dispose:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_660
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xb9800000
.word 0xf9000fbf
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4f9:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT_MoveNext
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT_MoveNext:
.loc 79 0 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba0
.word 0xf9401ba0
.word 0xf9400000
bl _p_661
.word 0xaa0003fa
.word 0xb9800340
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f9
.word 0xb9806b40
.word 0x8b000320
.word 0xf9401f41
.word 0xf9402342
.word 0xd63f0040
.word 0xf9401ba0
.word 0xf9400741
.word 0xd1000421
.word 0x8b010000
.word 0xb9800018
.word 0xf9401ba0
.word 0xf9400b41
.word 0xd1000421
.word 0x8b010000
.word 0xf9400017
.word 0x340000d8
.word 0xd2800020
.word 0x6b00031f
.word 0x54001040
.word 0xd2800000
.word 0x140000a5
.word 0xf9401ba0
.word 0xf9400741
.word 0xd1000421
.word 0x8b010000
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.loc 79 354 0
.word 0xf9401ba0
.word 0xf90023a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_662
.word 0xaa0003e1
.word 0xaa1703e0
.word 0xd63f0020
.word 0xf94023a1
.word 0xf9400f42
.word 0xd1000442
.word 0x8b020021
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9401341
.word 0xd1000421
.word 0x8b010000
.word 0xb900001f
.word 0x1400006e
.word 0xf9401ba0
.word 0xf9400f41
.word 0xd1000421
.word 0x8b010000
.word 0xf9400000
.word 0xf9401ba1
.word 0xf9401342
.word 0xd1000442
.word 0x8b020021
.word 0xb9800021
.word 0x93407c21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000ee9
.word 0xf9401742
.word 0x1b027c21
.word 0x8b010000
.word 0x91008001
.word 0xb9806b40
.word 0x8b000320
.word 0xf9401f42
.word 0xf9402743
.word 0xd63f0060
.loc 79 355 0
.word 0xf9401ba0
.word 0xf9002ba0
.word 0xf9401ba0
.word 0xf9400000
bl _p_663
.word 0xaa0003e2
.word 0xb9807b40
.word 0x8b000328
.word 0xaa1703e0
.word 0xb9806b41
.word 0x8b010321
.word 0xd63f0040
.word 0xb9807340
.word 0x8b000320
.word 0xf9402b41
.word 0xf9402f42
.word 0xd63f0040
.word 0xb9807340
.word 0x8b000320
.word 0xf9002fa0
.word 0xf9401ba0
.word 0xf9400000
bl _p_664
.word 0xf90033a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_665
.word 0xaa0003e3
.word 0xf9402fa0
.word 0xf94033af
.word 0xb9806b41
.word 0x8b010321
.word 0xb9807b42
.word 0x8b020322
.word 0xd63f0060
.word 0xb9807340
.word 0x8b000321
.word 0xb9808340
.word 0x8b000320
.word 0xf9402b42
.word 0xf9403343
.word 0xd63f0060
.word 0xf9402ba0
.word 0xf9401b41
.word 0xd1000421
.word 0x8b010000
.word 0xb9808341
.word 0x8b010321
.word 0xf90027a1
.word 0xf90023a0
.word 0xf9402b40
.word 0xf9403340
.word 0xf9401ba0
.word 0xf9400000
bl _p_666
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
bl _mono_gsharedvt_value_copy
.word 0xf9401ba0
.word 0xf9400741
.word 0xd1000421
.word 0x8b010000
.word 0xd280003e
.word 0xb900001e
.word 0xd2800020
.word 0x14000026
.word 0xf9401ba0
.word 0xf9400741
.word 0xd1000421
.word 0x8b010000
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.word 0xf9401ba0
.word 0xf9401ba1
.word 0xf9401342
.word 0xd1000442
.word 0x8b020021
.word 0xb9800021
.word 0x11000421
.word 0xf9401342
.word 0xd1000442
.word 0x8b020000
.word 0xb9000001
.loc 79 354 0
.word 0xf9401ba0
.word 0xf9401341
.word 0xd1000421
.word 0x8b010000
.word 0xb9800000
.word 0xf9401ba1
.word 0xf9400f42
.word 0xd1000442
.word 0x8b020021
.word 0xf9400021
.word 0xb9801821
.word 0x6b01001f
.word 0x54fff0eb
.word 0xf9401ba0
.word 0xf9400f41
.word 0xd1000421
.word 0x8b010000
.word 0xf900001f
.loc 79 357 0
.word 0xd2800000
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_4fa:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_IEnumerator_System_Collections_Generic_KeyValuePair_TKey_TValue_get_Current
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_Generic_IEnumerator_System_Collections_Generic_KeyValuePair_TKey_TValue_get_Current:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a8
.word 0xf90017a0
.word 0xf94017a0
.word 0xf9400000
bl _p_667
.word 0xaa0003fa
.word 0xb9800340
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f9
.word 0xf94017a0
.word 0xf9400741
.word 0xd1000421
.word 0x8b010001
.word 0xb9802340
.word 0x8b000320
.word 0xf9400b42
.word 0xf9400f43
.word 0xd63f0060
.word 0xf94013a0
.word 0xb9802342
.word 0xaa1903e1
.word 0x8b020021
.word 0xf9001fa1
.word 0xf9001ba0
.word 0xf9400b40
.word 0xf9400f40
.word 0xf94017a0
.word 0xf9400000
bl _p_668
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
bl _mono_gsharedvt_value_copy
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_4fb:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_IEnumerator_Reset
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_IEnumerator_Reset:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_669
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xb9800000
.word 0xf9000fbf
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4fc:
.text
	.align 4
	.no_dead_strip Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_IEnumerator_get_Current
Foundation_NSDictionary_2__System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumeratord__47_TKey_GSHAREDVT_TValue_GSHAREDVT_System_Collections_IEnumerator_get_Current:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xf94017a0
.word 0xf9400000
bl _p_670
.word 0xaa0003fa
.word 0xb9800340
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f9
.word 0xf94017a0
.word 0xf9400741
.word 0xd1000421
.word 0x8b010001
.word 0xb9803340
.word 0x8b000320
.word 0xf9401342
.word 0xf9401743
.word 0xd63f0060
.word 0xf9400b58
.word 0xd280005e
.word 0xeb1e031f
.word 0x54000340
.word 0xd280007e
.word 0xeb1e031f
.word 0x54000360
.word 0xf94017a0
.word 0xf9400000
bl _p_671
bl _p_585
.word 0xb9803341
.word 0x8b010321
.word 0xf90023a1
.word 0xf9001ba0
.word 0x91004000
.word 0xf9001fa0
.word 0xf9401340
.word 0xf9401740
.word 0xf94017a0
.word 0xf9400000
bl _p_672
.word 0xaa0003e2
.word 0xf9401fa0
.word 0xf94023a1
bl _mono_gsharedvt_value_copy
.word 0xf9401ba0
.word 0xaa0003fa
.word 0x1400000a
.word 0xb9803340
.word 0x8b000320
.word 0xf940001a
.word 0x14000006
.word 0xf9400f41
.word 0xb9803340
.word 0x8b000320
.word 0xd63f0020
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4fd:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF:
.file 115 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/mcs/class/corlib/System/Array.cs"
.loc 115 70 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801800
.word 0x35000140
.loc 115 71 0
.word 0xf9401fa0
bl _p_673
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf9401fa0
bl _p_674
.word 0xf9400000
.word 0x14000025
.loc 115 73 0
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0x9100a3a0
.word 0xf90023a0
.word 0xf9401fa0
bl _p_675
.word 0xaa0003ef
.word 0xf94023a0
.word 0xf9400ba1
bl _p_676
.word 0xf94017a0
.word 0xf9000fa0
.word 0xf9401ba0
.word 0xf90013a0
.word 0xf9401fa0
bl _p_675
.word 0xd2800401
bl _p_7
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_504:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_Count
System_Array_InternalArray__ICollection_get_Count:
.loc 115 60 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_505:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_IsReadOnly
System_Array_InternalArray__ICollection_get_IsReadOnly:
.loc 115 65 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_506:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Clear
System_Array_InternalArray__ICollection_Clear:
.loc 115 78 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2888320
bl _p_677
.word 0xaa0003e1
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_507:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Add_T_REF_T_REF
System_Array_InternalArray__ICollection_Add_T_REF_T_REF:
.loc 115 83 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2888920
bl _p_677
.word 0xaa0003e1
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_508:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
System_Array_InternalArray__ICollection_Remove_T_REF_T_REF:
.loc 115 88 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2888920
bl _p_677
.word 0xaa0003e1
.word 0xd2801f40
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_509:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
System_Array_InternalArray__ICollection_Contains_T_REF_T_REF:
.loc 115 93 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001faf
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9400320
.word 0x3940b000
.word 0xd2800021
.word 0x6b01001f
.word 0x5400044c
.loc 115 96 0
.word 0xb9801b38
.loc 115 97 0
.word 0xd2800017
.word 0x14000016
.loc 115 99 0
.word 0xf9401fa0
bl _p_678
.word 0x93407ee0
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400016
.loc 115 100 0
.word 0xb500009a
.loc 115 101 0
.word 0xb5000196
.loc 115 102 0
.word 0xd2800020
.word 0x1400000e
.loc 115 108 0
.word 0xaa1a03e0
.word 0xaa1603e1
.word 0xf9400342
.word 0xf9402c50
.word 0xd63f0200
.word 0x53001c00
.word 0x34000060
.loc 115 109 0
.word 0xd2800020
.word 0x14000005
.loc 115 97 0
.word 0x110006f7
.word 0x6b1802ff
.word 0x54fffd4b
.loc 115 113 0
.word 0xd2800000
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 115 94 0
.word 0xd28890a0
bl _p_677
.word 0xaa0003e1
.word 0xd28020c0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38

Lme_50a:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int:
.loc 115 118 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xf9001faf
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9400fa0
.word 0xf9001ba0
.word 0xf9400fa0
.word 0xf9400816
.word 0xeb1f02df
.word 0x54000060
.word 0xb98006d6
.word 0x14000002
.word 0xd2800016
.word 0xf9400fa0
.word 0xb9801804
.word 0xf9401ba0
.word 0xaa1603e1
.word 0xf94013a2
.word 0xb9802ba3
bl _p_679
.loc 115 119 0
.word 0xf9400bb6
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_50b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object
wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #4008]
.word 0xb9400000
.word 0x35000720
.word 0x14000001
.word 0xf9403717
.word 0xaa1703e0
.word 0xb5000260
.word 0xf9401317
.word 0xaa1703e0
.word 0xb4000120
.word 0xf9401f00
.word 0xf9400b03
.word 0xaa1703e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0x14000022
.word 0xf9401f00
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0x1400001b
.word 0xb9801af8
.word 0xd2800016
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000409
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400015
.word 0xaa1503e3
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90023a3
.word 0xf9400c70
.word 0xd63f0200
.word 0x93407c00
.word 0xf94023a1
.word 0xaa0003f5
.word 0x110006d6
.word 0xaa1603e0
.word 0x6b18001f
.word 0x54fffd4b
.word 0xaa1503e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xaa1703e0
bl _p_38
bl _p_490
.word 0xaa0003f7
.word 0xb5ffff80
.word 0x17ffffc6
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_50c:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor:
.file 116 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.2.1.13/src/Xamarin.iOS/external/corefx/src/Common/src/CoreLib/System/Collections/Generic/Dictionary.cs"
.loc 116 67 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x3940001e
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_680
.word 0xaa0003e3
.word 0xf94013a0
.word 0xd2800001
.word 0xd2800002
.word 0xd63f0060
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_50d:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_int
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_int:
.loc 116 69 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x3940001e
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_681
.word 0xaa0003e3
.word 0xf94013a0
.word 0xb9801ba1
.word 0xd2800002
.word 0xd63f0060
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_50e:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_System_Collections_Generic_IEqualityComparer_1_TKey_INTPTR
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_System_Collections_Generic_IEqualityComparer_1_TKey_INTPTR:
.loc 116 71 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x3940001e
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_682
.word 0xaa0003e3
.word 0xf94013a0
.word 0xd2800001
.word 0xf9400fa2
.word 0xd63f0060
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_50f:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_int_System_Collections_Generic_IEqualityComparer_1_TKey_INTPTR
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_int_System_Collections_Generic_IEqualityComparer_1_TKey_INTPTR:
.loc 116 75 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0
.word 0xaa0103f9
.word 0xf90017a2
.word 0xd2800000
.word 0x6b00033f
.word 0x540005ab
.loc 116 76 0
.word 0xd2800000
.word 0x6b00033f
.word 0x5400018d
.word 0xf94013a0
.word 0x3940001e
.word 0xf9001ba0
.word 0xf94013a0
.word 0xf9400000
bl _p_683
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xaa1903e1
.word 0xd63f0040
.word 0x93407c00
.loc 116 77 0
.word 0xf94013b9
.word 0xf94017b8
.word 0xf94017a0
.word 0xb5000160
.word 0xf94013a0
.word 0xf9400000
bl _p_684
.word 0xf9001ba0
.word 0xf94013a0
.word 0xf9400000
bl _p_685
.word 0xf9401baf
.word 0xd63f0000
.word 0xaa0003f8
.word 0xf9001338
.word 0x91008320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 116 84 0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 116 75 0
.word 0xd2800180
bl _p_686
.word 0x17ffffd2

Lme_510:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_System_Collections_Generic_IDictionary_2_TKey_INTPTR_TValue_REF
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_System_Collections_Generic_IDictionary_2_TKey_INTPTR_TValue_REF:
.loc 116 86 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x3940001e
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_687
.word 0xaa0003e3
.word 0xf94013a0
.word 0xf9400fa1
.word 0xd2800002
.word 0xd63f0060
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_511:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_System_Collections_Generic_IDictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_IEqualityComparer_1_TKey_INTPTR
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_System_Collections_Generic_IDictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_IEqualityComparer_1_TKey_INTPTR:
.loc 116 89 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba0
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xf90027bf
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf9401bb8
.word 0xb5000079
.word 0xd2800017
.word 0x1400000d
.word 0xf9401ba0
.word 0xf9400000
bl _p_688
.word 0xaa0003ef
.word 0xaa1903e0
.word 0xf9400321
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003f7
.word 0x3940031e
.word 0xf9401ba0
.word 0xf9400000
bl _p_689
.word 0xaa0003e3
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xaa1a03e2
.word 0xd63f0060
.loc 116 91 0
.word 0xb4001639
.loc 116 100 0
.word 0xf9400320
.word 0xf9400c00
.word 0xf90043a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_690
.word 0xaa0003e1
.word 0xf94043a0
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000860
.loc 116 102 0
.word 0xf9401ba0
.word 0xf9400000
bl _p_691
.word 0xaa0003fa
.word 0xb4000119
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb1a001f
.word 0x10000011
.word 0x54001401
.loc 116 103 0
.word 0xb9803b3a
.loc 116 104 0
.word 0xf9400f39
.loc 116 105 0
.word 0xd2800018
.word 0x14000030
.loc 116 107 0
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54001289
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b000320
.word 0x91008000
.word 0xb9800000
.word 0xd2800001
.word 0x6b01001f
.word 0x5400044b
.loc 116 109 0
.word 0xf9401ba0
.word 0x93407f01
.word 0xb9801b22
.word 0xeb01005f
.word 0x10000011
.word 0x540010c9
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010321
.word 0x91008021
.word 0xf9400421
.word 0xf90047a1
.word 0x93407f01
.word 0xb9801b22
.word 0xeb01005f
.word 0x10000011
.word 0x54000f69
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010321
.word 0x91008021
.word 0xf9400821
.word 0xf9004ba1
.word 0x3940001e
.word 0xf90043a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_692
.word 0xaa0003e3
.word 0xf94043a0
.word 0xf94047a1
.word 0xf9404ba2
.word 0xd63f0060
.loc 116 105 0
.word 0x11000718
.word 0x6b1a031f
.word 0x54fffa0b
.word 0x1400005f
.loc 116 115 0
.word 0xf9401ba0
.word 0xf9400000
bl _p_693
.word 0xaa0003ef
.word 0xaa1903e0
.word 0xf9400321
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90027a0
.word 0x14000032
.word 0xf94027a0
.word 0xf9005ba0
.word 0xf9401ba0
.word 0xf9400000
bl _p_694
.word 0xaa0003ef
.word 0xf9405ba1
.word 0x9100e3a0
.word 0xf9002ba0
.word 0xaa0103e0
.word 0xf9400021
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402bbe
.word 0xf90003c0
.word 0xf90007c1
.loc 116 117 0
.word 0xf9401ba0
.word 0xf9004fa0
.word 0x9100e3a0
.word 0xf90057a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_695
.word 0xaa0003e1
.word 0xf94057a0
.word 0xf9400000
.word 0xf90047a0
.word 0x9100e3a0
.word 0xf90053a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_695
.word 0xaa0003e2
.word 0xf9404fa0
.word 0xf94053a1
.word 0xf9400421
.word 0xf9004ba1
.word 0x3940001e
.word 0xf90043a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_692
.word 0xaa0003e3
.word 0xf94043a0
.word 0xf94047a1
.word 0xf9404ba2
.word 0xd63f0060
.loc 116 115 0
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #3608]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fff880
.word 0xf9002fbf
.word 0x94000005
.word 0xf9402fa0
.word 0xb4000040
bl _p_73
.word 0x14000010
.word 0xf9003bbe
.word 0xf94027a0
.word 0xb4000160
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x15, [x16, #1592]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9403bbe
.word 0xd61f03c0
.loc 116 119 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.loc 116 93 0
.word 0xd2800020
bl _p_696
.word 0x17ffff4e
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2
.word 0xd2801d80
.word 0xaa1103e1
bl _p_2

Lme_512:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF__ctor_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext:
.loc 116 142 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
bl _p_697
.word 0xaa0003e3
.word 0xf9400ba1
.word 0xaa0303e0
.word 0xf9400fa2
.word 0x3940007e
bl _p_698
.loc 116 143 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_513:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_get_Count
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_get_Count:
.loc 116 155 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803800
.word 0xf9400ba1
.word 0xb9804021
.word 0x4b010000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_514:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_get_Keys
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_get_Keys:
.loc 116 162 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401400
.word 0xb5000420
.word 0xf9400ba0
.word 0xf90017a0
.word 0xf9400ba0
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_699
.word 0xd2800301
bl _p_7
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_700
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xf90013a0
.word 0xd63f0040
.word 0xf94013a0
.word 0xf94017a1
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 116 163 0
.word 0xf9400ba0
.word 0xf9401400
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_515:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_get_Values
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_get_Values:
.loc 116 189 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401800
.word 0xb5000420
.word 0xf9400ba0
.word 0xf90017a0
.word 0xf9400ba0
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_701
.word 0xd2800301
bl _p_7
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_702
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xf90013a0
.word 0xd63f0040
.word 0xf94013a0
.word 0xf94017a1
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 116 190 0
.word 0xf9400ba0
.word 0xf9401800
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_516:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_IDictionary_TKey_TValue_get_Values
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_IDictionary_TKey_TValue_get_Values:
.loc 116 198 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9401800
.word 0xb5000420
.word 0xf9400ba0
.word 0xf90017a0
.word 0xf9400ba0
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_703
.word 0xd2800301
bl _p_7
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_704
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xf90013a0
.word 0xd63f0040
.word 0xf94013a0
.word 0xf94017a1
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 116 199 0
.word 0xf9400ba0
.word 0xf9401800
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_517:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_get_Item_TKey_INTPTR
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_get_Item_TKey_INTPTR:
.loc 116 216 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf9400fa0
.word 0x3940001e
.word 0xf9001ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_705
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf94013a1
.word 0xd63f0040
.word 0x93407c00
.word 0xaa0003f9
.loc 116 217 0
.word 0xaa1903e0
.word 0xd2800001
.word 0x6b01001f
.word 0x540001cb
.word 0xf9400fa0
.word 0xf9400c00
.word 0x93407f21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000289
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9400800
.word 0x1400000a
.loc 116 218 0
.word 0xf9400fa0
.word 0xf9400000
bl _p_706
.word 0xd2800301
bl _p_7
.word 0xf94013a1
.word 0xf9000801
bl _p_707
.loc 116 219 0
.word 0xd2800000
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_518:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_set_Item_TKey_INTPTR_TValue_REF
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_set_Item_TKey_INTPTR_TValue_REF:
.loc 116 223 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0x3940001e
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_708
.word 0xaa0003e4
.word 0xf9401ba0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xd2800023
.word 0xd63f0080
.loc 116 227 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_519:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Add_TKey_INTPTR_TValue_REF
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Add_TKey_INTPTR_TValue_REF:
.loc 116 232 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0x3940001e
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_709
.word 0xaa0003e4
.word 0xf9401ba0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xd2800043
.word 0xd63f0080
.loc 116 236 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_51a:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Add_System_Collections_Generic_KeyValuePair_2_TKey_INTPTR_TValue_REF
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Add_System_Collections_Generic_KeyValuePair_2_TKey_INTPTR_TValue_REF:
.loc 116 240 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0xf90027a0
.word 0x910063a0
.word 0xf9002fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_710
.word 0xaa0003e1
.word 0xf9402fa0
.word 0xf9400000
.word 0xf9001fa0
.word 0x910063a0
.word 0xf9002ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_710
.word 0xaa0003e2
.word 0xf94027a0
.word 0xf9402ba1
.word 0xf9400421
.word 0xf90023a1
.word 0x3940001e
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_711
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xf94023a2
.word 0xd63f0060
.loc 116 241 0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_51b:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Contains_System_Collections_Generic_KeyValuePair_2_TKey_INTPTR_TValue_REF
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Contains_System_Collections_Generic_KeyValuePair_2_TKey_INTPTR_TValue_REF:
.loc 116 245 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9400fa0
.word 0xf90023a0
.word 0x910083a0
.word 0xf90027a0
.word 0xf9400fa0
.word 0xf9400000
bl _p_712
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9400021
.word 0xf9001fa1
.word 0x3940001e
.word 0xf9001ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_713
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xd63f0040
.word 0x93407c00
.word 0xaa0003fa
.loc 116 246 0
.word 0xaa1a03e0
.word 0xd2800001
.word 0x6b01001f
.word 0x540004cb
.word 0xf9400fa0
.word 0xf9400000
bl _p_714
.word 0xaa0003ef
bl _p_715
.word 0xf90023a0
.word 0xf9400fa0
.word 0xf9400c00
.word 0x93407f41
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540003c9
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9400800
.word 0xf9001fa0
.word 0x910083a0
.word 0xf9001ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_712
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xf94023a3
.word 0xf9400402
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9404c70
.word 0xd63f0200
.word 0x53001c00
.word 0x34000060
.loc 116 248 0
.word 0xd2800020
.word 0x14000002
.loc 116 250 0
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_51c:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Remove_System_Collections_Generic_KeyValuePair_2_TKey_INTPTR_TValue_REF
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_Remove_System_Collections_Generic_KeyValuePair_2_TKey_INTPTR_TValue_REF:
.loc 116 255 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9400fa0
.word 0xf90023a0
.word 0x910083a0
.word 0xf90027a0
.word 0xf9400fa0
.word 0xf9400000
bl _p_716
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9400021
.word 0xf9001fa1
.word 0x3940001e
.word 0xf9001ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_717
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xd63f0040
.word 0x93407c00
.word 0xaa0003fa
.loc 116 256 0
.word 0xaa1a03e0
.word 0xd2800001
.word 0x6b01001f
.word 0x5400076b
.word 0xf9400fa0
.word 0xf9400000
bl _p_718
.word 0xaa0003ef
bl _p_715
.word 0xf90023a0
.word 0xf9400fa0
.word 0xf9400c00
.word 0x93407f41
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000669
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9400800
.word 0xf9001fa0
.word 0x910083a0
.word 0xf9001ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_716
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xf94023a3
.word 0xf9400402
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9404c70
.word 0xd63f0200
.word 0x53001c00
.word 0x34000300
.loc 116 258 0
.word 0xf9400fa0
.word 0xf90023a0
.word 0x910083a0
.word 0xf90027a0
.word 0xf9400fa0
.word 0xf9400000
bl _p_716
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9400021
.word 0xf9001fa1
.word 0x3940001e
.word 0xf9001ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_719
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xf9401fa1
.word 0xd63f0040
.loc 116 259 0
.word 0xd2800020
.word 0x14000002
.loc 116 261 0
.word 0xd2800000
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_51d:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Clear
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Clear:
.loc 116 266 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xf94017a0
.word 0xb980381a
.loc 116 267 0
.word 0xaa1a03e0
.word 0xd2800001
.word 0x6b01001f
.word 0x540004cd
.loc 116 269 0
.word 0xf94017a0
.word 0xf9400819
.loc 116 270 0
.word 0xd2800018
.word 0x1400000d
.loc 116 272 0
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000449
.word 0xd37ef400
.word 0x8b000320
.word 0x91008000
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.loc 116 270 0
.word 0x11000718
.word 0xb9801b20
.word 0x6b00031f
.word 0x54fffe4b
.loc 116 275 0
.word 0xf94017a0
.word 0xb900381f
.loc 116 276 0
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c1e
.loc 116 277 0
.word 0xf94017a0
.word 0xb900401f
.loc 116 278 0
.word 0xf94017a0
.word 0xf94017a1
.word 0xb9804421
.word 0x11000421
.word 0xb9004401
.loc 116 279 0
.word 0xf94017a0
.word 0xf9400c00
.word 0xd2800001
.word 0xaa1a03e2
bl _p_544
.loc 116 281 0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_51e:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_ContainsKey_TKey_INTPTR
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_ContainsKey_TKey_INTPTR:
.loc 116 285 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0x3940001e
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_720
.word 0xaa0003e2
.word 0xf94013a0
.word 0xf9400fa1
.word 0xd63f0040
.word 0x93407c00
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9fa7e0
.word 0xd2800001
.word 0x6b01001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_51f:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_ContainsValue_TValue_REF
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_ContainsValue_TValue_REF:
.loc 116 290 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xaa0103fa
.word 0xb50004fa
.loc 116 292 0
.word 0xd280001a
.word 0x14000020
.loc 116 294 0
.word 0xf94017a0
.word 0xf9400c00
.word 0x93407f41
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000aa9
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xb9800000
.word 0xd2800001
.word 0x6b01001f
.word 0x5400020b
.word 0xf94017a0
.word 0xf9400c00
.word 0x93407f41
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540008c9
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9400800
.word 0xb5000060
.word 0xd2800020
.word 0x14000039
.loc 116 292 0
.word 0x1100075a
.word 0xf94017a0
.word 0xb9803800
.word 0x6b00035f
.word 0x54fffbcb
.word 0x14000032
.loc 116 299 0
.word 0xf94017a0
.word 0xf9400000
bl _p_721
.word 0xaa0003ef
bl _p_715
.word 0xaa0003f9
.loc 116 300 0
.word 0xd2800018
.word 0x14000026
.loc 116 302 0
.word 0xf94017a0
.word 0xf9400c00
.word 0x93407f01
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000529
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xb9800000
.word 0xd2800001
.word 0x6b01001f
.word 0x540002cb
.word 0xf94017a0
.word 0xf9400c00
.word 0x93407f01
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000349
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9400801
.word 0xaa1903e0
.word 0xaa1a03e2
.word 0xf9400323
.word 0xf9404c70
.word 0xd63f0200
.word 0x53001c00
.word 0x34000060
.word 0xd2800020
.word 0x14000007
.loc 116 300 0
.word 0x11000718
.word 0xf94017a0
.word 0xb9803800
.word 0x6b00031f
.word 0x54fffb0b
.loc 116 305 0
.word 0xd2800000
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_520:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_CopyTo_System_Collections_Generic_KeyValuePair_2_TKey_INTPTR_TValue_REF___int
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_CopyTo_System_Collections_Generic_KeyValuePair_2_TKey_INTPTR_TValue_REF___int:
.loc 116 310 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001fa0
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xb4000f19
.loc 116 315 0
.word 0xd2800000
.word 0x6b00035f
.word 0x54000e0b
.word 0xb9801b20
.word 0x6b00035f
.word 0x54000dac
.loc 116 320 0
.word 0xb9801b20
.word 0x4b1a0000
.word 0xf9401fa2
.word 0xaa0203e1
.word 0xb9803821
.word 0xb9804042
.word 0x4b020021
.word 0x6b01001f
.word 0x54000ccb
.loc 116 325 0
.word 0xf9401fa0
.word 0xb9803818
.loc 116 326 0
.word 0xf9401fa0
.word 0xf9400c17
.loc 116 327 0
.word 0xd2800016
.word 0x14000056
.loc 116 329 0
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000c29
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800000
.word 0xd2800001
.word 0x6b01001f
.word 0x5400090b
.loc 116 331 0
.word 0xaa1a03e0
.word 0xf90033a0
.word 0x1100075a
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000a29
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400400
.word 0xf9003ba0
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540008c9
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400800
.word 0xf9003fa0
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0x910143a0
.word 0xf90037a0
.word 0xf9401fa0
.word 0xf9400000
bl _p_722
.word 0xf90043a0
.word 0xf9401fa0
.word 0xf9400000
bl _p_723
.word 0xaa0003e3
.word 0xf94037a0
.word 0xf9403ba1
.word 0xf9403fa2
.word 0xf94043af
.word 0xd63f0060
.word 0xf94033a0
.word 0xf9402ba1
.word 0xf90023a1
.word 0xf9402fa1
.word 0xf90027a1
.word 0x93407c00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000489
.word 0xd37cec00
.word 0x8b000320
.word 0x91008000
.word 0xf94023a1
.word 0xf9000001
.word 0x91002001
.word 0xf94027a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 116 327 0
.word 0x110006d6
.word 0x6b1802df
.word 0x54fff54b
.loc 116 334 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.loc 116 317 0
bl _p_724
.word 0x17ffff93
.loc 116 322 0
.word 0xd28000a0
bl _p_725
.word 0x17ffff99
.loc 116 312 0
.word 0xd2800060
bl _p_696
.word 0x17ffff87
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_521:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_GetEnumerator
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_GetEnumerator:
.loc 116 338 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf9000fa0
.word 0xf9400fa0
.word 0xf9003fa0
.word 0xd2800000
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0xf90037a0
.word 0x910123a0
.word 0xf9003ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_726
.word 0xf90043a0
.word 0xf9400fa0
.word 0xf9400000
bl _p_727
.word 0xaa0003e3
.word 0xf9403ba0
.word 0xf9403fa1
.word 0xf94043af
.word 0xd2800042
.word 0xd63f0060
.word 0xf94027a0
.word 0xf90013a0
.word 0xf9402ba0
.word 0xf90017a0
.word 0xf9402fa0
.word 0xf9001ba0
.word 0xf94033a0
.word 0xf9001fa0
.word 0xf94037a0
.word 0xf90023a0
.word 0xf9400ba0
.word 0xf94013a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94017a1
.word 0xf9000001
.word 0x91002000
.word 0xf9401ba1
.word 0xf9000001
.word 0x91002000
.word 0xf9401fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94023a1
.word 0xf9000001
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_522:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumerator
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_IEnumerable_System_Collections_Generic_KeyValuePair_TKey_TValue_GetEnumerator:
.loc 116 343 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9003fa0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0x910103a0
.word 0xf9003ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_728
.word 0xf90043a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_729
.word 0xaa0003e3
.word 0xf9403ba0
.word 0xf9403fa1
.word 0xf94043af
.word 0xd2800042
.word 0xd63f0060
.word 0xf94023a0
.word 0xf9000fa0
.word 0xf94027a0
.word 0xf90013a0
.word 0xf9402ba0
.word 0xf90017a0
.word 0xf9402fa0
.word 0xf9001ba0
.word 0xf94033a0
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_728
.word 0xd2800701
bl _p_7
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x91002021
.word 0xf94017a2
.word 0xf9000022
.word 0x91002021
.word 0xf9401ba2
.word 0xf9000022
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_523:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_GetObjectData_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_GetObjectData_System_Runtime_Serialization_SerializationInfo_System_Runtime_Serialization_StreamingContext:
.loc 116 348 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xa901ebb9
.word 0xf90017a0
.word 0xaa0103fa
.word 0xf9001ba2
.word 0xf9001fa3
.word 0xb4000afa
.loc 116 353 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #568]
.word 0xf94017a0
.word 0xb9804402
.word 0xaa1a03e0
.word 0x3940035e
bl _p_730
.loc 116 354 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #576]
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9401000
.word 0xf9002fa0
.word 0xf94017a0
.word 0xf9400000
bl _p_731
.word 0xaa0003e3
.word 0xf9402ba1
.word 0xf9402fa2
.word 0xaa1a03e0
.word 0x3940035e
bl _p_732
.loc 116 355 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #584]
.word 0xf94017a0
.word 0xf9400800
.word 0xaa1a03f9
.word 0xf90023a1
.word 0xb40000a0
.word 0xf94017a0
.word 0xf9400800
.word 0xb9801817
.word 0x14000002
.word 0xd2800017
.word 0xaa1903e0
.word 0xf94023a1
.word 0xaa1703e2
.word 0x3940033e
bl _p_730
.loc 116 357 0
.word 0xf94017a0
.word 0xf9400800
.word 0xb40004a0
.loc 116 359 0
.word 0xf94017a1
.word 0xaa0103e0
.word 0xb9803800
.word 0xb9804021
.word 0x4b010000
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9400000
bl _p_733
.word 0xf94033a1
bl _p_30
.word 0xaa0003f9
.loc 116 360 0
.word 0xf94017a0
.word 0x3940001e
.word 0xf9002fa0
.word 0xf94017a0
.word 0xf9400000
bl _p_734
.word 0xaa0003e3
.word 0xf9402fa0
.word 0xaa1903e1
.word 0xd2800002
.word 0xd63f0060
.loc 116 361 0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #592]
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9400000
bl _p_735
.word 0xaa0003e3
.word 0xf9402ba1
.word 0xaa1a03e0
.word 0xaa1903e2
.word 0x3940035e
bl _p_732
.loc 116 363 0
.word 0xf9400bb7
.word 0xa941ebb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 116 350 0
.word 0xd2800080
bl _p_696
.word 0x17ffffa8

Lme_524:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_FindEntry_TKey_INTPTR
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_FindEntry_TKey_INTPTR:
.loc 116 367 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xaa0103fa
.word 0x14000003
.loc 116 369 0
.word 0xd28000a0
bl _p_696
.loc 116 372 0
.word 0xf94017a0
.word 0xf9400800
.word 0xb4001040
.loc 116 374 0
.word 0xf94017a0
.word 0xf9401000
.word 0xf9001ba0
.word 0xf94017a0
.word 0xf9400000
bl _p_736
.word 0xaa0003ef
.word 0xf9401ba2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xd29ffffe
.word 0xf2affffe
.word 0xa1e0019
.loc 116 375 0
.word 0xf94017a0
.word 0xf9400800
.word 0xf94017a1
.word 0xf9400821
.word 0xb9801821
.word 0x6b1f003f
.word 0x10000011
.word 0x54000e80
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e003f
.word 0x9a9f17e2
.word 0x929ffffe
.word 0xf2b0001e
.word 0x6b1e033f
.word 0x9a9f17e3
.word 0xa030042
.word 0xd280003e
.word 0x6b1e005f
.word 0x10000011
.word 0x54000c80
.word 0xf100003f
.word 0x10000011
.word 0x54000c80
.word 0x929ffff0
.word 0xf2b00010
.word 0xeb10033f
.word 0x9a9f17f1
.word 0x92800010
.word 0xf2bffff0
.word 0xeb10003f
.word 0x9a9f17f0
.word 0x8a110210
.word 0xf100061f
.word 0x10000011
.word 0x54000aa0
.word 0x1ac10f3e
.word 0x1b01e7c1
.word 0x93407c21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000969
.word 0xd37ef421
.word 0x8b010000
.word 0x91008000
.word 0xb9800018
.word 0x1400003c
.loc 116 377 0
.word 0xf94017a0
.word 0xf9400c00
.word 0x93407f01
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540007e9
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xb9800000
.word 0x6b19001f
.word 0x54000441
.word 0xf94017a0
.word 0xf9401000
.word 0xf9001fa0
.word 0xf94017a0
.word 0xf9400c00
.word 0x93407f01
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540005c9
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9400400
.word 0xf9001ba0
.word 0xf94017a0
.word 0xf9400000
bl _p_737
.word 0xaa0003ef
.word 0xf9401ba1
.word 0xf9401fa3
.word 0xaa0303e0
.word 0xaa1a03e2
.word 0xf9400063
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x34000060
.word 0xaa1803e0
.word 0x14000012
.loc 116 375 0
.word 0xf94017a0
.word 0xf9400c00
.word 0x93407f01
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000209
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xb9800418
.word 0xd2800000
.word 0x6b00031f
.word 0x54fff86a
.loc 116 380 0
.word 0x92800000
.word 0xf2bfffe0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2
.word 0xd2802020
.word 0xaa1103e1
bl _p_2
.word 0xd28016a0
.word 0xaa1103e1
bl _p_2

Lme_525:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Initialize_int
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Initialize_int:
.loc 116 385 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0
.word 0xaa0103fa
.word 0xaa1a03e0
bl _p_738
.word 0x93407c00
.word 0xaa0003fa
.loc 116 386 0
.word 0xaa1a03e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #600]
bl _p_30
.word 0xaa0003f9
.loc 116 387 0
.word 0xd2800018
.word 0x1400000d
.loc 116 389 0
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x540006c9
.word 0xd37ef400
.word 0x8b000320
.word 0x91008000
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.loc 116 387 0
.word 0x11000718
.word 0xb9801b20
.word 0x6b00031f
.word 0x54fffe4b
.loc 116 392 0
.word 0xf94017a0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9003c1e
.loc 116 393 0
.word 0xf94017a0
.word 0xf9000819
.word 0x91004000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 116 394 0
.word 0xf94017a0
.word 0xf9001ba0
.word 0xf94017a0
.word 0xf9400000
bl _p_739
.word 0xaa1a03e1
bl _p_30
.word 0xf9401ba1
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 116 396 0
.word 0xaa1a03e0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_526:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_TryInsert_TKey_INTPTR_TValue_REF_System_Collections_Generic_InsertionBehavior
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_TryInsert_TKey_INTPTR_TValue_REF_System_Collections_Generic_InsertionBehavior:
.loc 116 401 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90027a0
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa
.word 0x14000003
.loc 116 403 0
.word 0xd28000a0
bl _p_696
.loc 116 406 0
.word 0xf94027a0
.word 0xf9400800
.word 0xb5000180
.word 0xf94027a0
.word 0x3940001e
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9400000
bl _p_740
.word 0xaa0003e2
.word 0xf9403ba0
.word 0xd2800001
.word 0xd63f0040
.word 0x93407c00
.loc 116 407 0
.word 0xf94027a0
.word 0xf9401000
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9400000
bl _p_741
.word 0xaa0003ef
.word 0xf9403ba2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf9400042
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xd29ffffe
.word 0xf2affffe
.word 0xa1e0017
.loc 116 408 0
.word 0xaa1703e0
.word 0xf94027a1
.word 0xf9400821
.word 0xb9801821
.word 0x6b1f003f
.word 0x10000011
.word 0x54002a20
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e003f
.word 0x9a9f17e2
.word 0x929ffffe
.word 0xf2b0001e
.word 0x6b1e001f
.word 0x9a9f17e3
.word 0xa030042
.word 0xd280003e
.word 0x6b1e005f
.word 0x10000011
.word 0x54002820
.word 0xf100003f
.word 0x10000011
.word 0x54002820
.word 0x929ffff0
.word 0xf2b00010
.word 0xeb10001f
.word 0x9a9f17f1
.word 0x92800010
.word 0xf2bffff0
.word 0xeb10003f
.word 0x9a9f17f0
.word 0x8a110210
.word 0xf100061f
.word 0x10000011
.word 0x54002640
.word 0x1ac10c1e
.word 0x1b0183d6
.loc 116 409 0
.word 0xd2800015
.loc 116 411 0
.word 0xf94027a0
.word 0xf9400800
.word 0x93407ec1
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540024a9
.word 0xd37ef421
.word 0x8b010000
.word 0x91008000
.word 0xb9800014
.word 0x14000061
.loc 116 413 0
.word 0xf94027a0
.word 0xf9400c00
.word 0x93407e81
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54002329
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xb9800000
.word 0x6b17001f
.word 0x540008c1
.word 0xf94027a0
.word 0xf9401000
.word 0xf9003fa0
.word 0xf94027a0
.word 0xf9400c00
.word 0x93407e81
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54002109
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9400400
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9400000
bl _p_742
.word 0xaa0003ef
.word 0xf9403ba1
.word 0xf9403fa3
.word 0xaa0303e0
.word 0xaa1803e2
.word 0xf9400063
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x340004e0
.loc 116 415 0
.word 0xd2800020
.word 0x6b00035f
.word 0x540003e1
.loc 116 417 0
.word 0xf94027a0
.word 0xf9400c00
.word 0x93407e81
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54001d29
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9000819
.word 0x91004000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 116 418 0
.word 0xf94027a0
.word 0xf94027a1
.word 0xb9804421
.word 0x11000421
.word 0xb9004401
.loc 116 419 0
.word 0xd2800020
.word 0x140000c3
.loc 116 422 0
.word 0xd2800040
.word 0x6b00035f
.word 0x540018e0
.loc 116 427 0
.word 0xd2800000
.word 0x140000be
.loc 116 429 0
.word 0x110006b5
.loc 116 411 0
.word 0xf94027a0
.word 0xf9400c00
.word 0x93407e81
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540018a9
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xb9800414
.word 0xd2800000
.word 0x6b00029f
.word 0x54fff3ca
.loc 116 433 0
.word 0xf94027a0
.word 0xb9804000
.word 0xd2800001
.word 0x6b01001f
.word 0x540002ed
.loc 116 435 0
.word 0xf94027a0
.word 0xb9803c1a
.loc 116 436 0
.word 0xf94027a0
.word 0xf94027a1
.word 0xf9400c21
.word 0x93407f42
.word 0xb9801823
.word 0xeb02007f
.word 0x10000011
.word 0x540015c9
.word 0xd280031e
.word 0x9b1e7c42
.word 0x8b020021
.word 0x91008021
.word 0xb9800421
.word 0xb9003c01
.loc 116 437 0
.word 0xf94027a0
.word 0xf94027a1
.word 0xb9804021
.word 0x51000421
.word 0xb9004001
.loc 116 438 0
.word 0x1400003c
.loc 116 441 0
.word 0xf94027a0
.word 0xb9803800
.word 0xf94027a1
.word 0xf9400c21
.word 0xb9801821
.word 0x6b01001f
.word 0x540005c1
.loc 116 443 0
.word 0xf94027a0
.word 0x3940001e
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9400000
bl _p_743
.word 0xaa0003e1
.word 0xf9403ba0
.word 0xd63f0020
.loc 116 444 0
.word 0xf94027a0
.word 0xf9400800
.word 0xb9801800
.word 0x6b1f001f
.word 0x10000011
.word 0x54001240
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x9a9f17e1
.word 0x929ffffe
.word 0xf2b0001e
.word 0x6b1e02ff
.word 0x9a9f17e2
.word 0xa020021
.word 0xd280003e
.word 0x6b1e003f
.word 0x10000011
.word 0x54001040
.word 0xf100001f
.word 0x10000011
.word 0x54001040
.word 0x929ffff0
.word 0xf2b00010
.word 0xeb1002ff
.word 0x9a9f17f1
.word 0x92800010
.word 0xf2bffff0
.word 0xeb10001f
.word 0x9a9f17f0
.word 0x8a110210
.word 0xf100061f
.word 0x10000011
.word 0x54000e60
.word 0x1ac00efe
.word 0x1b00dfd6
.loc 116 446 0
.word 0xf94027a0
.word 0xb980381a
.loc 116 447 0
.word 0xf94027a0
.word 0xf94027a1
.word 0xb9803821
.word 0x11000421
.word 0xb9003801
.loc 116 450 0
.word 0xf94027a0
.word 0xf9400c00
.word 0x93407f41
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000c09
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xb9000017
.loc 116 451 0
.word 0xf94027a0
.word 0xf9400c00
.word 0x93407f41
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000a89
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf94027a1
.word 0xf9400821
.word 0x93407ec2
.word 0xb9801823
.word 0xeb02007f
.word 0x10000011
.word 0x54000929
.word 0xd37ef442
.word 0x8b020021
.word 0x91008021
.word 0xb9800021
.word 0xb9000401
.loc 116 452 0
.word 0xf94027a0
.word 0xf9400c00
.word 0x93407f41
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540007a9
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9000418
.loc 116 453 0
.word 0xf94027a0
.word 0xf9400c00
.word 0x93407f41
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000629
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9000819
.word 0x91004000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 116 454 0
.word 0xf94027a0
.word 0xf9400800
.word 0x93407ec1
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000349
.word 0xd37ef421
.word 0x8b010000
.word 0x91008000
.word 0xb900001a
.loc 116 455 0
.word 0xf94027a0
.word 0xf94027a1
.word 0xb9804421
.word 0x11000421
.word 0xb9004401
.loc 116 466 0
.word 0xd2800020
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.loc 116 424 0
.word 0xf94027a0
.word 0xf9400000
bl _p_744
.word 0xd2800301
bl _p_7
.word 0xf9000818
bl _p_745
.word 0x17ffff33
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2
.word 0xd2802020
.word 0xaa1103e1
bl _p_2
.word 0xd28016a0
.word 0xaa1103e1
bl _p_2

Lme_527:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_OnDeserialization_object
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_OnDeserialization_object:
.loc 116 472 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0
.word 0xf90017a1
.word 0xf9001bbf
bl _p_697
.word 0xaa0003e3
.word 0xf94013a1
.word 0x9100c3a2
.word 0xaa0303e0
.word 0x3940007e
bl _p_746
.loc 116 474 0
.word 0xf9401ba0
.word 0xb4001600
.loc 116 481 0
.word 0xf9401ba2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #568]
.word 0xaa0203e0
.word 0x3940005e
bl _p_747
.word 0x93407c00
.word 0xb9003ba0
.loc 116 482 0
.word 0xf9401ba2

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #584]
.word 0xaa0203e0
.word 0x3940005e
bl _p_747
.word 0x93407c00
.word 0xaa0003f9
.loc 116 483 0
.word 0xf94013a0
.word 0xf90023a0
.word 0xf9401ba0
.word 0xf9002fa0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #576]
.word 0xf9002ba0
.word 0xf94013a0
.word 0xf9400000
bl _p_748
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xf9402fa3
.word 0xaa0303e0
.word 0x3940007e
bl _p_749
.word 0xf90027a0
.word 0xf94013a0
.word 0xf9400000
bl _p_750
.word 0xaa0003e2
.word 0xf94027a0
.word 0xf9400441
bl _p_136
.word 0xf94023a1
.word 0xf9001020
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 116 485 0
.word 0x34000d99
.loc 116 487 0
.word 0xf94013a0
.word 0x3940001e
.word 0xf9002fa0
.word 0xf94013a0
.word 0xf9400000
bl _p_751
.word 0xaa0003e2
.word 0xf9402fa0
.word 0xaa1903e1
.word 0xd63f0040
.word 0x93407c00
.loc 116 489 0
.word 0xf9401ba0
.word 0xf9002ba0

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #592]
.word 0xf90027a0
.word 0xf94013a0
.word 0xf9400000
bl _p_752
.word 0xaa0003e2
.word 0xf94027a1
.word 0xf9402ba3
.word 0xaa0303e0
.word 0x3940007e
bl _p_749
.word 0xf90023a0
.word 0xf94013a0
.word 0xf9400000
bl _p_753
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf9400441
bl _p_136
.word 0xaa0003f9
.loc 116 492 0
.word 0xaa1903e0
.word 0xb4000ac0
.loc 116 497 0
.word 0xd2800018
.word 0x14000041
.loc 116 499 0
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54000a49
.word 0xd37cec00
.word 0x8b000320
.word 0x91008000
.word 0xf90023a0
.word 0xf94013a0
.word 0xf9400000
bl _p_754
.word 0xaa0003e1
.word 0xf94023a0
.word 0xf9400000
.word 0x14000003
.loc 116 501 0
.word 0xd2800220
bl _p_755
.loc 116 503 0
.word 0xf94013a0
.word 0xf9002fa0
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x540007c9
.word 0xd37cec00
.word 0x8b000320
.word 0x91008000
.word 0xf90037a0
.word 0xf94013a0
.word 0xf9400000
bl _p_754
.word 0xaa0003e1
.word 0xf94037a0
.word 0xf9400000
.word 0xf90027a0
.word 0x93407f00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x540005c9
.word 0xd37cec00
.word 0x8b000320
.word 0x91008000
.word 0xf90033a0
.word 0xf94013a0
.word 0xf9400000
bl _p_754
.word 0xaa0003e2
.word 0xf9402fa0
.word 0xf94033a1
.word 0xf9400421
.word 0xf9002ba1
.word 0x3940001e
.word 0xf90023a0
.word 0xf94013a0
.word 0xf9400000
bl _p_756
.word 0xaa0003e3
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba2
.word 0xd63f0060
.loc 116 497 0
.word 0x11000718
.word 0xb9801b20
.word 0x6b00031f
.word 0x54fff7cb
.word 0x14000003
.loc 116 508 0
.word 0xf94013a0
.word 0xf900081f
.loc 116 511 0
.word 0xf94013a0
.word 0xb9803ba1
.word 0xb9004401
.loc 116 512 0
bl _p_697
.word 0xaa0003e2
.word 0xf94013a1
.word 0xaa0203e0
.word 0x3940005e
bl _p_757
.loc 116 513 0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 116 494 0
.word 0xd2800200
bl _p_755
.word 0x17ffffa9
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_528:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Resize
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Resize:
.loc 116 517 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xb9803800
bl _p_758
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xf90017a1
.word 0x3940001e
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_759
.word 0xaa0003e3
.word 0xf94013a0
.word 0xf94017a1
.word 0xd2800002
.word 0xd63f0060
.loc 116 518 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_529:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Resize_int_bool
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Resize_int_bool:
.loc 116 526 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023a0
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #600]
.word 0xaa1903e1
bl _p_30
.word 0xaa0003f8
.loc 116 527 0
.word 0xd2800017
.word 0x1400000d
.loc 116 529 0
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54001a49
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.loc 116 527 0
.word 0x110006f7
.word 0xb9801b00
.word 0x6b0002ff
.word 0x54fffe4b
.loc 116 531 0
.word 0xf94023a0
.word 0xf9400000
bl _p_760
.word 0xaa1903e1
bl _p_30
.word 0xaa0003f7
.loc 116 533 0
.word 0xf94023a0
.word 0xb9803816
.loc 116 534 0
.word 0xf94023a0
.word 0xf9400c00
.word 0xd2800001
.word 0xaa1703e2
.word 0xd2800003
.word 0xaa1603e4
bl _p_679
.loc 116 536 0
.word 0x340007fa
.loc 116 538 0
.word 0xd280001a
.word 0x1400003b
.loc 116 540 0
.word 0x93407f40
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54001629
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800000
.word 0x92800001
.word 0xf2bfffe1
.word 0x6b01001f
.word 0x54000580
.loc 116 542 0
.word 0x93407f40
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54001469
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xf9002ba0
.word 0xf94023a0
.word 0xf9401000
.word 0xf90033a0
.word 0x93407f40
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x540012c9
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400400
.word 0xf9002fa0
.word 0xf94023a0
.word 0xf9400000
bl _p_761
.word 0xaa0003ef
.word 0xf9402fa1
.word 0xf94033a2
.word 0xaa0203e0
.word 0xf9400042
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9402ba0
.word 0xd29ffffe
.word 0xf2affffe
.word 0xa1e0021
.word 0xb9000001
.loc 116 538 0
.word 0x1100075a
.word 0x6b16035f
.word 0x54fff8ab
.loc 116 547 0
.word 0xd280001a
.word 0x14000056
.loc 116 549 0
.word 0x93407f40
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000e69
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800000
.word 0xd2800001
.word 0x6b01001f
.word 0x5400090b
.loc 116 551 0
.word 0x93407f40
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000cc9
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800000
.word 0x6b1f033f
.word 0x10000011
.word 0x54000c80
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e033f
.word 0x9a9f17e1
.word 0x929ffffe
.word 0xf2b0001e
.word 0x6b1e001f
.word 0x9a9f17e2
.word 0xa020021
.word 0xd280003e
.word 0x6b1e003f
.word 0x10000011
.word 0x54000a80
.word 0xf100033f
.word 0x10000011
.word 0x54000a80
.word 0x929ffff0
.word 0xf2b00010
.word 0xeb10001f
.word 0x9a9f17f1
.word 0x92800010
.word 0xf2bffff0
.word 0xeb10033f
.word 0x9a9f17f0
.word 0x8a110210
.word 0xf100061f
.word 0x10000011
.word 0x540008a0
.word 0x1ad90c1e
.word 0x1b1983d5
.loc 116 552 0
.word 0x93407f40
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000769
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0x93407ea1
.word 0xb9801b02
.word 0xeb01005f
.word 0x10000011
.word 0x54000649
.word 0xd37ef421
.word 0x8b010301
.word 0x91008021
.word 0xb9800021
.word 0xb9000401
.loc 116 553 0
.word 0x93407ea0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37ef400
.word 0x8b000300
.word 0x91008000
.word 0xb900001a
.loc 116 547 0
.word 0x1100075a
.word 0x6b16035f
.word 0x54fff54b
.loc 116 557 0
.word 0xf94023a0
.word 0xf9000818
.word 0x91004000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 116 558 0
.word 0xf94023a0
.word 0xf9000c17
.word 0x91006000
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 116 559 0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2
.word 0xd2802020
.word 0xaa1103e1
bl _p_2
.word 0xd28016a0
.word 0xaa1103e1
bl _p_2

Lme_52a:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Remove_TKey_INTPTR
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_Remove_TKey_INTPTR:
.loc 116 566 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023a0
.word 0xaa0103fa
.word 0x14000003
.loc 116 568 0
.word 0xd28000a0
bl _p_696
.loc 116 571 0
.word 0xf94023a0
.word 0xf9400800
.word 0xb4001540
.loc 116 573 0
.word 0xf94023a0
.word 0xf9401000
.word 0xf9002ba0
.word 0xf94023a0
.word 0xf9400000
bl _p_762
.word 0xaa0003ef
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xd29ffffe
.word 0xf2affffe
.word 0xa1e0019
.loc 116 574 0
.word 0xaa1903e0
.word 0xf94023a1
.word 0xf9400821
.word 0xb9801821
.word 0x6b1f003f
.word 0x10000011
.word 0x540013a0
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e003f
.word 0x9a9f17e2
.word 0x929ffffe
.word 0xf2b0001e
.word 0x6b1e001f
.word 0x9a9f17e3
.word 0xa030042
.word 0xd280003e
.word 0x6b1e005f
.word 0x10000011
.word 0x540011a0
.word 0xf100003f
.word 0x10000011
.word 0x540011a0
.word 0x929ffff0
.word 0xf2b00010
.word 0xeb10001f
.word 0x9a9f17f1
.word 0x92800010
.word 0xf2bffff0
.word 0xeb10003f
.word 0x9a9f17f0
.word 0x8a110210
.word 0xf100061f
.word 0x10000011
.word 0x54000fc0
.word 0x1ac10c1e
.word 0x1b0183d8
.loc 116 575 0
.word 0x92800017
.word 0xf2bffff7
.loc 116 576 0
.word 0xf94023a0
.word 0xf9400800
.word 0x93407f01
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000e09
.word 0xd37ef421
.word 0x8b010000
.word 0x91008000
.word 0xb9800016
.word 0x14000061
.loc 116 579 0
.word 0xf94023a0
.word 0xf9400c00
.word 0x93407ec1
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000c89
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008015
.loc 116 581 0
.word 0xaa1503e0
.word 0xb9800000
.word 0x6b19001f
.word 0x54000a01
.word 0xf94023a0
.word 0xf9401000
.word 0xf9002fa0
.word 0xf94006a0
.word 0xf9002ba0
.word 0xf94023a0
.word 0xf9400000
bl _p_763
.word 0xaa0003ef
.word 0xf9402ba1
.word 0xf9402fa3
.word 0xaa0303e0
.word 0xaa1a03e2
.word 0xf9400063
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0x34000780
.loc 116 583 0
.word 0xd2800000
.word 0x6b0002ff
.word 0x540001ca
.loc 116 585 0
.word 0xf94023a0
.word 0xf9400800
.word 0xb98006a1
.word 0x93407f02
.word 0xb9801803
.word 0xeb02007f
.word 0x10000011
.word 0x540007a9
.word 0xd37ef442
.word 0x8b020000
.word 0x91008000
.word 0xb9000001
.loc 116 586 0
.word 0x1400000e
.loc 116 589 0
.word 0xf94023a0
.word 0xf9400c00
.word 0x93407ee1
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000629
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xb98006a1
.word 0xb9000401
.loc 116 591 0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb90002be
.loc 116 592 0
.word 0xf94023a0
.word 0xb9803c00
.word 0xb90006a0
.loc 116 594 0
.word 0xf94023a0
.word 0xf9400000
bl _p_764
.word 0xd2800000
.word 0x6b1f001f
.loc 116 598 0
.word 0xf94023a0
.word 0xf9400000
bl _p_765
.loc 116 600 0
.word 0x910042a0
.word 0xf900001f
.loc 116 602 0
.word 0xf94023a0
.word 0xb9003c16
.loc 116 603 0
.word 0xf94023a0
.word 0xf94023a1
.word 0xb9804021
.word 0x11000421
.word 0xb9004001
.loc 116 604 0
.word 0xf94023a0
.word 0xf94023a1
.word 0xb9804421
.word 0x11000421
.word 0xb9004401
.loc 116 605 0
.word 0xd2800020
.word 0x14000007
.loc 116 608 0
.word 0xaa1603f7
.loc 116 609 0
.word 0xb98006b6
.loc 116 577 0
.word 0xd2800000
.word 0x6b0002df
.word 0x54fff3ca
.loc 116 612 0
.word 0xd2800000
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2
.word 0xd2802020
.word 0xaa1103e1
bl _p_2
.word 0xd28016a0
.word 0xaa1103e1
bl _p_2

Lme_52b:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_TryGetValue_TKey_INTPTR_TValue_REF_
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_TryGetValue_TKey_INTPTR_TValue_REF_:
.loc 116 675 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xaa0103f9
.word 0xf90013a2
.word 0xf9400fa0
.word 0x3940001e
.word 0xf9001ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_766
.word 0xaa0003e2
.word 0xf9401ba0
.word 0xaa1903e1
.word 0xd63f0040
.word 0x93407c00
.word 0xaa0003f9
.loc 116 676 0
.word 0xaa1903e0
.word 0xd2800001
.word 0x6b01001f
.word 0x5400036b
.loc 116 678 0
.word 0xf9400fa0
.word 0xf9400c00
.word 0x93407f21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000369
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010000
.word 0x91008000
.word 0xf9400800
.word 0xf94013a1
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 116 679 0
.word 0xd2800020
.word 0x14000004
.loc 116 681 0
.word 0xf94013a0
.word 0xf900001f
.loc 116 682 0
.word 0xd2800000
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_52c:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_get_IsReadOnly
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_get_IsReadOnly:
.loc 116 689 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_52d:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_CopyTo_System_Collections_Generic_KeyValuePair_2_TKey_INTPTR_TValue_REF___int
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_Generic_ICollection_System_Collections_Generic_KeyValuePair_TKey_TValue_CopyTo_System_Collections_Generic_KeyValuePair_2_TKey_INTPTR_TValue_REF___int:
.loc 116 694 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400ba0
.word 0x3940001e
.word 0xf9001ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_767
.word 0xaa0003e3
.word 0xf9401ba0
.word 0xf9400fa1
.word 0xb98023a2
.word 0xd63f0060
.loc 116 695 0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_52e:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_ICollection_CopyTo_System_Array_int
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_ICollection_CopyTo_System_Array_int:
.loc 116 699 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001fa0
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xb4002e19
.loc 116 704 0
.word 0xf9400320
.word 0x3940b000
.word 0xd2800021
.word 0x6b01001f
.word 0x54002c01
.loc 116 709 0
.word 0xf9400b38
.word 0xeb1f031f
.word 0x54000060
.word 0xb9800718
.word 0x14000002
.word 0xd2800018
.word 0x35002b98
.loc 116 714 0
.word 0xd2800000
.word 0x6b00035f
.word 0x54002b8b
.word 0xb9801b20
.word 0x6b00035f
.word 0x54002b2c
.loc 116 719 0
.word 0xb9801b20
.word 0x4b1a0000
.word 0xf9401fa2
.word 0xaa0203e1
.word 0xb9803821
.word 0xb9804042
.word 0x4b020021
.word 0x6b01001f
.word 0x54002a4b
.loc 116 724 0
.word 0xf9401fa0
.word 0xf9400000
bl _p_768
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1903e0
bl _p_148
.word 0xaa0003f8
.loc 116 725 0
.word 0xaa1803e0
.word 0xb40001a0
.loc 116 727 0
.word 0xf9401fa0
.word 0x3940001e
.word 0xf9005ba0
.word 0xf9401fa0
.word 0xf9400000
bl _p_769
.word 0xaa0003e3
.word 0xf9405ba0
.word 0xaa1803e1
.word 0xaa1a03e2
.word 0xd63f0060
.loc 116 728 0
.word 0x1400012e
.loc 116 729 0
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000240
.word 0xf9400337
.word 0xf9400b20
.word 0xb50001c0
.word 0x3940b2e0
.word 0xd280003e
.word 0xeb1e001f
.word 0x54000141
.word 0xf94002e0
.word 0xf9400400
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #608]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xb40011d8
.loc 116 731 0
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x54000240
.word 0xf9400337
.word 0xf9400b20
.word 0xb50001c0
.word 0x3940b2e0
.word 0xd280003e
.word 0xeb1e001f
.word 0x54000141
.word 0xf94002e0
.word 0xf9400400
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #608]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803f9
.loc 116 732 0
.word 0xf9401fa0
.word 0xf9400c18
.loc 116 733 0
.word 0xd2800017
.word 0x14000070
.loc 116 735 0
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540022e9
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b000300
.word 0x91008000
.word 0xb9800000
.word 0xd2800001
.word 0x6b01001f
.word 0x54000c4b
.loc 116 737 0
.word 0xaa1a03e0
.word 0xf9005ba0
.word 0x1100075a
.word 0x93407ee0
.word 0xb9801b01
.word 0xeb00003f
.word 0x10000011
.word 0x540020e9
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b000300
.word 0x91008000
.word 0xf9400400
.word 0xf9005fa0
.word 0xf9401fa0
.word 0xf9400000
bl _p_770
.word 0xd2800301
bl _p_7
.word 0xaa0003e3
.word 0xf9405ba0
.word 0xf9405fa1
.word 0xf9000861
.word 0x93407ee1
.word 0xb9801b02
.word 0xeb01005f
.word 0x10000011
.word 0x54001e69
.word 0xd280031e
.word 0x9b1e7c21
.word 0x8b010301
.word 0x91008021
.word 0xf9400821
.word 0xd2800002
.word 0xf9003ba2
.word 0xf9003fa2
.word 0x9101c3a2
.word 0xf9003ba3
.word 0xd349fc44
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0084

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x5, [x16, #16]
.word 0x8b050084
.word 0xd280003e
.word 0x3900009e
.word 0xf9003fa1
.word 0x91002042
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9403ba1
.word 0xf9002ba1
.word 0xf9403fa1
.word 0xf9002fa1
.word 0x93407c00
.word 0xb9801b21
.word 0xeb00003f
.word 0x10000011
.word 0x54001949
.word 0xd37cec00
.word 0x8b000320
.word 0x91008000
.word 0xf9402ba1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9402fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 116 733 0
.word 0x110006f7
.word 0xf9401fa0
.word 0xb9803800
.word 0x6b0002ff
.word 0x54fff1cb
.word 0x1400008c
.loc 116 743 0
.word 0xaa1903f8
.word 0xeb1f033f
.word 0x540002c0
.word 0xf9400337
.word 0xf9400b20
.word 0xb5000240
.word 0x3940b2e0
.word 0xd280003e
.word 0xeb1e001f
.word 0x540001c1
.word 0xf94002e0
.word 0xf9400419
.word 0xf9401720

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x1, [x16, #616]
.word 0xeb01001f
.word 0x540000e1

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+4096
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x0, [x16, #624]
.word 0xeb00033f
.word 0x54000040
.word 0xd2800018
.word 0xaa1803f9
.loc 116 744 0
.word 0xb40010d8
.loc 116 751 0
.word 0xf9401fa0
.word 0xb9803818
.loc 116 752 0
.word 0xf9401fa0
.word 0xf9400c17
.loc 116 753 0
.word 0xd2800016
.word 0x1400005a
.loc 116 755 0
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54001069
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xb9800000
.word 0xd2800001
.word 0x6b01001f
.word 0x5400098b
.loc 116 757 0
.word 0xaa1a03e0
.word 0xf9005ba0
.word 0x1100075a
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000e69
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400400
.word 0xf90063a0
.word 0x93407ec0
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000d09
.word 0xd280031e
.word 0x9b1e7c00
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400800
.word 0xf90067a0
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0
.word 0x910183a0
.word 0xf9005fa0
.word 0xf9401fa0
.word 0xf9400000
bl _p_771
.word 0xf9006ba0
.word 0xf9401fa0
.word 0xf9400000
bl _p_772
.word 0xaa0003e3
.word 0xf9405fa0
.word 0xf94063a1
.word 0xf94067a2
.word 0xf9406baf
.word 0xd63f0060
.word 0xf94033a0
.word 0xf90023a0
.word 0xf94037a0
.word 0xf90027a0
.word 0xf9401fa0
.word 0xf9400000
bl _p_771
.word 0xd2800401
bl _p_7
.word 0xaa0003e2
.word 0xf9405ba1
.word 0x91004043
.word 0xaa0303e0
.word 0xf94023a4
.word 0xf9000064
.word 0x91002003
.word 0xf94027a0
.word 0xf9000060
.word 0xd349fc63
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0xaa1903e0
.word 0xf9400323
.word 0xf9407870
.word 0xd63f0200
.loc 116 753 0
.word 0x110006d6
.word 0x6b1802df
.word 0x54fff4cb
.loc 116 760 0
.word 0x14000010
.word 0xf90043a0
.loc 116 763 0
.word 0xd285a440
bl _p_677
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.loc 116 764 0
bl _p_37
.word 0xf90053a0
.word 0xf94053a0
.word 0xb4000060
.word 0xf94053a0
bl _p_38
.word 0x14000001
.loc 116 766 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.loc 116 706 0
.word 0xd28000e0
bl _p_725
.word 0x17fffe9f
.loc 116 711 0
.word 0xd28000c0
bl _p_725
.word 0x17fffea3
.loc 116 716 0
bl _p_724
.word 0x17fffea7
.loc 116 721 0
.word 0xd28000a0
bl _p_725
.word 0x17fffead
.loc 116 701 0
.word 0xd2800060
bl _p_696
.word 0x17fffe8f
.loc 116 746 0
.word 0xd285a440
bl _p_677
.word 0xaa0003e1
.word 0xd2801280
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_38
.word 0x17ffff74
.word 0xd2801ce0
.word 0xaa1103e1
bl _p_2

Lme_52f:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_IEnumerable_GetEnumerator
System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_IEnumerable_GetEnumerator:
.loc 116 770 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9003fa0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf90033a0
.word 0x910103a0
.word 0xf9003ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_773
.word 0xf90043a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_774
.word 0xaa0003e3
.word 0xf9403ba0
.word 0xf9403fa1
.word 0xf94043af
.word 0xd2800042
.word 0xd63f0060
.word 0xf94023a0
.word 0xf9000fa0
.word 0xf94027a0
.word 0xf90013a0
.word 0xf9402ba0
.word 0xf90017a0
.word 0xf9402fa0
.word 0xf9001ba0
.word 0xf94033a0
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_773
.word 0xd2800701
bl _p_7
.word 0x91004003
.word 0xaa0303e1
.word 0xf9400fa2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x91002021
.word 0xf94017a2
.word 0xf9000022
.word 0x91002021
.word 0xf9401ba2
.word 0xf9000022
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_Xamarin_iOS_got@PAGE+0
add x16, x16, mono_aot_Xamarin_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_530:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_Dictionary_2_TKey_INTPTR_TValue_REF_System_Collections_IDictionary_get_Keys
.loc 116 818 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd

