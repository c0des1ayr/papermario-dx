.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800F0490
/* 089940 800F0490 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 089944 800F0494 3C028011 */  lui   $v0, 0x8011
/* 089948 800F0498 244294A0 */  addiu $v0, $v0, -0x6b60
/* 08994C 800F049C AFBF0028 */  sw    $ra, 0x28($sp)
/* 089950 800F04A0 AFB30024 */  sw    $s3, 0x24($sp)
/* 089954 800F04A4 AFB20020 */  sw    $s2, 0x20($sp)
/* 089958 800F04A8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 08995C 800F04AC AFB00018 */  sw    $s0, 0x18($sp)
/* 089960 800F04B0 F7BA0048 */  sdc1  $f26, 0x48($sp)
/* 089964 800F04B4 F7B80040 */  sdc1  $f24, 0x40($sp)
/* 089968 800F04B8 F7B60038 */  sdc1  $f22, 0x38($sp)
/* 08996C 800F04BC F7B40030 */  sdc1  $f20, 0x30($sp)
/* 089970 800F04C0 C4400000 */  lwc1  $f0, ($v0)
/* 089974 800F04C4 3C013DCC */  lui   $at, 0x3dcc
/* 089978 800F04C8 3421CCCD */  ori   $at, $at, 0xcccd
/* 08997C 800F04CC 44811000 */  mtc1  $at, $f2
/* 089980 800F04D0 00000000 */  nop   
/* 089984 800F04D4 46020000 */  add.s $f0, $f0, $f2
/* 089988 800F04D8 3C118011 */  lui   $s1, 0x8011
/* 08998C 800F04DC 2631EFC8 */  addiu $s1, $s1, -0x1038
/* 089990 800F04E0 E4400000 */  swc1  $f0, ($v0)
/* 089994 800F04E4 822300B4 */  lb    $v1, 0xb4($s1)
/* 089998 800F04E8 2402000A */  addiu $v0, $zero, 0xa
/* 08999C 800F04EC 14620004 */  bne   $v1, $v0, .L800F0500
/* 0899A0 800F04F0 2402000E */   addiu $v0, $zero, 0xe
/* 0899A4 800F04F4 8E220000 */  lw    $v0, ($s1)
/* 0899A8 800F04F8 04400009 */  bltz  $v0, .L800F0520
/* 0899AC 800F04FC 2402000E */   addiu $v0, $zero, 0xe
.L800F0500:
/* 0899B0 800F0500 10620003 */  beq   $v1, $v0, .L800F0510
/* 0899B4 800F0504 24020010 */   addiu $v0, $zero, 0x10
/* 0899B8 800F0508 14620073 */  bne   $v1, $v0, .L800F06D8
/* 0899BC 800F050C 00000000 */   nop   
.L800F0510:
/* 0899C0 800F0510 8E220000 */  lw    $v0, ($s1)
/* 0899C4 800F0514 30420400 */  andi  $v0, $v0, 0x400
/* 0899C8 800F0518 1040006F */  beqz  $v0, .L800F06D8
/* 0899CC 800F051C 00000000 */   nop   
.L800F0520:
/* 0899D0 800F0520 3C028011 */  lui   $v0, 0x8011
/* 0899D4 800F0524 8C42CFF4 */  lw    $v0, -0x300c($v0)
/* 0899D8 800F0528 2842000A */  slti  $v0, $v0, 0xa
/* 0899DC 800F052C 1440006A */  bnez  $v0, .L800F06D8
/* 0899E0 800F0530 00000000 */   nop   
/* 0899E4 800F0534 3C108011 */  lui   $s0, 0x8011
/* 0899E8 800F0538 26109498 */  addiu $s0, $s0, -0x6b68
/* 0899EC 800F053C C62E002C */  lwc1  $f14, 0x2c($s1)
/* 0899F0 800F0540 3C014160 */  lui   $at, 0x4160
/* 0899F4 800F0544 44810000 */  mtc1  $at, $f0
/* 0899F8 800F0548 C62C0028 */  lwc1  $f12, 0x28($s1)
/* 0899FC 800F054C 46007380 */  add.s $f14, $f14, $f0
/* 089A00 800F0550 3C0140A0 */  lui   $at, 0x40a0
/* 089A04 800F0554 44810000 */  mtc1  $at, $f0
/* 089A08 800F0558 8E260030 */  lw    $a2, 0x30($s1)
/* 089A0C 800F055C 8E070000 */  lw    $a3, ($s0)
/* 089A10 800F0560 0C01BF14 */  jal   func_8006FC50
/* 089A14 800F0564 46007381 */   sub.s $f14, $f14, $f0
/* 089A18 800F0568 C6000000 */  lwc1  $f0, ($s0)
/* 089A1C 800F056C 3C01420C */  lui   $at, 0x420c
/* 089A20 800F0570 44816000 */  mtc1  $at, $f12
/* 089A24 800F0574 0000982D */  daddu $s3, $zero, $zero
/* 089A28 800F0578 460C0300 */  add.s $f12, $f0, $f12
/* 089A2C 800F057C 3C01BE99 */  lui   $at, 0xbe99
/* 089A30 800F0580 3421999A */  ori   $at, $at, 0x999a
/* 089A34 800F0584 4481D000 */  mtc1  $at, $f26
/* 089A38 800F0588 0C00A6C9 */  jal   clamp_angle
/* 089A3C 800F058C 0260902D */   daddu $s2, $s3, $zero
/* 089A40 800F0590 E6000000 */  swc1  $f0, ($s0)
.L800F0594:
/* 089A44 800F0594 0C00A67F */  jal   rand_int
/* 089A48 800F0598 2404000A */   addiu $a0, $zero, 0xa
/* 089A4C 800F059C 2442FFFB */  addiu $v0, $v0, -5
/* 089A50 800F05A0 4482B000 */  mtc1  $v0, $f22
/* 089A54 800F05A4 00000000 */  nop   
/* 089A58 800F05A8 4680B5A0 */  cvt.s.w $f22, $f22
/* 089A5C 800F05AC 0C00A67F */  jal   rand_int
/* 089A60 800F05B0 2404000A */   addiu $a0, $zero, 0xa
/* 089A64 800F05B4 4616B082 */  mul.s $f2, $f22, $f22
/* 089A68 800F05B8 00000000 */  nop   
/* 089A6C 800F05BC 2442FFFB */  addiu $v0, $v0, -5
/* 089A70 800F05C0 4482C000 */  mtc1  $v0, $f24
/* 089A74 800F05C4 00000000 */  nop   
/* 089A78 800F05C8 4680C620 */  cvt.s.w $f24, $f24
/* 089A7C 800F05CC 4618C102 */  mul.s $f4, $f24, $f24
/* 089A80 800F05D0 00000000 */  nop   
/* 089A84 800F05D4 C62C0084 */  lwc1  $f12, 0x84($s1)
/* 089A88 800F05D8 44920000 */  mtc1  $s2, $f0
/* 089A8C 800F05DC 00000000 */  nop   
/* 089A90 800F05E0 46800020 */  cvt.s.w $f0, $f0
/* 089A94 800F05E4 46006307 */  neg.s $f12, $f12
/* 089A98 800F05E8 46006300 */  add.s $f12, $f12, $f0
/* 089A9C 800F05EC 3C01C000 */  lui   $at, 0xc000
/* 089AA0 800F05F0 4481A000 */  mtc1  $at, $f20
/* 089AA4 800F05F4 3C0140A0 */  lui   $at, 0x40a0
/* 089AA8 800F05F8 44810000 */  mtc1  $at, $f0
/* 089AAC 800F05FC 46041080 */  add.s $f2, $f2, $f4
/* 089AB0 800F0600 3C018011 */  lui   $at, 0x8011
/* 089AB4 800F0604 A420949C */  sh    $zero, -0x6b64($at)
/* 089AB8 800F0608 46001083 */  div.s $f2, $f2, $f0
/* 089ABC 800F060C 0C00A6C9 */  jal   clamp_angle
/* 089AC0 800F0610 4602A501 */   sub.s $f20, $f20, $f2
/* 089AC4 800F0614 3C0140C9 */  lui   $at, 0x40c9
/* 089AC8 800F0618 34210FD0 */  ori   $at, $at, 0xfd0
/* 089ACC 800F061C 44811000 */  mtc1  $at, $f2
/* 089AD0 800F0620 00000000 */  nop   
/* 089AD4 800F0624 46020002 */  mul.s $f0, $f0, $f2
/* 089AD8 800F0628 00000000 */  nop   
/* 089ADC 800F062C 27A50010 */  addiu $a1, $sp, 0x10
/* 089AE0 800F0630 3C0143B4 */  lui   $at, 0x43b4
/* 089AE4 800F0634 44816000 */  mtc1  $at, $f12
/* 089AE8 800F0638 27A60014 */  addiu $a2, $sp, 0x14
/* 089AEC 800F063C 0C00A82D */  jal   sin_cos_rad
/* 089AF0 800F0640 460C0303 */   div.s $f12, $f0, $f12
/* 089AF4 800F0644 862200B2 */  lh    $v0, 0xb2($s1)
/* 089AF8 800F0648 C7A40010 */  lwc1  $f4, 0x10($sp)
/* 089AFC 800F064C 44823000 */  mtc1  $v0, $f6
/* 089B00 800F0650 00000000 */  nop   
/* 089B04 800F0654 468031A0 */  cvt.s.w $f6, $f6
/* 089B08 800F0658 46043102 */  mul.s $f4, $f6, $f4
/* 089B0C 800F065C 00000000 */  nop   
/* 089B10 800F0660 C7A00014 */  lwc1  $f0, 0x14($sp)
/* 089B14 800F0664 46003182 */  mul.s $f6, $f6, $f0
/* 089B18 800F0668 00000000 */  nop   
/* 089B1C 800F066C 3C014178 */  lui   $at, 0x4178
/* 089B20 800F0670 44811000 */  mtc1  $at, $f2
/* 089B24 800F0674 C620002C */  lwc1  $f0, 0x2c($s1)
/* 089B28 800F0678 46020000 */  add.s $f0, $f0, $f2
/* 089B2C 800F067C 46140000 */  add.s $f0, $f0, $f20
/* 089B30 800F0680 461A2102 */  mul.s $f4, $f4, $f26
/* 089B34 800F0684 00000000 */  nop   
/* 089B38 800F0688 44060000 */  mfc1  $a2, $f0
/* 089B3C 800F068C C6200028 */  lwc1  $f0, 0x28($s1)
/* 089B40 800F0690 46040000 */  add.s $f0, $f0, $f4
/* 089B44 800F0694 46160000 */  add.s $f0, $f0, $f22
/* 089B48 800F0698 461A3182 */  mul.s $f6, $f6, $f26
/* 089B4C 800F069C 00000000 */  nop   
/* 089B50 800F06A0 44050000 */  mfc1  $a1, $f0
/* 089B54 800F06A4 C6200030 */  lwc1  $f0, 0x30($s1)
/* 089B58 800F06A8 46060000 */  add.s $f0, $f0, $f6
/* 089B5C 800F06AC 46180000 */  add.s $f0, $f0, $f24
/* 089B60 800F06B0 2652005A */  addiu $s2, $s2, 0x5a
/* 089B64 800F06B4 26730001 */  addiu $s3, $s3, 1
/* 089B68 800F06B8 44070000 */  mfc1  $a3, $f0
/* 089B6C 800F06BC 0C01BF2C */  jal   func_8006FCB0
/* 089B70 800F06C0 0000202D */   daddu $a0, $zero, $zero
/* 089B74 800F06C4 2A620004 */  slti  $v0, $s3, 4
/* 089B78 800F06C8 1040005B */  beqz  $v0, .L800F0838
/* 089B7C 800F06CC 00000000 */   nop   
/* 089B80 800F06D0 0803C165 */  j     .L800F0594
/* 089B84 800F06D4 00000000 */   nop   

.L800F06D8:
/* 089B88 800F06D8 922200B4 */  lbu   $v0, 0xb4($s1)
/* 089B8C 800F06DC 2442FFFF */  addiu $v0, $v0, -1
/* 089B90 800F06E0 2C420002 */  sltiu $v0, $v0, 2
/* 089B94 800F06E4 1440000A */  bnez  $v0, .L800F0710
/* 089B98 800F06E8 3C02FF00 */   lui   $v0, 0xff00
/* 089B9C 800F06EC 8E2300B4 */  lw    $v1, 0xb4($s1)
/* 089BA0 800F06F0 3442FF00 */  ori   $v0, $v0, 0xff00
/* 089BA4 800F06F4 00621824 */  and   $v1, $v1, $v0
/* 089BA8 800F06F8 3C021A00 */  lui   $v0, 0x1a00
/* 089BAC 800F06FC 10620004 */  beq   $v1, $v0, .L800F0710
/* 089BB0 800F0700 00000000 */   nop   
/* 089BB4 800F0704 3C018011 */  lui   $at, 0x8011
/* 089BB8 800F0708 0803C20E */  j     .L800F0838
/* 089BBC 800F070C A420949C */   sh    $zero, -0x6b64($at)

.L800F0710:
/* 089BC0 800F0710 0C00A67F */  jal   rand_int
/* 089BC4 800F0714 2404000A */   addiu $a0, $zero, 0xa
/* 089BC8 800F0718 2442FFFB */  addiu $v0, $v0, -5
/* 089BCC 800F071C 4482C000 */  mtc1  $v0, $f24
/* 089BD0 800F0720 00000000 */  nop   
/* 089BD4 800F0724 4680C620 */  cvt.s.w $f24, $f24
/* 089BD8 800F0728 0C00A67F */  jal   rand_int
/* 089BDC 800F072C 2404000A */   addiu $a0, $zero, 0xa
/* 089BE0 800F0730 4618C002 */  mul.s $f0, $f24, $f24
/* 089BE4 800F0734 00000000 */  nop   
/* 089BE8 800F0738 2442FFFB */  addiu $v0, $v0, -5
/* 089BEC 800F073C 4482B000 */  mtc1  $v0, $f22
/* 089BF0 800F0740 00000000 */  nop   
/* 089BF4 800F0744 4680B5A0 */  cvt.s.w $f22, $f22
/* 089BF8 800F0748 4616B082 */  mul.s $f2, $f22, $f22
/* 089BFC 800F074C 00000000 */  nop   
/* 089C00 800F0750 C62C0084 */  lwc1  $f12, 0x84($s1)
/* 089C04 800F0754 3C01C000 */  lui   $at, 0xc000
/* 089C08 800F0758 4481A000 */  mtc1  $at, $f20
/* 089C0C 800F075C 46020000 */  add.s $f0, $f0, $f2
/* 089C10 800F0760 3C018011 */  lui   $at, 0x8011
/* 089C14 800F0764 A420949C */  sh    $zero, -0x6b64($at)
/* 089C18 800F0768 3C0140A0 */  lui   $at, 0x40a0
/* 089C1C 800F076C 44811000 */  mtc1  $at, $f2
/* 089C20 800F0770 46006307 */  neg.s $f12, $f12
/* 089C24 800F0774 46020003 */  div.s $f0, $f0, $f2
/* 089C28 800F0778 0C00A6C9 */  jal   clamp_angle
/* 089C2C 800F077C 4600A501 */   sub.s $f20, $f20, $f0
/* 089C30 800F0780 3C0140C9 */  lui   $at, 0x40c9
/* 089C34 800F0784 34210FD0 */  ori   $at, $at, 0xfd0
/* 089C38 800F0788 44811000 */  mtc1  $at, $f2
/* 089C3C 800F078C 00000000 */  nop   
/* 089C40 800F0790 46020002 */  mul.s $f0, $f0, $f2
/* 089C44 800F0794 00000000 */  nop   
/* 089C48 800F0798 27A50010 */  addiu $a1, $sp, 0x10
/* 089C4C 800F079C 3C0143B4 */  lui   $at, 0x43b4
/* 089C50 800F07A0 44816000 */  mtc1  $at, $f12
/* 089C54 800F07A4 27A60014 */  addiu $a2, $sp, 0x14
/* 089C58 800F07A8 0C00A82D */  jal   sin_cos_rad
/* 089C5C 800F07AC 460C0303 */   div.s $f12, $f0, $f12
/* 089C60 800F07B0 862200B2 */  lh    $v0, 0xb2($s1)
/* 089C64 800F07B4 C7A60010 */  lwc1  $f6, 0x10($sp)
/* 089C68 800F07B8 44822000 */  mtc1  $v0, $f4
/* 089C6C 800F07BC 00000000 */  nop   
/* 089C70 800F07C0 46802120 */  cvt.s.w $f4, $f4
/* 089C74 800F07C4 46062182 */  mul.s $f6, $f4, $f6
/* 089C78 800F07C8 00000000 */  nop   
/* 089C7C 800F07CC C7A00014 */  lwc1  $f0, 0x14($sp)
/* 089C80 800F07D0 46002102 */  mul.s $f4, $f4, $f0
/* 089C84 800F07D4 00000000 */  nop   
/* 089C88 800F07D8 3C01BE99 */  lui   $at, 0xbe99
/* 089C8C 800F07DC 3421999A */  ori   $at, $at, 0x999a
/* 089C90 800F07E0 44810000 */  mtc1  $at, $f0
/* 089C94 800F07E4 00000000 */  nop   
/* 089C98 800F07E8 46003182 */  mul.s $f6, $f6, $f0
/* 089C9C 800F07EC 00000000 */  nop   
/* 089CA0 800F07F0 46002102 */  mul.s $f4, $f4, $f0
/* 089CA4 800F07F4 00000000 */  nop   
/* 089CA8 800F07F8 3C014178 */  lui   $at, 0x4178
/* 089CAC 800F07FC 44811000 */  mtc1  $at, $f2
/* 089CB0 800F0800 C620002C */  lwc1  $f0, 0x2c($s1)
/* 089CB4 800F0804 46020000 */  add.s $f0, $f0, $f2
/* 089CB8 800F0808 46140000 */  add.s $f0, $f0, $f20
/* 089CBC 800F080C 44060000 */  mfc1  $a2, $f0
/* 089CC0 800F0810 C6200028 */  lwc1  $f0, 0x28($s1)
/* 089CC4 800F0814 46060000 */  add.s $f0, $f0, $f6
/* 089CC8 800F0818 46180000 */  add.s $f0, $f0, $f24
/* 089CCC 800F081C 44050000 */  mfc1  $a1, $f0
/* 089CD0 800F0820 C6200030 */  lwc1  $f0, 0x30($s1)
/* 089CD4 800F0824 46040000 */  add.s $f0, $f0, $f4
/* 089CD8 800F0828 46160000 */  add.s $f0, $f0, $f22
/* 089CDC 800F082C 44070000 */  mfc1  $a3, $f0
/* 089CE0 800F0830 0C01BF2C */  jal   func_8006FCB0
/* 089CE4 800F0834 24040001 */   addiu $a0, $zero, 1
.L800F0838:
/* 089CE8 800F0838 8FBF0028 */  lw    $ra, 0x28($sp)
/* 089CEC 800F083C 8FB30024 */  lw    $s3, 0x24($sp)
/* 089CF0 800F0840 8FB20020 */  lw    $s2, 0x20($sp)
/* 089CF4 800F0844 8FB1001C */  lw    $s1, 0x1c($sp)
/* 089CF8 800F0848 8FB00018 */  lw    $s0, 0x18($sp)
/* 089CFC 800F084C D7BA0048 */  ldc1  $f26, 0x48($sp)
/* 089D00 800F0850 D7B80040 */  ldc1  $f24, 0x40($sp)
/* 089D04 800F0854 D7B60038 */  ldc1  $f22, 0x38($sp)
/* 089D08 800F0858 D7B40030 */  ldc1  $f20, 0x30($sp)
/* 089D0C 800F085C 03E00008 */  jr    $ra
/* 089D10 800F0860 27BD0050 */   addiu $sp, $sp, 0x50

