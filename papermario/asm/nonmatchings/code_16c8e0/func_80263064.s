.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80263064
/* 191944 80263064 0000402D */  daddu $t0, $zero, $zero
/* 191948 80263068 14A00003 */  bnez  $a1, .L80263078
/* 19194C 8026306C 248A022C */   addiu $t2, $a0, 0x22c
/* 191950 80263070 03E00008 */  jr    $ra
/* 191954 80263074 0100102D */   daddu $v0, $t0, $zero

.L80263078:
/* 191958 80263078 80AC01F3 */  lb    $t4, 0x1f3($a1)
/* 19195C 8026307C 8CA601F4 */  lw    $a2, 0x1f4($a1)
/* 191960 80263080 010C102A */  slt   $v0, $t0, $t4
/* 191964 80263084 10400067 */  beqz  $v0, .L80263224
/* 191968 80263088 0000482D */   daddu $t1, $zero, $zero
/* 19196C 8026308C 3C0F0002 */  lui   $t7, 2
/* 191970 80263090 3C0E0080 */  lui   $t6, 0x80
/* 191974 80263094 3C0D0010 */  lui   $t5, 0x10
/* 191978 80263098 2487023C */  addiu $a3, $a0, 0x23c
.L8026309C:
/* 19197C 8026309C 8CC30000 */  lw    $v1, ($a2)
/* 191980 802630A0 006F1024 */  and   $v0, $v1, $t7
/* 191984 802630A4 1440005A */  bnez  $v0, .L80263210
/* 191988 802630A8 006E1024 */   and   $v0, $v1, $t6
/* 19198C 802630AC 5040005A */  beql  $v0, $zero, .L80263218
/* 191990 802630B0 25290001 */   addiu $t1, $t1, 1
/* 191994 802630B4 8CCB0008 */  lw    $t3, 8($a2)
/* 191998 802630B8 006D1024 */  and   $v0, $v1, $t5
/* 19199C 802630BC 14400026 */  bnez  $v0, .L80263158
/* 1919A0 802630C0 00000000 */   nop   
/* 1919A4 802630C4 C4A40144 */  lwc1  $f4, 0x144($a1)
/* 1919A8 802630C8 C4A20148 */  lwc1  $f2, 0x148($a1)
/* 1919AC 802630CC 84C20014 */  lh    $v0, 0x14($a2)
/* 1919B0 802630D0 C4A6014C */  lwc1  $f6, 0x14c($a1)
/* 1919B4 802630D4 44820000 */  mtc1  $v0, $f0
/* 1919B8 802630D8 00000000 */  nop   
/* 1919BC 802630DC 46800020 */  cvt.s.w $f0, $f0
/* 1919C0 802630E0 8CA20000 */  lw    $v0, ($a1)
/* 1919C4 802630E4 30420800 */  andi  $v0, $v0, 0x800
/* 1919C8 802630E8 14400007 */  bnez  $v0, .L80263108
/* 1919CC 802630EC 46002100 */   add.s $f4, $f4, $f0
/* 1919D0 802630F0 84C20016 */  lh    $v0, 0x16($a2)
/* 1919D4 802630F4 44820000 */  mtc1  $v0, $f0
/* 1919D8 802630F8 00000000 */  nop   
/* 1919DC 802630FC 46800020 */  cvt.s.w $f0, $f0
/* 1919E0 80263100 08098C47 */  j     .L8026311C
/* 1919E4 80263104 46001080 */   add.s $f2, $f2, $f0

.L80263108:
/* 1919E8 80263108 84C20016 */  lh    $v0, 0x16($a2)
/* 1919EC 8026310C 44820000 */  mtc1  $v0, $f0
/* 1919F0 80263110 00000000 */  nop   
/* 1919F4 80263114 46800020 */  cvt.s.w $f0, $f0
/* 1919F8 80263118 46001081 */  sub.s $f2, $f2, $f0
.L8026311C:
/* 1919FC 8026311C 84C20018 */  lh    $v0, 0x18($a2)
/* 191A00 80263120 44820000 */  mtc1  $v0, $f0
/* 191A04 80263124 00000000 */  nop   
/* 191A08 80263128 46800020 */  cvt.s.w $f0, $f0
/* 191A0C 8026312C 84C2006C */  lh    $v0, 0x6c($a2)
/* 191A10 80263130 46003180 */  add.s $f6, $f6, $f0
/* 191A14 80263134 44820000 */  mtc1  $v0, $f0
/* 191A18 80263138 00000000 */  nop   
/* 191A1C 8026313C 46800020 */  cvt.s.w $f0, $f0
/* 191A20 80263140 8CA20000 */  lw    $v0, ($a1)
/* 191A24 80263144 30420800 */  andi  $v0, $v0, 0x800
/* 191A28 80263148 1040000E */  beqz  $v0, .L80263184
/* 191A2C 8026314C 46002100 */   add.s $f4, $f4, $f0
/* 191A30 80263150 08098C67 */  j     .L8026319C
/* 191A34 80263154 00000000 */   nop   

.L80263158:
/* 191A38 80263158 C4C4002C */  lwc1  $f4, 0x2c($a2)
/* 191A3C 8026315C C4C20030 */  lwc1  $f2, 0x30($a2)
/* 191A40 80263160 84C2006C */  lh    $v0, 0x6c($a2)
/* 191A44 80263164 C4C60034 */  lwc1  $f6, 0x34($a2)
/* 191A48 80263168 44820000 */  mtc1  $v0, $f0
/* 191A4C 8026316C 00000000 */  nop   
/* 191A50 80263170 46800020 */  cvt.s.w $f0, $f0
/* 191A54 80263174 8CA20000 */  lw    $v0, ($a1)
/* 191A58 80263178 30420800 */  andi  $v0, $v0, 0x800
/* 191A5C 8026317C 14400007 */  bnez  $v0, .L8026319C
/* 191A60 80263180 46002100 */   add.s $f4, $f4, $f0
.L80263184:
/* 191A64 80263184 84C2006E */  lh    $v0, 0x6e($a2)
/* 191A68 80263188 44820000 */  mtc1  $v0, $f0
/* 191A6C 8026318C 00000000 */  nop   
/* 191A70 80263190 46800020 */  cvt.s.w $f0, $f0
/* 191A74 80263194 08098C6C */  j     .L802631B0
/* 191A78 80263198 46001080 */   add.s $f2, $f2, $f0

.L8026319C:
.L8026319C:
/* 191A7C 8026319C 84C2006E */  lh    $v0, 0x6e($a2)
/* 191A80 802631A0 44820000 */  mtc1  $v0, $f0
/* 191A84 802631A4 00000000 */  nop   
/* 191A88 802631A8 46800020 */  cvt.s.w $f0, $f0
/* 191A8C 802631AC 46001081 */  sub.s $f2, $f2, $f0
.L802631B0:
/* 191A90 802631B0 94A20192 */  lhu   $v0, 0x192($a1)
/* 191A94 802631B4 25080001 */  addiu $t0, $t0, 1
/* 191A98 802631B8 A5420000 */  sh    $v0, ($t2)
/* 191A9C 802631BC A4820428 */  sh    $v0, 0x428($a0)
/* 191AA0 802631C0 91620004 */  lbu   $v0, 4($t3)
/* 191AA4 802631C4 254A0014 */  addiu $t2, $t2, 0x14
/* 191AA8 802631C8 00021600 */  sll   $v0, $v0, 0x18
/* 191AAC 802631CC 00021603 */  sra   $v0, $v0, 0x18
/* 191AB0 802631D0 A4E2FFF2 */  sh    $v0, -0xe($a3)
/* 191AB4 802631D4 A0820426 */  sb    $v0, 0x426($a0)
/* 191AB8 802631D8 4600220D */  trunc.w.s $f8, $f4
/* 191ABC 802631DC 44024000 */  mfc1  $v0, $f8
/* 191AC0 802631E0 00000000 */  nop   
/* 191AC4 802631E4 A4E2FFF4 */  sh    $v0, -0xc($a3)
/* 191AC8 802631E8 4600120D */  trunc.w.s $f8, $f2
/* 191ACC 802631EC 44024000 */  mfc1  $v0, $f8
/* 191AD0 802631F0 00000000 */  nop   
/* 191AD4 802631F4 A4E2FFF6 */  sh    $v0, -0xa($a3)
/* 191AD8 802631F8 4600320D */  trunc.w.s $f8, $f6
/* 191ADC 802631FC 44024000 */  mfc1  $v0, $f8
/* 191AE0 80263200 00000000 */  nop   
/* 191AE4 80263204 A4E2FFF8 */  sh    $v0, -8($a3)
/* 191AE8 80263208 A0E00000 */  sb    $zero, ($a3)
/* 191AEC 8026320C 24E70014 */  addiu $a3, $a3, 0x14
.L80263210:
/* 191AF0 80263210 8CC6000C */  lw    $a2, 0xc($a2)
/* 191AF4 80263214 25290001 */  addiu $t1, $t1, 1
.L80263218:
/* 191AF8 80263218 012C102A */  slt   $v0, $t1, $t4
/* 191AFC 8026321C 1440FF9F */  bnez  $v0, .L8026309C
/* 191B00 80263220 00000000 */   nop   
.L80263224:
/* 191B04 80263224 A088040C */  sb    $t0, 0x40c($a0)
/* 191B08 80263228 03E00008 */  jr    $ra
/* 191B0C 8026322C 0100102D */   daddu $v0, $t0, $zero

