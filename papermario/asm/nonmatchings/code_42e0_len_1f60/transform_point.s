.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel transform_point
/* 004A20 80029620 44853000 */  mtc1  $a1, $f6
/* 004A24 80029624 C4800000 */  lwc1  $f0, ($a0)
/* 004A28 80029628 46060002 */  mul.s $f0, $f0, $f6
/* 004A2C 8002962C 00000000 */  nop   
/* 004A30 80029630 44864000 */  mtc1  $a2, $f8
/* 004A34 80029634 C4820010 */  lwc1  $f2, 0x10($a0)
/* 004A38 80029638 46081082 */  mul.s $f2, $f2, $f8
/* 004A3C 8002963C 00000000 */  nop   
/* 004A40 80029640 44875000 */  mtc1  $a3, $f10
/* 004A44 80029644 C4840020 */  lwc1  $f4, 0x20($a0)
/* 004A48 80029648 460A2102 */  mul.s $f4, $f4, $f10
/* 004A4C 8002964C 00000000 */  nop   
/* 004A50 80029650 46020000 */  add.s $f0, $f0, $f2
/* 004A54 80029654 8FA20014 */  lw    $v0, 0x14($sp)
/* 004A58 80029658 8FA30018 */  lw    $v1, 0x18($sp)
/* 004A5C 8002965C 46040000 */  add.s $f0, $f0, $f4
/* 004A60 80029660 C4820030 */  lwc1  $f2, 0x30($a0)
/* 004A64 80029664 8FA5001C */  lw    $a1, 0x1c($sp)
/* 004A68 80029668 46020000 */  add.s $f0, $f0, $f2
/* 004A6C 8002966C 8FA60020 */  lw    $a2, 0x20($sp)
/* 004A70 80029670 E4400000 */  swc1  $f0, ($v0)
/* 004A74 80029674 C4800004 */  lwc1  $f0, 4($a0)
/* 004A78 80029678 46060002 */  mul.s $f0, $f0, $f6
/* 004A7C 8002967C 00000000 */  nop   
/* 004A80 80029680 C4840014 */  lwc1  $f4, 0x14($a0)
/* 004A84 80029684 46082102 */  mul.s $f4, $f4, $f8
/* 004A88 80029688 00000000 */  nop   
/* 004A8C 8002968C C4820024 */  lwc1  $f2, 0x24($a0)
/* 004A90 80029690 460A1082 */  mul.s $f2, $f2, $f10
/* 004A94 80029694 00000000 */  nop   
/* 004A98 80029698 46040000 */  add.s $f0, $f0, $f4
/* 004A9C 8002969C 46020000 */  add.s $f0, $f0, $f2
/* 004AA0 800296A0 C4820034 */  lwc1  $f2, 0x34($a0)
/* 004AA4 800296A4 46020000 */  add.s $f0, $f0, $f2
/* 004AA8 800296A8 E4600000 */  swc1  $f0, ($v1)
/* 004AAC 800296AC C4800008 */  lwc1  $f0, 8($a0)
/* 004AB0 800296B0 46060002 */  mul.s $f0, $f0, $f6
/* 004AB4 800296B4 00000000 */  nop   
/* 004AB8 800296B8 C4840018 */  lwc1  $f4, 0x18($a0)
/* 004ABC 800296BC 46082102 */  mul.s $f4, $f4, $f8
/* 004AC0 800296C0 00000000 */  nop   
/* 004AC4 800296C4 C4820028 */  lwc1  $f2, 0x28($a0)
/* 004AC8 800296C8 460A1082 */  mul.s $f2, $f2, $f10
/* 004ACC 800296CC 00000000 */  nop   
/* 004AD0 800296D0 46040000 */  add.s $f0, $f0, $f4
/* 004AD4 800296D4 46020000 */  add.s $f0, $f0, $f2
/* 004AD8 800296D8 C4820038 */  lwc1  $f2, 0x38($a0)
/* 004ADC 800296DC 46020000 */  add.s $f0, $f0, $f2
/* 004AE0 800296E0 E4A00000 */  swc1  $f0, ($a1)
/* 004AE4 800296E4 C480000C */  lwc1  $f0, 0xc($a0)
/* 004AE8 800296E8 46060002 */  mul.s $f0, $f0, $f6
/* 004AEC 800296EC 00000000 */  nop   
/* 004AF0 800296F0 C484001C */  lwc1  $f4, 0x1c($a0)
/* 004AF4 800296F4 46082102 */  mul.s $f4, $f4, $f8
/* 004AF8 800296F8 00000000 */  nop   
/* 004AFC 800296FC C482002C */  lwc1  $f2, 0x2c($a0)
/* 004B00 80029700 460A1082 */  mul.s $f2, $f2, $f10
/* 004B04 80029704 00000000 */  nop   
/* 004B08 80029708 46040000 */  add.s $f0, $f0, $f4
/* 004B0C 8002970C 46020000 */  add.s $f0, $f0, $f2
/* 004B10 80029710 C482003C */  lwc1  $f2, 0x3c($a0)
/* 004B14 80029714 46020000 */  add.s $f0, $f0, $f2
/* 004B18 80029718 03E00008 */  jr    $ra
/* 004B1C 8002971C E4C00000 */   swc1  $f0, ($a2)

