.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80054E90
/* 030290 80054E90 10A0000A */  beqz  $a1, .L80054EBC
/* 030294 80054E94 28A20400 */   slti  $v0, $a1, 0x400
/* 030298 80054E98 1040000A */  beqz  $v0, .L80054EC4
/* 03029C 80054E9C 00A0102D */   daddu $v0, $a1, $zero
/* 0302A0 80054EA0 10400006 */  beqz  $v0, .L80054EBC
/* 0302A4 80054EA4 24A5FFFF */   addiu $a1, $a1, -1
.L80054EA8:
/* 0302A8 80054EA8 A0860000 */  sb    $a2, ($a0)
/* 0302AC 80054EAC 24840001 */  addiu $a0, $a0, 1
/* 0302B0 80054EB0 00A0102D */  daddu $v0, $a1, $zero
/* 0302B4 80054EB4 1440FFFC */  bnez  $v0, .L80054EA8
/* 0302B8 80054EB8 24A5FFFF */   addiu $a1, $a1, -1
.L80054EBC:
/* 0302BC 80054EBC 03E00008 */  jr    $ra
/* 0302C0 80054EC0 00000000 */   nop   

.L80054EC4:
/* 0302C4 80054EC4 30870003 */  andi  $a3, $a0, 3
/* 0302C8 80054EC8 10E00009 */  beqz  $a3, .L80054EF0
/* 0302CC 80054ECC 24020004 */   addiu $v0, $zero, 4
/* 0302D0 80054ED0 00473823 */  subu  $a3, $v0, $a3
/* 0302D4 80054ED4 080153B9 */  j     .L80054EE4
/* 0302D8 80054ED8 00A72823 */   subu  $a1, $a1, $a3

.L80054EDC:
/* 0302DC 80054EDC A0860000 */  sb    $a2, ($a0)
/* 0302E0 80054EE0 24840001 */  addiu $a0, $a0, 1
.L80054EE4:
/* 0302E4 80054EE4 00E0102D */  daddu $v0, $a3, $zero
/* 0302E8 80054EE8 1440FFFC */  bnez  $v0, .L80054EDC
/* 0302EC 80054EEC 24E7FFFF */   addiu $a3, $a3, -1
.L80054EF0:
/* 0302F0 80054EF0 00053883 */  sra   $a3, $a1, 2
/* 0302F4 80054EF4 30C300FF */  andi  $v1, $a2, 0xff
/* 0302F8 80054EF8 00031200 */  sll   $v0, $v1, 8
/* 0302FC 80054EFC 00431821 */  addu  $v1, $v0, $v1
/* 030300 80054F00 00031400 */  sll   $v0, $v1, 0x10
/* 030304 80054F04 080153C5 */  j     .L80054F14
/* 030308 80054F08 00621821 */   addu  $v1, $v1, $v0

.L80054F0C:
/* 03030C 80054F0C AC830000 */  sw    $v1, ($a0)
/* 030310 80054F10 24840004 */  addiu $a0, $a0, 4
.L80054F14:
/* 030314 80054F14 00E0102D */  daddu $v0, $a3, $zero
/* 030318 80054F18 1440FFFC */  bnez  $v0, .L80054F0C
/* 03031C 80054F1C 24E7FFFF */   addiu $a3, $a3, -1
/* 030320 80054F20 30A70003 */  andi  $a3, $a1, 3
/* 030324 80054F24 10E0FFE5 */  beqz  $a3, .L80054EBC
/* 030328 80054F28 24E7FFFF */   addiu $a3, $a3, -1
.L80054F2C:
/* 03032C 80054F2C A0860000 */  sb    $a2, ($a0)
/* 030330 80054F30 24840001 */  addiu $a0, $a0, 1
/* 030334 80054F34 00E0102D */  daddu $v0, $a3, $zero
/* 030338 80054F38 1440FFFC */  bnez  $v0, .L80054F2C
/* 03033C 80054F3C 24E7FFFF */   addiu $a3, $a3, -1
/* 030340 80054F40 03E00008 */  jr    $ra
/* 030344 80054F44 00000000 */   nop   

/* 030348 80054F48 18C00008 */  blez  $a2, .L80054F6C
/* 03034C 80054F4C 24C6FFFF */   addiu $a2, $a2, -1
.L80054F50:
/* 030350 80054F50 90820000 */  lbu   $v0, ($a0)
/* 030354 80054F54 24840001 */  addiu $a0, $a0, 1
/* 030358 80054F58 00C0182D */  daddu $v1, $a2, $zero
/* 03035C 80054F5C 24C6FFFF */  addiu $a2, $a2, -1
/* 030360 80054F60 A0A20000 */  sb    $v0, ($a1)
/* 030364 80054F64 1460FFFA */  bnez  $v1, .L80054F50
/* 030368 80054F68 24A50001 */   addiu $a1, $a1, 1
.L80054F6C:
/* 03036C 80054F6C 03E00008 */  jr    $ra
/* 030370 80054F70 00000000 */   nop   

